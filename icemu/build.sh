#!/bin/bash

NPROC=4

# Update the submodules (should already ok)
git submodule update --init --recursive

# Build ICEmu
echo "Building ICEmu"
cd icemu
mkdir build && cd build && cmake ../ && make -j"$NPROC"
echo "Done building ICEmu"
