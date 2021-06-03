#!/bin/bash

f="$1"

# Convert the C file to .ll
c-to-llvm "$f" "$f.ll" > /dev/null 2>&1

# Run the pass on the .ll
pass-apply -idemp -o "$f.pass.ll" "$f.ll"
