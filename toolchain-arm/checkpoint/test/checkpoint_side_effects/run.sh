#!/bin/bash

./build.sh && \
run-elf-fast -p checkpoint_side_effects_plugin.so build/checkpoint_test.elf 
