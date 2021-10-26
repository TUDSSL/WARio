# Copyright (C) 2021 TU Delft Embedded and Networked
# Systems Group/Sustainable Systems Laboratory.
#
# File licensed under the terms of the MIT license.

import matplotlib.pyplot as plt
import os
import sys
import math

# Interpretation of the sample based on the description from
# https://github.com/ransford/mspsim/blob/mementos/traces/README

# Hard-coded path name with raw traces
raw_traces_path = 'raw_traces'
# Hard-coded path name with parsed traces
parsed_traces_path = 'parsed_traces'

# Set voltage threshold hysteresis over which we assume a microcontroller works
# Threshold unit: [volts]
voltage_threshold_on  = 1.5
voltage_threshold_off = 1.45
# Sanity check for voltage hysteresis
if voltage_threshold_on < voltage_threshold_off:
    print('Startup voltage threshold is lower than the turn off voltage threshold. Exiting.')
    sys.exit()

# Current working directory
cwd = os.getcwd()
# List all files in
traces_directories_temp = os.listdir(raw_traces_path)
# Remove hidden elements from the list of files in `\raw_traces` directory
traces_directories = [value for count, value in enumerate(traces_directories_temp) if value[0] != '.']

for traces_directory in traces_directories:
    # Enter first trace directory
    os.chdir(cwd + '/' + raw_traces_path + '/' + traces_directory)
    # List all files in a current directory
    trace_files_list = os.listdir()
    # Pick files only with '.txt' extension
    trace_files_list = [file for file in trace_files_list if file.endswith('.txt')]
    for trace_file in trace_files_list:
        # Change directory to base one as it will be changed later on in the code
        os.chdir(cwd + '/' + raw_traces_path + '/' + traces_directory)
        with open(trace_file) as file:
            # Read file line by line
            # Format of each line: <time> <voltage>
            lines = file.readlines()
            # Get time samples as integers
            # One sample unit: [milliseconds]
            time_samples_raw = [int(line.split()[0]) for line in lines]
            # Get voltage samples as floats
            # One sample unit: [volts]
            voltage_samples_raw = [float(line.split()[1]) for line in lines]
        # Make copy of input data for further processing
        time_samples = time_samples_raw.copy()
        voltage_samples = voltage_samples_raw.copy()

        # [Print output file name]
        print('File name:', str(trace_file))
        print('--')

        # [Check if set voltage threshold is appropriate for the input data]
        if voltage_threshold_on  >= max(voltage_samples):
            print('Voltage threshold larger than maximum input voltage. Exiting.')
            sys.exit()

        # [Remove sample discontinuity and find missing samples in the input data]
        # Initiate iterator over expanding list of time samples
        x = 0
        # Initiate first sample
        i = time_samples[x]
        # Append dummy samples at the end for complete while iteration
        time_samples.append(time_samples[-1] + 1)
        # Loop until all samples are traversed
        while i != time_samples[-2]:
            # Check for sample discontinuity
            # Note: samples must increase by one for trace to be correct
            if time_samples[x + 1] - time_samples[x] > 2:
                # Case 1: single non-continuous sample
                if time_samples[x + 2] < time_samples[x + 1]:
                    # Move sample to the correct location
                    time_samples[x + 1] = time_samples[x] + 1
                # Case 2: samples are missing
                else:
                    # Create a range of time samples at the region of discontinuity
                    range_nan = list(range(time_samples[x], time_samples[x + 1]))
                    # Create 'NaN' list equal to `range_nan` length
                    # Note: NaN is needed as NaN will not be plotted by Matplotlib
                    NaNs = [float('nan') for x in range_nan]
                    # Assign 'NaN' for both time and voltage samples
                    time_samples[x + 1:x + 1] = NaNs
                    voltage_samples[x + 1:x + 1] = NaNs
            # Assign next time sample after list expansions
            i = time_samples[x]
            # Increment iterator
            x += 1
        # Remove last two dummy samples that were appended before while loop
        del time_samples[-1]

        # [Get values to plot all samples above voltage threshold]
        # Find all samples over voltage threshold
        over_voltage_threshold_indices = \
            [count for count, value in enumerate(voltage_samples) if value > voltage_threshold_on ]
        # Find all voltage vales that are over the voltage threshold
        over_voltage_threshold_voltage_samples = [voltage_samples[j] for j in over_voltage_threshold_indices]
        # Find all time samples that are over the voltage threshold
        over_voltage_threshold_time_samples = [time_samples[j] for j in over_voltage_threshold_indices]

        # [Calculate (above_threshold_duration_samples_list) and (above_threshold_on_time_sample_list)]
        # List of sample durations for each above voltage threshold sample
        # Format: [last_sample_1 - first_sample_1, last_sample_2 - first_sample_2, ...]
        above_threshold_duration_samples_list = []
        # List containing first samples of all periods above voltage threshold
        # Format: [first_sample_1, first_sample_2, first_sample_3, ... ]
        above_threshold_on_time_sample_list = []
        # Counter incremented at each sample from the first on sample to the last on sample (i.e. off sample)
        counter = 0
        for x in range(len(voltage_samples)):
            # Check for samples above voltage threshold
            if voltage_samples[x] > voltage_threshold_on :
                if counter == 0:
                    above_threshold_on_time_sample_list.append(time_samples[x])
                counter = counter + 1
            # Check if active `on` sample is still within the voltage threshold hysteresis
            elif voltage_threshold_on  > voltage_samples[x] > voltage_threshold_off and counter != 0:
                counter = counter + 1
            else:
                if counter != 0 and not math.isnan(voltage_samples[x]):
                    above_threshold_duration_samples_list.append(counter)
                    counter = 0
                elif counter != 0 and math.isnan(voltage_samples[x]):
                    # Delete sample that was broken by non-discontinuity
                    del above_threshold_on_time_sample_list[-1]
                    counter = 0
        # Remove `on' samples that start from discontinuity
        for count, value in enumerate(above_threshold_on_time_sample_list):
            idx = time_samples.index(value)
            # If the previous sample was NaN - remove the calculated one
            if math.isnan(time_samples[idx-1]):
                del above_threshold_duration_samples_list[count]
                del above_threshold_on_time_sample_list[count]
        # Remove last sample from `above_threshold_on_time_sample_list` if it is greater than voltage_threshold
        # Note: we must remove it as we do not know how long this sample actually is
        if voltage_samples[-1] > voltage_threshold_on :
            del above_threshold_on_time_sample_list[-1]

        # List of sample points for each above voltage threshold
        # Format: [sample_11, sample_12, sample_13, ..., sample_21, sample_22, sample_23, ... ]
        above_voltage_threshold_samples_list = []
        # List of sample points for each above voltage threshold samples
        # Format: [first_sample_1, last_sample_1, first_sample_2, last_sample_2, ... ]
        on_off_samples_list = []
        # List of differentially-cumulatively-formatted samples list
        # Format: [0, (last_sample_1 - first_sample_1) + 0,
        #   (last_sample_2 - first_sample_2) + ((last_sample_1 - first_sample_1) + 0), ... ]
        on_off_difference_samples_list = [0]
        for count in range(len(above_threshold_on_time_sample_list)):
            # First sample
            on_time_sample = above_threshold_on_time_sample_list[count]
            # Last sample
            off_time_sample = above_threshold_on_time_sample_list[count] + above_threshold_duration_samples_list[count]
            # Extend list with new sample [first_sample_x, last_sample_x]
            on_off_samples_list.extend([on_time_sample, off_time_sample])
            # Calculate differentially-cumulatively-formatted samples list
            new_differential_value = off_time_sample - on_time_sample + on_off_difference_samples_list[count]
            on_off_difference_samples_list.append(new_differential_value)
            # Calculate all samples for the whole duration of a new sample
            range_sample = list(range(on_time_sample, off_time_sample))
            # Calculate list of sample points for each above voltage threshold
            above_voltage_threshold_samples_list.extend(range_sample)
        # List of sample points above voltage threshold interspersed by NaN at time_samples under voltage threshold
        # Note: NaN is needed to get rid of straight line plotted by Matplotlib at non-continous points
        time_samples_voltage_threshold = []
        for v in time_samples:
            if v not in above_voltage_threshold_samples_list:
                time_samples_voltage_threshold.append(float('nan'))
            else:
                time_samples_voltage_threshold.append(v)

        # [Extract basic statistics and save them to a file]
        # Calculate total measurement time of the loaded trace file
        # Result unit: [seconds]
        # Samples are of increasing order; first sample starts at arbitrary value
        total_time = (time_samples[-1] - time_samples[0]) / 1000
        # Calculate total number of samples
        total_samples_number = len(time_samples)
        # Change to a directory holding parsed data
        os.chdir(cwd + '/' + parsed_traces_path + '/' + traces_directory)
        # Remove file extension from a raw trace file
        stats_file_name_prefix = trace_file.replace('.txt', '')
        # Open file
        file = open(stats_file_name_prefix + '_stats.txt', 'w')
        # Calculate statistics
        number_samples = len(above_threshold_duration_samples_list)
        min_val = min(above_threshold_duration_samples_list)
        max_val = max(above_threshold_duration_samples_list)
        avg_val = sum(above_threshold_duration_samples_list) \
                  / len(above_threshold_duration_samples_list)
        # Write statistics
        file.write('Total measurement time: ' + str(total_time) + ' seconds' + '\n')
        file.write('Total number of raw samples: ' + str(total_samples_number) + '\n')
        file.write('Upper voltage threshold: ' + str(voltage_threshold_on) + ' volts' + '\n')
        file.write('Lower voltage threshold: ' + str(voltage_threshold_off) + ' volts' + '\n')
        file.write('Total number of `on` samples: ' + str(number_samples) + '\n')
        file.write('Shortest `on` time above voltage threshold: ' + str(min_val) + ' microseconds' + '\n')
        file.write('Longest `on` time above voltage threshold: ' + str(max_val) + ' microseconds' + '\n')
        file.write('Average `on` time above voltage threshold: ' + str(avg_val) + ' microseconds' + '\n')
        file.write('Complete `on` samples list: ' + str(above_threshold_duration_samples_list))
        file.close()

        # [Store (on_off_difference_samples_list) in a file]
        file = open(stats_file_name_prefix + '_on_off_samples_list.txt', 'w')
        # Write statistics
        for x in on_off_difference_samples_list:
            file.write(str(x) + '\n')
        file.close()

        # [Plot all results]
        # Get voltage threshold (on) line for the whole plot
        line_voltage_threshold_on = [voltage_threshold_on  for x in time_samples]
        # Get voltage threshold (off) line for the whole plot
        line_voltage_threshold_off = [voltage_threshold_off for x in time_samples]
        # Get voltage threshold line for only on and off (start and end) samples above voltage threshold
        line_voltage_threshold_per_on_off_sample = [voltage_threshold_on  for x in on_off_samples_list]
        # Set figure
        figure, axis = plt.subplots(2, 1)
        # Adjust horizontal space
        plt.subplots_adjust(hspace = 1.8)
        # Figure 1
        axis[0].plot(time_samples_raw, voltage_samples_raw, '-g')
        axis[0].set_title('Raw input data')
        axis[0].set_xlabel('Timestamp (millisecond)')
        axis[0].set_ylabel('Voltage (V)')
        # Figure 2
        # Plot original samples (without discontinuity)
        axis[1].plot(time_samples, voltage_samples, '-b')
        # Plot voltage threshold for all collected samples
        axis[1].plot(time_samples, line_voltage_threshold_on, '-r')
        # Plot voltage threshold for all collected samples
        axis[1].plot(time_samples, line_voltage_threshold_off, '-y')
        # Plot voltage threshold for all samples above voltage threshold
        axis[1].plot(time_samples_voltage_threshold, line_voltage_threshold_on, '.-k')
        # Plot only on and off (start and end) samples above voltage threshold
        axis[1].plot(on_off_samples_list, line_voltage_threshold_per_on_off_sample, 'xk')
        # Plot all samples above voltage threshold
        # axis[1].plot(over_voltage_threshold_time_samples, over_voltage_threshold_voltage_samples, '.b')
        axis[1].set_title('Parsed')
        axis[1].set_title('Processed input data')
        axis[1].set_xlabel('Timestamp (millisecond)')
        axis[1].set_ylabel('Voltage (V)')
        # Legend
        legend = ['Original samples (processed)',
                  'Voltage threshold (on)',
                  'Voltage threshold (off)',
                  'Samples within above voltage threshold',
                  'First and last sample within above voltage threshold']
                  #'Original samples above voltage threshold']
        plt.legend(legend, bbox_to_anchor = (0, 1.2, 1, 0.2), loc = 'lower left')
        # Save figure
        plt.savefig(stats_file_name_prefix + '_parsed_figure.pdf')
        # Plot all
        plt.tight_layout()
        # plt.show()

        # Save thumbnail of the input data (for the paper figures)
        fig, ax = plt.subplots(1, 1)
        ax.plot(time_samples, voltage_samples, '-g')
        ax.set_xticklabels([])
        ax.set_xticks([])
        ax.axis('off')
        # Save figure
        plt.savefig(stats_file_name_prefix + '_thumbnail.pdf')
        # plt.show()