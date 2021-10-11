/*
 * Test the checkpoint code
 *
 * Verifies that the checkpoint does not have any side-effects
 */

#include "checkpoint.h"

int main(void) {
    /*
     * Set all registers to some value
     */
    __asm__ volatile ("mov r0, #42");
    __asm__ volatile ("mov r1, #1");
    __asm__ volatile ("mov r2, #2");
    __asm__ volatile ("mov r3, #3");
    __asm__ volatile ("mov r4, #4");
    __asm__ volatile ("mov r5, #5");
    __asm__ volatile ("mov r6, #6");
    __asm__ volatile ("mov r7, #7");
    __asm__ volatile ("mov r8, #8");
    __asm__ volatile ("mov r9, #9");
    __asm__ volatile ("mov r10, #10");
    __asm__ volatile ("mov r11, #11");
    __asm__ volatile ("mov r12, #12");
    __asm__ volatile ("cmp r1, r3"); // Modify the status register

    /*
     * Normal checkpoint call does modify LR. The compiler pass will insert this
     * store to the stack if LR is in use
     */
    __asm__ volatile ("str lr, [sp, #-16]");
    __checkpoint();

    /*
     * Change all the register values
     */
    __asm__ volatile ("mov r0, #0");
    __asm__ volatile ("mov r1, #0");
    __asm__ volatile ("mov r2, #0");
    __asm__ volatile ("mov r3, #0");
    __asm__ volatile ("mov r4, #0");
    __asm__ volatile ("mov r5, #0");
    __asm__ volatile ("mov r6, #0");
    __asm__ volatile ("mov r7, #0");
    __asm__ volatile ("mov r8, #0");
    __asm__ volatile ("mov r9, #0");
    __asm__ volatile ("mov r10, #0");
    __asm__ volatile ("mov r11, #0");
    __asm__ volatile ("mov r12, #0");
    __asm__ volatile ("mov lr, #0");
    __asm__ volatile ("cmp r1, r1"); // Modify the status register
    __asm__ volatile ("stmdb sp!, {r0, r2}"); // Modify the SP

    /*
     * Restore the checkpoint
     * This should loop the execution back to the checkpoint call and
     * all the regiters should be correctly restored to those just before the
     * checkpoint call.
     */
    __checkpoint_restore();

    return 42;
}

