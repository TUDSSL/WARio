/*
 * Code for the checkpoint body.
 * Should be in a naked function.
 */
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

// Restore the registers before return (never executed during restore)
LIBCP_ASM("sub r2, #64");           // Point to r3-r8
LIBCP_ASM("ldmia r2, {r3-r8}");     // restore r3-r8
LIBCP_ASM("add r2, #52");           // Point to r0-r2
LIBCP_ASM("ldmia r2, {r0-r2, pc}"); // restore r0-r2 and load the return LR into PC
