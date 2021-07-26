#!/usr/bin/env python

import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import sys
import os

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
        'opt-all': 'Opt-all'
}

ConfigOrder = [
        'uninstrumented',
        'opt-ratchet',
        'opt-baseline',
        'opt-all'
        ]

df = pd.read_csv(results_file)
df = df.set_index('Configuration')
df = df.reindex(ConfigOrder)

UninstrumentedCycles=df['Cycles']['uninstrumented']
df['Execution'] = df['Cycles']/UninstrumentedCycles

# Rename the index
df.rename(index=ConfigTitleMap, inplace=True)

df_cp = df[['IR-checkpoints', 'Call-checkpoints', 'Pop-checkpoints', 'Spill-checkpoints']]

print(df)

fig, ax0 = plt.subplots()
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

plt.legend(handles=patches)

# Set the titles
ax0.set_xlabel('Benchmark Configuration')
ax0.set_ylabel('Normalized Execution Time')
ax1.set_ylabel('Checkpoints')

#plt.show(block=True)

fig.tight_layout()
fig.savefig(dir_path + '/' + 'results-execution-checkpoints.pdf')

