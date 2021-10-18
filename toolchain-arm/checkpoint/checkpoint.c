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

NAKED
void __checkpoint(void) {
  #include "checkpoint-body.h"
}

__attribute__((naked))
void __checkpoint_restore(void) {
    // Load the logical clock location
    LIBCP_ASM("ldr r0, =__lclock");
    LIBCP_ASM("ldr r0, [r0]");
    // XOR the logical clock (1=>0, 0=>1)
    // The checkpoint to restore is the last committed checkpoint, so we XOR
    // the logical clock
    LIBCP_ASM("eor r0, r0, #1");

    // Load the register checkpoint location (double buffered)
    LIBCP_ASM("ldr r2, =__registers_checkpoint_ptr");
    // Get what checkpoint to restore CP => registers_checkpoint_ptr[lclock XOR 1]
    LIBCP_ASM("ldr r2, [r2, r0, lsl #2]");

    // Restore the registers
    LIBCP_ASM("ldmia r2, {r3-r12}");   // restore r3-r12
    LIBCP_ASM("add r2, #40");          // point to r13 in the checkpoint

    LIBCP_ASM("ldr sp, [r2, #0]");     // restore sp
    LIBCP_ASM("ldr lr, [r2, #4]");     // restore lr
    LIBCP_ASM("ldr r1, [r2, #8]");     // load psr
    LIBCP_ASM("msr xpsr, r1");         // restore psr

    LIBCP_ASM("add r2, #12");          // point to r0 in the checkpoint
    LIBCP_ASM("ldmia r2, {r0-r2, pc}"); // restore r0-r2 and load the return LR into PC
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
    LIBCP_ASM("str lr, [sp, #-16]");        // save lr in sp-16
    LIBCP_ASM("bl __checkpoint");           // call checkpoint

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
    LIBCP_ASM("str lr, [sp, #-16]");        // save lr in sp-16
    LIBCP_ASM("bl __checkpoint");           // call checkpoint

    LIBCP_ASM("ldr r0, =__first_boot");     // load the first_boot address
    LIBCP_ASM("ldr r1, [r0]");              // load the first_boot value

    LIBCP_ASM("mov r1, #1");                // set r1 to BOOT
    LIBCP_ASM("str r1, [r0]");              // store r1 (0) into first_boot

    LIBCP_ASM("bx lr"); // return
}


#ifndef CHECKPOINT_MARKERS_DISABLE
NAKED void __checkpoint_ir(void) {
  #include "checkpoint-body.h"
}
NAKED void __checkpoint_call(void) {
  #include "checkpoint-body.h"
}
NAKED void __checkpoint_pop(void) {
  #include "checkpoint-body.h"
}
NAKED void __checkpoint_spill(void) {
  #include "checkpoint-body.h"
}
#else
__attribute__((alias("__checkpoint"))) void __checkpoint_ir(void);
__attribute__((alias("__checkpoint"))) void __checkpoint_call(void);
__attribute__((alias("__checkpoint"))) void __checkpoint_pop(void);
__attribute__((alias("__checkpoint"))) void __checkpoint_spill(void);
#endif /* CHECKPOINT_MARKERS_DISABLE */


#ifndef DISABLE_CHECKPOINT_POP_NOSTACK_OPT

/*
 * A specialized checkpoint call that does not use any stack but uses R2 and R3
 * which are unused in the epilog of a function.
 * This checkpoint is used by the compiler if the
 * '--idemp-disable-interrupt-during-pop' option is provided when possible
 *
 * '__cp_tmp' is used as a temporary variable instead of the stack
 */
uint32_t __cp_tmp;
NAKED void __checkpoint_pop_nostack(void) {
  // We can only use R2 and R3
  // LR is already in R3 (if LR is live)

  // Save the LR to _cp_tmp
  LIBCP_ASM("ldr r2, =__cp_tmp");
  LIBCP_ASM("str r3, [r2]");

  // Load the logical clock location
  LIBCP_ASM("ldr r3, =__lclock");
  LIBCP_ASM("ldr r3, [r3]");

  // Load the register checkpoint location (double buffered)
  LIBCP_ASM("ldr r2, =__registers_checkpoint_ptr");
  // Get where to store the CP => registers_checkpoint_ptr[lclock]
  // This will point to either registers_checkpoint_[a|b]
  LIBCP_ASM("ldr r2, [r2, r3, lsl #2]");

  // Restore R3/LR
  LIBCP_ASM("ldr r3, =__cp_tmp");
  LIBCP_ASM("ldr r3, [r3]");

  // Store r3-r12 into the checkpoint
  LIBCP_ASM("stmia r2!, {r3-r12}");   // store r3-r12

  LIBCP_ASM("mov r4, r3");            // Load the LR stored in R3 before the call NOTE: This is set before the checkpoint if LR is live

  LIBCP_ASM("mov r3, sp");            // load sp into r3

  LIBCP_ASM("mrs r5, xpsr");          // load psr into r5

  LIBCP_ASM("mov r6, r0");     // Load r0-r2 into r6-r8
  LIBCP_ASM("mov r7, r1");     // Load r0-r2 into r6-r8
  LIBCP_ASM("mov r8, r2");     // Load r0-r2 into r6-r8 NOT NEEDED

  LIBCP_ASM("stmia r2!, {r3-r8}");    // store sp, lr, psr, r0, r1, r2

  LIBCP_ASM("str lr, [r2]");          // store the return LR at the end of the checkpoint
  LIBCP_ASM("mov lr, r4");            // move the LR before the checkpoint call back to lr

  // Logical clock management
  LIBCP_ASM("ldr r3, =__lclock");
  LIBCP_ASM("ldr r4, [r3]");

  LIBCP_ASM("eor r4, r4, #1");        // XOR the logical clock (1=>0, 0=>1)
  LIBCP_ASM("str r4, [r3]");          // Store the logical clock CHECKPOINT

  // Restore the registers before return (never executed during restore)
  LIBCP_ASM("sub r2, #64");           // Point to r3-r8
  LIBCP_ASM("ldmia r2, {r3-r8}");     // restore r3-r8
  LIBCP_ASM("add r2, #52");           // Point to r0-r2
  LIBCP_ASM("ldmia r2, {r0-r2, pc}"); // restore r0-r2 and load the return LR into PC
}
#endif
