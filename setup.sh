#!/bin/bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

export PATH="$ROOT_DIR/scripts/:$PATH"
export PATH="$ROOT_DIR/llvm/llvm-9.0.1/install/bin:$PATH"

export LLVM_ROOT="$ROOT_DIR/llvm/llvm-9.0.1/install/"

export ICLANG_ROOT="$ROOT_DIR"
export CHECKPOINTLIB="$ROOT_DIR/toolchain-arm/checkpoint"
