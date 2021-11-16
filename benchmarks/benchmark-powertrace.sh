#!/bin/bash
# $1 : Number of times to run each powertrace.

RESULT_DIR="results-powertrace"
COMBINE_FILE="powertrace-stats.csv"

N=1
if [[ ! -z "$1" ]]; then
    N=$1
fi

# Check if N is a number
re='^[0-9]+$'
if ! [[ $N =~ $re ]] ; then
     echo "error: Not a number" >&2; exit 1
fi

# Remove the old results directory
rm -rf "$RESULT_DIR"

# Run the powertrace benchmark N times
echo "running the powertrace benchmark ${N}x"
for (( c=1; c<=$N; c++)) do
    make -f make-powertrace-benchmarks.mk all -j14
done

# Run the real-world powertraces

# Combine the output
echo "combining results"
make -f make-powertrace-benchmarks.mk powertrace-combine -j14
