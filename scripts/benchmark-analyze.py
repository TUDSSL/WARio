#!/usr/bin/env python3

import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import sys
import os

from tabulate import tabulate

#
# Process the data
#

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

BaselineCycles=df['Cycles']['opt-baseline']
df['Execution-baseline'] = df['Cycles']/BaselineCycles

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

#
# Store the processed data
#

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

# Save the orignal data for future figures
df_orig = df.copy(deep=True)
df_cp_orig = df_cp.copy(deep=True)


#
# Plot the data
#
#
# Execution figure
#
ExecutionColors = ['#1f78b4']
CheckpointColors = ['#cc4c02', '#fe9929', '#fed98e', '#ffffd4']

def plot_execution_bars(df, df_cp, name,
        xlabel='Benchmark Configuration',
        ylabel0='Normalized Execution Time',
        ylabel1='Checkpoints',
        ylim0=(None,None),
        ylim1=(None,None),
        bar_width=0.3, bar_position=0.05
        ):

    fig, ax0 = plt.subplots(figsize=(8,5), dpi=90)
    ax1 = ax0.twinx()

    # Plot the bars
    exex_bar = df.plot(kind='bar', color=ExecutionColors, \
            rot=0, ax=ax0, width=bar_width, position=1+bar_position, \
            legend=False)

    cp_bar = df_cp.plot(kind='bar', color=CheckpointColors, \
            stacked=True, ax=ax1, width=bar_width, position=0-bar_position, \
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
    ax0.set_xlabel(xlabel)
    ax0.set_ylabel(ylabel0)
    ax1.set_ylabel(ylabel1)

    plt.setp(ax0.xaxis.get_majorticklabels(), rotation=20)

    ax0.set_ylim(ylim0)
    ax1.set_ylim(ylim1)

    plt.xlim(left=-0.5)

    # Save the figure
    fig.tight_layout()
    fig.savefig(dir_path + '/' + name)


# Normalized to C version starting at execution y=0
plot_execution_bars(df['Execution'], df_cp,
        'results-execution-checkpoints.pdf')

## Normalized to C version starting at execution y=1 not showing Plain C
plot_execution_bars(df.drop('Plain C')['Execution'], df_cp.drop('Plain C'),
        'results-execution-checkpoints-no-plain-c.pdf', ylim0=(1,None))

# Plot normalized to Ratchet+Noelle (baseline)
plot_execution_bars(df.drop('Plain C')['Execution-baseline'], df_cp.drop('Plain C'),
        'results-execution-checkpoints-norm-baseline.pdf',
        ylabel0='Normalized Exection Time w.r.t. Ratchet+Noelle')

# Difference in overhead (in percentage) compared to Ratchet+Noelle (baseline)
# TODO: This looks ugly...
#plot_execution_bars(df.drop(['Plain C', 'Ratchet+Noelle'])['Overhead-baseline-%'], df_cp.drop(['Plain C', 'Ratchet+Noelle']),
#        'results-overhead-checkpoints-percent-compared-to-baseline.pdf',
#        ylabel0='Difference in overhead (%) compared to Ratchet+Noelle')

fig, ax0 = plt.subplots(figsize=(8,5), dpi=90)
df_plt = df.drop(['Plain C', 'Ratchet+Noelle'])['Overhead-baseline-%']
perc_bar = df_plt.plot(kind='bar', color=ExecutionColors, \
        rot=0, ax=ax0, width=0.3, \
        legend=False)
ax0.set_xlabel('Benchmark Configuration')
ax0.set_ylabel('Difference in overhead (%) compared to Ratchet+Noelle')
plt.xlim(left=-0.5)
ax0.axhline(0, color='grey', linewidth=0.8)

for i,v in enumerate(perc_bar.patches):
    v = v.get_height()
    y = v

    s = '{0:+}%'.format(v)
    ax0.text(x=i, y=y, s=s, color='black', fontweight='bold', va='center', ha='center')

# Save the figure
#fig.tight_layout()
fig.savefig(dir_path + '/' + 'results-overhead-checkpoints-percent-compared-to-baseline.pdf')
