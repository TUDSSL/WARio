#!/bin/bash

# The .c files contain comment lines starting with '$' that list the expected
# output of the pass on that code.
#
# First the C file is converted to a .ll file using c-to-llvm, and next
# the pass is applied using pass-apply. The output of that command should
# contain all the same strings starting wiht '$'

REMOVE_TMP_FILES=true

test_c_files=(
  # Test case without any WAR violations
  "war_none.c"

  # Initial WAR detection tests
  "war_same_bb.c"
  "war_other_bb.c"
  "war_call_break.c"
  "war_call_break_other_bb_a.c"
  "war_call_break_other_bb_b.c"
  "war_call_break_other_bb_c.c"
  "war_call_no_break.c"
  "war_same_bb_before.c"

  # WAR Path tests
  "war_multiple_2.c"
  "war_multiple_3.c"
  "war_multiple_4.c"
  "war_multiple_2_one_break.c"
  "war_multiple_3_one_break.c"
  "war_multiple_4_two_break.c"
  "war_path_branch.c"
  "war_multiple_2_path_branch.c"

  # WAR Loop Path tests
  "war_path_loop_a.c"
  "war_path_loop_b.c"
  "war_path_loop_c.c"
  "war_path_loop_d.c"
  "war_path_loop_e.c"
)

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $SCRIPT_DIR

passed_tests=0
failed_tests=0

echo "Running ${#test_c_files[@]} test files..."
for f in ${test_c_files[@]}; do
  echo ""
  echo "Testing: $f"

  # Get the expected lines that should appear in the pass output
  IFS=$'\n'
  expected=( $(grep -E -o '(\$.*$)' $f) )

  # Run the test case
  ./run-testcase.sh "$f" > "$f.pass.txt" 2>&1

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

  if [ "$REMOVE_TMP_FILES" = true ] ; then
    rm "$f.pass.ll" "$f.pass.txt" "$f.ll"
  fi

done

echo ""
echo "==============================="
echo "Tests passed: $passed_tests"
echo "Tests failed: $failed_tests"

exit $failed_tests
