#!/bin/bash

set -e

echo ""
pass-apply loop-unroll --lwc-loop-unroll-count=3 list-reverse-norm.ll -o list-reverse-unrolled.ll

echo ""
noelle-norm list-reverse-unrolled.ll -S -o list-reverse-unrolled-norm.ll

echo ""
pass-apply loop-buffer list-reverse-unrolled-norm.ll -o list-reverse-loop-buffered.ll
