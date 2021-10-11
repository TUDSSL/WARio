#!/bin/bash

function run_test {
  name="$1"
  dir="$2"
  echo -n "Testing $name... "

  pushd "$dir" > /dev/null
  ./build.sh &> build/build.txt && \
  run-elf-fast -p checkpoint_side_effects_plugin.so build/checkpoint_test.elf &> build/out.txt

  if grep -q FAILURE build/out.txt; then
      echo -e "\e[31mFAILURE!\e[0m"
  else
      echo -e "\e[32mSUCCESS\e[0m"
  fi
  popd > /dev/null
}

run_test "checkpoint side effects" "checkpoint_side_effects"
run_test "restore side effects" "restore_side_effects"
