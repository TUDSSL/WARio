#!/bin/bash

# Build **and run** all the benchmarks
# Compilation (generating the PDG using Noelle) and emulation (using ICEmu)
# Are both CPU and Memory intensive. For 16GB of system memory we recoment not
# using more than 1 thread.
# This limitation is mainly due to the larger 'picojpeg' benchmark.
make -j 3
