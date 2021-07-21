/*
 * ARM Thumb2 checkpoint without fp registers
 *
 * Checkpoint layout
 * | R3 | R4 | R5 | R6 | R7 | R8 | R9 | R10 | R11 | R12 | R13/SP | R14/LR (before call) | PSR | R0 | R1 | R2 | LR |
 *
 * The checkpoint is double buffered, an atomic write to __lclock toggles
 * between the two checkpoints. __lclock can be either 0 or 1.
 */
#include <stdint.h>

#define LIBCP_ASM   __asm__ volatile
#define NAKED       __attribute__((naked))

#define CP_SIZE 17
volatile uint32_t __lclock = 1;
volatile uint32_t __registers_checkpoint_a[CP_SIZE];
volatile uint32_t __registers_checkpoint_b[CP_SIZE];
volatile uint32_t *const __registers_checkpoint_ptr[2] = {
    __registers_checkpoint_a, __registers_checkpoint_b};

volatile uint32_t __first_boot = 0;

#ifdef CHECKPOINT_COUNT_ENABLE
volatile uint32_t __checkpoint_count = 0;
#endif /* __CHECKPOINT_COUNT_ENABLE */

#ifdef RESTORE_COUNT_ENABLE
volatile uint32_t __restore_count = 0;
#endif /* RESTORE_COUNT_ENABLE */

NAKED
void __checkpoint(void) {
    // Push r0, r1, r2 to the stack without changing the SP
    // These registers are used as a scratchpad to create the checkpoint
    LIBCP_ASM("stmdb sp, {r0-r2}");

    // Load the logical clock location
    LIBCP_ASM("ldr r1, =__lclock");
    LIBCP_ASM("ldr r0, [r1]");

    // Load the register checkpoint location (double buffered)
    LIBCP_ASM("ldr r2, =__registers_checkpoint_ptr");
    // Get where to store the CP => registers_checkpoint_ptr[lclock]
    // This will point to either registers_checkpoint_[a|b]
    LIBCP_ASM("ldr r2, [r2, r0, lsl #2]");

    // Store r3-r12 into the checkpoint
    LIBCP_ASM("stmia r2!, {r3-r12}");   // store r3-r12

    LIBCP_ASM("mov r3, sp");            // load sp into r3

    LIBCP_ASM("ldr r4, [sp, #-16]");     // Load the LR stored at sp before the call NOTE: This is set before the checkpoint if LR is live

    LIBCP_ASM("mrs r5, xpsr");          // load psr into r5

    LIBCP_ASM("ldmdb sp, {r6-r8}");     // Load r0-r2 into r6-r8
    LIBCP_ASM("stmia r2!, {r3-r8}");    // store sp, lr, psr, r0, r1, r2

    LIBCP_ASM("str lr, [r2]");          // store the return LR at the end of the checkpoint
    LIBCP_ASM("mov lr, r4");            // move the LR before the checkpoint call back to lr

    // Logical clock management
    LIBCP_ASM("eor r0, r0, #1");        // XOR the logical clock (1=>0, 0=>1)
    LIBCP_ASM("str r0, [r1]");          // Store the logical clock CHECKPOINT

#ifdef CHECKPOINT_COUNT_ENABLE
    // Optional checkpoint count, only works properly on continuous power, as
    // this part might not be executed (if the system dies just after writing
    // to lclock [r1]. It can overflow. It was an implicit WAR!, it is purely
    // meant for debugging!
    LIBCP_ASM("ldr r1, =__checkpoint_count"); // Load the checkpoint_count address
    LIBCP_ASM("ldr r0, [r1]");              // load the value
    LIBCP_ASM("add r0, 1");                 // increment the value
    LIBCP_ASM("str r0, [r1]");              // Store the new checkpoint_count
#endif /* CHECKPOINT_COUNT_ENABLE */

    // Restore the registers before return (never executed during restore)
    LIBCP_ASM("sub r2, #64");           // Point to r3-r8
    LIBCP_ASM("ldmia r2, {r3-r8}");     // restore r3-r8
    LIBCP_ASM("add r2, #52");           // Point to r0-r2
    LIBCP_ASM("ldmia r2, {r0-r2, pc}"); // restore r0-r2 and load the return LR into PC

    //LIBCP_ASM("bx lr"); // return
}

__attribute__((naked))
void __checkpoint_restore(void) {
#ifdef RESTORE_COUNT_ENABLE
    // Optional checkpoint count, only works properly on continuous power.
    // It can overflow. It was an implicit WAR!, it is purely meant for debugging!
    LIBCP_ASM("ldr r1, =__restore_count");    // Load the restore_count address
    LIBCP_ASM("ldr r0, [r1]");              // load the value
    LIBCP_ASM("add r0, 1");                 // increment the value
    LIBCP_ASM("str r0, [r1]");              // Store the new restore_count
#endif /* RESTORE_COUNT_ENABLE */

    // Load the logical clock location
    LIBCP_ASM("ldr r0, =__lclock");
    LIBCP_ASM("ldr r0, [r0]");
    // XOR the logical clock (1=>0, 0=>1)
    // The checkpoint to restore is the last committed checkpoint, so we XOR
    // the logical clock
    LIBCP_ASM("eor r0, r0, #1");

    // Load the register checkpoint location (double buffered)
    LIBCP_ASM("ldr r12, =__registers_checkpoint_ptr");
    // Get what checkpoint to restore CP => registers_checkpoint_ptr[lclock XOR 1]
    LIBCP_ASM("ldr r12, [r12, r0, lsl #2]");

    // Restore the checkpoint
    // TODO: We can probably reduce the number of moves, but the __restore
    // operation happens less often, so does not require too much optimization.
    LIBCP_ASM("add r12, #40");          // point to r13 in the checkpoint
    LIBCP_ASM("ldmia r12, {r4-r9}");    // load sp, lr, psr, r0, r1, r2 into r4, r5, r6, r7, r8, r9
    LIBCP_ASM("mov sp, r4");            // restore sp
    LIBCP_ASM("mov lr, r5");            // restore lr
    LIBCP_ASM("msr xpsr, r6");          // restore psr
    LIBCP_ASM("mov r0, r7");            // restore r0
    LIBCP_ASM("mov r1, r8");            // restore r1
    LIBCP_ASM("mov r2, r9");            // restore r2

    LIBCP_ASM("sub r12, #40");          // point to r3 in the checkpoint
    LIBCP_ASM("ldmia r12, {r3-r12}");   // restore r3-r12

    LIBCP_ASM("bx lr"); // return
}

/*
 * This function is a wrapper to perform:
 *  1. Restore
 *  2. Checkpoint
 *  3. Set the first_boot flag to 0
 *
 * This should be the first function called to initiate the first checkpoint.
 *
 * NB, the function is:
 * - naked to not use any stack
 * - affects the status register, r0, r1 and r2, these should be caller saved
 */
NAKED
void __checkpoint_setup(void) {
    LIBCP_ASM("ldr r0, =__first_boot");     // load the first_boot address
    LIBCP_ASM("ldr r1, [r0]");              // load the first_boot value
    LIBCP_ASM("cmp r1, #0");                // compare to zero
    // if equal to zero, call checkpoint_restore (never returns)
    LIBCP_ASM("it eq\n" \
              "bleq __checkpoint_restore");

    // If we got here, then there was no valid checkpoint to restore,
    // i.e., a first_boot.
    // We perform the initial checkpoint, and set the first_boot value to
    // zero to indicate that the next time a restore happens there is a
    // checkpoint to restore.
    LIBCP_ASM("mov r2, lr");                // save lr in r2
    LIBCP_ASM("bl __checkpoint");           // call checkpoint
    LIBCP_ASM("mov lr, r2");                // restore lr from r2
    LIBCP_ASM("mov r1, #0");                // set r1 to 0
    LIBCP_ASM("str r1, [r0]");              // store r1 (0) into first_boot

    LIBCP_ASM("bx lr"); // return
}

NAKED
void __checkpoint_startup_restore(void) {
    LIBCP_ASM("ldr r0, =__first_boot");     // load the first_boot address
    LIBCP_ASM("ldr r1, [r0]");              // load the first_boot value
    LIBCP_ASM("cmp r1, #0");                // compare to zero
    // if equal to zero, call checkpoint_restore (never returns)
    LIBCP_ASM("it ne\n" \
              "blne __checkpoint_restore");

    LIBCP_ASM("bx lr");
}

NAKED
void __checkpoint_startup_checkpoint(void) {
    // If we got here, then there was no valid checkpoint to restore,
    // i.e., a first_boot.
    // We perform the initial checkpoint, and set the first_boot value to
    // zero to indicate that the next time a restore happens there is a
    // checkpoint to restore.
    LIBCP_ASM("mov r0, lr");                // save lr in r2
    LIBCP_ASM("bl __checkpoint");           // call checkpoint
    LIBCP_ASM("mov lr, r0");                // restore lr from r2

    LIBCP_ASM("ldr r0, =__first_boot");     // load the first_boot address
    LIBCP_ASM("ldr r1, [r0]");              // load the first_boot value

    LIBCP_ASM("mov r1, #1");                // set r1 to BOOT
    LIBCP_ASM("str r1, [r0]");              // store r1 (0) into first_boot

    LIBCP_ASM("bx lr"); // return
}
