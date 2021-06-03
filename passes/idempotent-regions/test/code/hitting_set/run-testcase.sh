#!/bin/bash

f="$1"
REMOVE_TMP_FILES="$2"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'


# Perform the test
echo "Testing: $f"

passed_tests=0
failed_tests=0

# Get the expected lines that should appear in the pass output
IFS=$'\n'
expected=( $(grep -E -o '(\$.*$)' $f) )

# Run the test case
$SCRIPT_DIR/run-test.sh "$f" > "$f.pass.txt" 2>&1

for exp in ${expected[@]}; do
  if grep -Fxq -m1 "$exp" "$f.pass.txt" ; then
    # Expected output found

    # Remove the expected line from the pass.txt output
    # This is done to handle cases where the same result should occur
    # multiple times.
    sed "0,/$exp/{/$exp/d;}" "$f.pass.txt" > "$f.pass.txt.tmp"
    mv "$f.pass.txt.tmp" "$f.pass.txt"

    # Output the success line
    echo -e "  ${GREEN}[PASSED]${NC} $exp"
    ((passed_tests=passed_tests+1))
  else
    # Expected output NOT found
    echo -e "  ${RED}[FAILED]${NC} $exp"
    ((failed_tests=failed_tests+1))
  fi
done

echo "==============================="
echo "Tests passed: $passed_tests, failed: $failed_tests"

if [ "$REMOVE_TMP_FILES" = true ] ; then
  rm -f "$f.pass.ll" "$f.pass.txt" "$f.ll"
fi

exit $failed_tests
