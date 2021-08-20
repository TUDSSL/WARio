#!/usr/bin/env python3

import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import sys
import os

from tabulate import tabulate

# get the results file
if len(sys.argv) < 2:
    print("provide the results file as an argument")
    sys.exit(-1)

results_file = sys.argv[1]

if os.path.isfile(results_file) == False:
    print('could not open file: ' + results_file)
    sys.exit(-1)

dir_path = os.path.dirname(os.path.realpath(results_file))

ConfigTitleMap = {
        'uninstrumented': 'Plain C',
        'opt-ratchet': 'Ratchet',
        'opt-baseline': 'Ratchet+Noelle',
        'opt-loop': 'Loop Clustering',
        'opt-all': 'Opt-all'
}

ConfigOrder = [
        'uninstrumented',
        'opt-ratchet',
        'opt-baseline',
        'opt-loop',
        'opt-all'
        ]

df = pd.read_csv(results_file)
df = df.set_index('Configuration')
df = df.reindex(ConfigOrder)

UninstrumentedCycles=df['Cycles']['uninstrumented']
df['Execution'] = df['Cycles']/UninstrumentedCycles

ExecutionBaseline=df['Execution']['opt-baseline']-1
df['Overhead-baseline-%'] = (((df['Execution']-1)*100.0)/ExecutionBaseline)-100

ExecutionRatchet=df['Execution']['opt-ratchet']-1
df['Overhead-ratchet-%'] = (((df['Execution']-1)*100.0)/ExecutionRatchet)-100

# Round the values
df['Overhead-baseline-%'] = round(df['Overhead-baseline-%'],2)
df['Overhead-ratchet-%'] = round(df['Overhead-ratchet-%'],2)


# Rename the index
df.rename(index=ConfigTitleMap, inplace=True)

df_cp = df[['IR-checkpoints', 'Call-checkpoints', 'Pop-checkpoints', 'Spill-checkpoints']]

#print(df)

# Print and store the table
table_text = tabulate(df, headers='keys', tablefmt='pretty')
print(table_text)

with open(dir_path + '/' + 'results-table.txt', 'w') as f:
    f.write(table_text)

# Store a .tex version
with open(dir_path + '/' + 'results-table.tex', 'w') as f:
    f.write(tabulate(df, headers='keys', tablefmt='latex'))

# Store a .csv version
df.to_csv(dir_path + '/' + 'results-table.csv')

fig, ax0 = plt.subplots(figsize=(8,5), dpi=90)
ax1 = ax0.twinx()

width=0.3
position=0.05

ExecutionColors = ['#1f78b4']
CheckpointColors = ['#cc4c02', '#fe9929', '#fed98e', '#ffffd4']

# Plot the bars
exex_bar = df.plot(kind='bar', y='Execution', color=ExecutionColors, \
        rot=0, ax=ax0, width=width, position=1+position, \
        legend=False)

cp_bar = df_cp.plot(kind='bar', color=CheckpointColors, \
        stacked=True, ax=ax1, width=width, position=0-position, \
        legend=False)

# Set the legend using custom patches
patches = []
patches.append(mpatches.Patch(color=ExecutionColors[0], label="Norm. Execution Time"))

patches.append(mpatches.Patch(color=CheckpointColors[0], label="IR checkpoints"))
patches.append(mpatches.Patch(color=CheckpointColors[1], label="Call checkpoints"))
patches.append(mpatches.Patch(color=CheckpointColors[2], label="Pop checkpoints"))
patches.append(mpatches.Patch(color=CheckpointColors[3], label="Spill checkpoints"))

plt.legend(loc='center left', handles=patches, bbox_to_anchor=(1.1,-0.1))

# Set the titles
ax0.set_xlabel('Benchmark Configuration')
ax0.set_ylabel('Normalized Execution Time')
ax1.set_ylabel('Checkpoints')

#plt.show(block=True)
plt.setp(ax0.xaxis.get_majorticklabels(), rotation=20)

fig.tight_layout()
fig.savefig(dir_path + '/' + 'results-execution-checkpoints.pdf')

