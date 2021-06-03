#!/bin/bash

# The .c files contain comment lines starting with '$' that list the expected
# output of the pass on that code.
#
# First the C file is converted to a .ll file using c-to-llvm, and next
# the pass is applied using pass-apply. The output of that command should
# contain all the same strings starting wiht '$'

DIR_TO_TEST="$1"

if [ -z $DIR_TO_TEST ]; then
  TEST_DIRS=("branchless" "branched" "loop")
else
  TEST_DIRS=("$DIR_TO_TEST")
fi

REMOVE_TMP_FILES="true"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd $SCRIPT_DIR

RUN="$SCRIPT_DIR/run-testcase.sh"

passed_tests=0
failed_tests=0

for t in ${TEST_DIRS[@]}; do
  echo "Running tests in directory: $t"
  pushd $t

  for f in *.c ; do
    echo ""
    $RUN "$f" "$REMOVE_TMP_FILES"
    if [ $? -eq 0 ]; then
      ((passed_tests=passed_tests+1))
    else
      ((failed_tests=failed_tests+1))
    fi
  done

  popd
done

if [ $failed_tests -gt 0 ]; then
  echo ""
  echo "SOME TESTS FAILED!"
fi

exit $failed_tests