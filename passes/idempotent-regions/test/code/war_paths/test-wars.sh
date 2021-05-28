#!/bin/bash

# The .c files contain comment lines starting with '$' that list the expected
# output of the pass on that code.
#
# First the C file is converted to a .ll file using c-to-llvm, and next
# the pass is applied using pass-apply. The output of that command should
# contain all the same strings starting wiht '$'

REMOVE_TMP_FILES=true

test_c_files=(
  "war_same_bb.c"
  "war_other_bb.c"
  "war_call_break.c"
  "war_call_break_other_bb_a.c"
  "war_call_break_other_bb_b.c"
  "war_call_break_other_bb_c.c"
  "war_call_no_break.c"
  "war_same_bb_before.c"
)

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo "Running tests..."
for f in ${test_c_files[@]}; do
  echo ""
  echo "Testing: $f"

  # Get the expected lines that should appear in the pass output
  IFS=$'\n'
  expected=( $(grep -E -o '(\$.*$)' $f) )

  # Convert the C file to .ll
  c-to-llvm "$f" "$f.ll" > /dev/null 2>&1

  # Run the pass on the .ll
  pass-apply -idemp -o "$f.pass.ll" "$f.ll" > "$f.pass.txt" 2>&1

  for exp in ${expected[@]}; do
    if grep -Fxq "$exp" "$f.pass.txt" ; then
      # Expected output found
      echo -e "  ${GREEN}[PASSED]${NC} $exp"
    else
      # Expected output NOT found
      echo -e "  ${RED}[FAILED]${NC} $exp"
    fi
  done

  if [ "$REMOVE_TMP_FILES" = true ] ; then
    rm "$f.pass.ll" "$f.pass.txt" "$f.ll"
  fi

done
