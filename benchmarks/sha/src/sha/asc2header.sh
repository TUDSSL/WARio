#!/bin/bash

fn="$1.h"
cp "$1" "$fn"

sed -e 's/$/\\n"/' -i "$fn"
sed -e 's/^/"/' -i "$fn"

sed '1s/^/char inputString[] = \n/' -i $fn
sed '$s/$/;/' -i $fn
