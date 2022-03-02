#!/bin/bash

function run_ipynb {
    notebook="$1"
    echo "Running notebook: $notebook"
    jupyter nbconvert --execute --to html "$notebook"
}

# Run all the notebooks (that generate the plots)
run_ipynb BenchmarkPlot.ipynb
run_ipynb CallFrequencyPlot.ipynb
run_ipynb LoopUnrollPlot.ipynb
run_ipynb PowertracePlot.ipynb

# Copy all the notebooks to a 'notebooks' directory
mkdir notebooks
mv ./*.html notebooks/
