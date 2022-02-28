#!/bin/bash

function build_pass {
    pass_dir="$1"

    echo "Building pass: $pass_dir"
    pushd "$pass_dir"
    make -j $(nproc)
    popd
}

# Idempotent regions pass (checkpoint placement)
build_pass "idempotent-expander"

# Write buffering pass (Write Clusterer)
build_pass "write-buffering"

# Loop scheduler (Loop Write Clusterer)
build_pass "loop-scheduler"

# Idempotent expander (Expander)
build_pass "idempotent-regions"
