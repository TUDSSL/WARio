#!/bin/bash

# generate: branchless_X_war_Y_cut.c test cases

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
GEN="python $SCRIPT_DIR/gen-branchless-test.py"

cd branchless

function genTest() {
  $GEN $1 $2 > "branchless_$1_war_$2_cut.c"
}


genTest 1 1

genTest 2 1
genTest 2 2

genTest 3 1
genTest 3 2
genTest 3 3

genTest 4 1
genTest 4 2
genTest 4 3
genTest 4 4

genTest 5 1
genTest 5 2
genTest 5 3
genTest 5 4
genTest 5 5

genTest 6 1
genTest 6 2
genTest 6 3
genTest 6 4
genTest 6 5
genTest 6 6

# Some more random combinations
genTest 42 1
genTest 42 2
genTest 42 15
genTest 42 18
genTest 42 31
genTest 42 41

genTest 50 1
genTest 50 2
genTest 50 3
genTest 50 25
genTest 50 26
genTest 50 49
genTest 50 50
