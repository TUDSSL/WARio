/*
 * This test program sets up the checkpoint:
 *      - which during the first boot performs a checkpoint
 *      - during subsequent boots, it restores to the last checkpoint
 *
 *  Effectively, __checkpoint_setup creates a checkpoint, and __checkpoint
 *  creates the second checkpoint.
 *
 *  When this program runs, it only increments `variable_a` once, and it
 *  will increment `variable_b` in effectively a loop.
 *
 *  The *unused* registers are set to known values so it's easy to verify
 *  a successfull checkpoint and restore.
 */
#include <stdlib.h>

#include "checkpoint.h"

volatile int variable_a = 0;
volatile int variable_b = 0;

int main(void) {
    /*
     * First boot: creates a checkpoint
     * Subsequent boots: restores to the last checkpoint
     */
    __checkpoint_setup();
    /*
     * This code runs only once
     */
    variable_a += 1; // should increase only once!
    __asm__ volatile ("mov r1, #1");
    __asm__ volatile ("mov r2, #2");
    __asm__ volatile ("mov r5, #5");
    __asm__ volatile ("mov r6, #6");
    __asm__ volatile ("mov r7, #7");
    __asm__ volatile ("mov r8, #8");
    __asm__ volatile ("mov r9, #9");
    __asm__ volatile ("mov r10, #10");
    __asm__ volatile ("mov r11, #11");
    __asm__ volatile ("mov r12, #12");
    __asm__ volatile ("cmp r1, r3");

    __checkpoint(); // Checkpoint/Restore point

    /*
     * This code runs in a loop (restore point)
     */
    variable_b += 1; // should increase in a loop
    __asm__ volatile ("mov r1, #0");
    __asm__ volatile ("mov r2, #0");
    __asm__ volatile ("mov r5, #0");
    __asm__ volatile ("mov r6, #0");
    __asm__ volatile ("mov r7, #0");
    __asm__ volatile ("mov r8, #0");
    __asm__ volatile ("mov r9, #0");
    __asm__ volatile ("mov r10, #0");
    __asm__ volatile ("mov r11, #0");
    __asm__ volatile ("mov r12, #0");
    __asm__ volatile ("cmp r1, r3");

    /*
     * Jump back to the beginning of main, next time the
     * __checkpoint_setup call will perform a restore to the last __checkpoint
     * call.
     */
    __asm__ volatile ("bl main");

    // Never reached
    return 0;
}

