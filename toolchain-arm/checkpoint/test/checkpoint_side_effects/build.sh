#!/bin/bash

export ICLANG_NO_PASSES="YES"

rm -rf build
mkdir build

cd build
cmake -DCMAKE_TOOLCHAIN_FILE="../../../toolchain.cmake" ../ && make
