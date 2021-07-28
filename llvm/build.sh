#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

LLVM_SRC_DIR="$DIR/llvm-9.0.1"
BUILD_DIR="$LLVM_SRC_DIR/build"
INSTALL_DIR="$LLVM_SRC_DIR/install"

echo "Building LLVM"
echo "Build dir: $BUILD_DIR"
echo "Install dir: $INSTALL_DIR"

# Configure step (only runs the first time)
echo "Configuring LLVM"
if [ ! -d "$BUILD_DIR" ]; then
    mkdir -p "$BUILD_DIR"
    pushd "$BUILD_DIR"
    CXX=clang++ CC=clang cmake  \
        -Wno-dev \
        -G Ninja \
        -DCMAKE_BUILD_TYPE=Release \
        -DLLVM_TARGETS_TO_BUILD="ARM;X86" \
        -DLLVM_BUILD_TESTS=OFF \
        -DLLVM_INCLUDE_BENCHMARKS=OFF \
        -DLLVM_BUILD_BENCHMARKS=OFF \
        -DLLVM_BUILD_DOCS=OFF \
        -DLLVM_PARALLEL_LINK_JOBS=4 \
    	-DCMAKE_INSTALL_PREFIX=$INSTALL_DIR \
        ../llvm
    popd
fi

# build step
echo "Building LLVM"
pushd "$BUILD_DIR"
ninja -j$(nproc)
ninja -j$(nproc) install
popd
