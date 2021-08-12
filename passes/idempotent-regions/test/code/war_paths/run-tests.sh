#!/bin/bash

# Export the correct pass-apply
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
export TEST_PASS_APPLY="$DIR/test-pass-apply.sh"
echo "$TEST_PASS_APPLY"

run-tests-dir "$DIR"
