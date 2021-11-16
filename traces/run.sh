#!/bin/bash
# Parse the traces used in the paper

# A trace with short on times (on, off, name) for a 3.3v mcu
python3 parse_traces.py 3.8 3.3 "2.txt"

# A trace with longer on times (on, off, name) for a 1.8v mcu
python3 parse_traces.py 2.5 1.8 "7.txt"
