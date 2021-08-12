#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

$DIR/hitting_set/run-tests.sh
$DIR/war_paths/run-tests.sh
