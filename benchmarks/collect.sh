#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ -z "$1"]; then
    results_dir="results"
else
    results_dir="$1"
fi

Benchmarks=(
    "coremark"
    "crc"
    "sha"
    "dijkstra"
)

function collect() {
    for benchmark in ${Benchmarks[@]}; do
        echo "Collecting: \"$benchmark\" results"

        cp "$benchmark/benchmark-compare/results-table.txt" "$results_dir/raw/$benchmark-results-table.txt"
        cp "$benchmark/benchmark-compare/results-table.csv" "$results_dir/raw/$benchmark-results-table.csv"
        cp "$benchmark/benchmark-compare/results-execution-checkpoints.pdf" "$results_dir/raw/$benchmark-results-execution-checkpoints.pdf"
    done
}

function gen_txt_report() {
    local results_file="$results_dir/results.txt"

    echo "Generating txt report"

    for benchmark in ${Benchmarks[@]}; do
        echo "# Results for benchmark \"$benchmark\":" >> $results_file
        cat "$results_dir/raw/$benchmark-results-table.txt" >> $results_file
        echo "" >> $results_file
        echo "" >> $results_file
    done
}

function gen_html_report() {
    local results_file="$results_dir/results.html"

    echo "Generating html report"

    echo "<html> <body>" >> $results_file

    for benchmark in ${Benchmarks[@]}; do

        # Add the table
        echo "<h2>Results For Benchmark \"$benchmark\":</h2>" >> $results_file

        # Opening code block
        echo "<code style=\"display:block; white-space:pre-wrap\">" >> $results_file
        cat "$results_dir/raw/$benchmark-results-table.txt" >> $results_file
        # Closing code block
        echo "</code>" >> $results_file
        echo "</br>" >> $results_file

        # Embed the pdf figure
        echo "<embed src=\"raw/$benchmark-results-execution-checkpoints.pdf\" width=\"1200\" height=\"400\" type=\"application/pdf\">" >> $results_file

        echo "</br>" >> $results_file
        echo "</br>" >> $results_file
    done

    echo "</body> </html>" >> "$results_file"
}


cd "$DIR"
rm -rf $results_dir
mkdir $results_dir
mkdir $results_dir/raw

echo "Results directory: $DIR/$results_dir"

# Collect the benchmarks
collect

# Generate the .txt report
gen_txt_report

# Generate the .html report
gen_html_report

