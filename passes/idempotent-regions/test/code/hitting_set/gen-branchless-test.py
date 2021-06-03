#!/usr/bin/python

import sys
import random
import math

# Create brachless_X_war_Y_cut.c test cases
if len(sys.argv) < 3:
    print('Create a test case for branchless_X_war_y_cut.c')
    print('Provide two arguments: X Y')
    exit(-1)

X = int(sys.argv[1])
Y = int(sys.argv[2])

try:
    Extra = sys.argv[3]
except:
    Extra = None

#print('X: ', X)
#print('Y: ', Y)

# Number of reads in a row
Statements = X*2

ReadIdx = 0
WriteIdx = 0

StatementsLeft = Statements

def Read():
    global StatementsLeft
    global ReadIdx

    ReadIdx += 1
    StatementsLeft -= 1

    return "  READ(war_"+str(ReadIdx)+");"

def Write():
    global StatementsLeft
    global WriteIdx

    # Next write
    WriteIdx += 1
    StatementsLeft -= 1

    return "  WRITE(war_"+str(WriteIdx)+");"

def getStatementsInRow():
    global WarsRemaining
    global CutsRemaining

    return int(math.ceil(WarsRemaining/CutsRemaining))

Program = []

WarsRemaining = X;
CutsRemaining = Y;

ProgramBlocks = []

while StatementsLeft > 0:
    StatementsInRow = getStatementsInRow()

    ReadBlock = []
    for R in range(StatementsInRow):
        ReadBlock.append(Read())

    WriteBlock = []
    for W in range(StatementsInRow):
        WriteBlock.append(Write())

    ProgramBlocks.append(ReadBlock + WriteBlock)

    WarsRemaining -= StatementsInRow
    CutsRemaining -= 1

if Extra == 'random':
    random.shuffle(ProgramBlocks)

for B in ProgramBlocks:
    Program.extend(B)

#
# Complete the program
#

# Comment
Com = []
Com.append('// This is an automatically generated test case!')
Com.append('')

# Test comment
Test = []
Test.append('/*')
Test.append(' * $UNCUT_WAR_COUNT: ' + str(X))
Test.append(' * $CUTS_COUNT: ' + str(Y))
Test.append(' */')
Test.append('')

# Defines
Defs = []
Defs.append('#define READ(v_) tmp = v_')
Defs.append('#define WRITE(v_) v_ = 1')
Defs.append('')

# Variable declarations
Vars = []
for Var in range(1, X+1):
    Vars.append('int war_'+str(Var)+';')
Vars.append('')

# Main start
MainS = []
MainS.append('int main(void) {')
MainS.append('  int tmp;')
MainS.append('')

# Main end
MainE = []
MainE.append('')
MainE.append('  return 1;')
MainE.append('}')

# Combine

Program = Com + Test + Defs + Vars + MainS + Program + MainE

# Print the program
for S in Program:
    print(S)
