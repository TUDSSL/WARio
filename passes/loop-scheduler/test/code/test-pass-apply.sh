#!/bin/bash

# $1 - input
# $2 - output
pass-apply loop-unroll -o "loop-unroll-$1" "$1" && \
pass-apply loop-buffer -o "$2" "loop-unroll-$1"
