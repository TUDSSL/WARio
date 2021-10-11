#!/bin/bash

# Build and run loop specific benchmarks
# This will build specified benchmarks with different loop write clustering
# configurations.
# The goal is to illustrate that impact of different unroll factors
# Unrolling will not scale indefinitely due to two factors:
#   * read checks
#   * register spilling
#
# The write bufferer will insert read-checks if a store is postponed IF there
# is a read that happens between the original write source and the destination
# that MIGHT depend on the store (i.e., reads that may be skipped over).
# Inserted checks are less costly than creating a checkpoint. However, they
# can grow exponentially.
# All these checks forces the address of the buffered store to be kept in a
# register, creating additional register pressure that can lead to
# stack-spilling. Stack spills in loops CAN lead to register spills to the same
# stack slot which in turn can lead to checkpoints in the back-end.
# If there are a lot of checks, the number of checkpoints in the back-end can
# be much greater than the number of checkpoints removed due to
# loop-write-clustering.
#
# Additionally there is diminishing return with regard to the code-size.

# Get the desired optimization level if specified

BENCHMARKS := \
		coremark \
		sha \
		aes

# Get the different configuration targets from benchmark-build
CONFIGURATIONS := \
		loop-unroll-1 \
		loop-unroll-2 \
		loop-unroll-4 \
		loop-unroll-6 \
		loop-unroll-8 \
		loop-unroll-10 \
		loop-unroll-15 \
		loop-unroll-20 \
		loop-unroll-25 \
		loop-unroll-30 \
		loop-unroll-35 \

include make-generate.mk

