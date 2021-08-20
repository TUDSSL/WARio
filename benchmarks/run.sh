#!/bin/bash

# Build, run and analyze all the benchmarks

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [[ "$1" == "-j" ]]; then
    PARALLEL="-parallel"
fi

function bench() {
    # Build the benchmark
    # Run the benchmark
    # Compare the benchmark
    # Analyze the benchmark

    benchmark="$1"
    echo "Benchmarking: $benchmark"
    pushd "$benchmark" > /dev/null

    benchmark-build "all$PARALLEL"
    benchmark-run "all$PARALLEL"

    benchmark-compare
    benchmark-analyze.py "./benchmark-compare/results.csv"

    popd > /dev/null
    echo ""
}

cd "$DIR"

bench "quicksort"
bench "coremark"
bench "crc"
bench "sha"
bench "dijkstra"
