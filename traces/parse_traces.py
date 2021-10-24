# Copyright (C) 2021 TU Delft Embedded and Networked
# Systems Group/Sustainable Systems Laboratory.
#
# File licensed under the terms of the MIT license.

import matplotlib.pyplot as plt
import os

# Interpretation of the sample based on the description from
# https://github.com/ransford/mspsim/blob/mementos/traces/README

# Hard-coded path name with raw traces
raw_traces_path = 'raw_traces'
# Hard-coded path name with parsed traces
parsed_traces_path = 'parsed_traces'

# Set voltage threshold over which we assume a microcontroller works
# Threshold unit: [volts]
voltage_threshold = 1.5

# Current working directory
cwd = os.getcwd()

# List all files in
traces_directories_temp = os.listdir(raw_traces_path)
# Remove hidden elements from the list of files in `\raw_traces` directory
traces_directories = [value for count, value in enumerate(traces_directories_temp) if value[0] != '.']

for traces_directory in traces_directories:
    # Change to the first trace directory
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
            time_samples = [int(line.split()[0]) for line in lines]
            # Get voltage samples as floats
            # One sample unit: [volts]
            voltage_samples = [float(line.split()[1]) for line in lines]

        # [Extract basic statistics and save them to a file]
        # Calculate total measurement time of the loaded trace file
        # Result unit: [seconds]
        # Samples are of increasing order; first sample starts at arbitrary value
        total_time = (time_samples[-1] - time_samples[0]) / 1000
        # Calculate total number of samples
        total_samples_number = len(time_samples)
        # Print results
        print('File name:', str(trace_file))
        print('Total measurement time:', total_time, 'seconds')
        print('Total number of samples:', total_samples_number)
        print('--')
        # Change to a directory holding parsed data
        os.chdir(cwd + '/' + parsed_traces_path + '/' + traces_directory)
        # Remove file extension from a raw trace file
        stats_file_name_prefix = trace_file.replace('.txt', '')
        # Open file
        file = open(stats_file_name_prefix + '_stats.txt', 'w')
        # Write statistics
        file.write('Total measurement time: ' + str(total_time) + ' seconds')
        file.write('Total number of samples: ' + str(total_samples_number))
        file.close()

        # [Get values to plot all samples above voltage threshold]
        # Find all samples over voltage threshold
        over_voltage_threshold_indices = \
            [count for count, value in enumerate(voltage_samples) if value > voltage_threshold]
        # Find all voltage vales that are over the voltage threshold
        over_voltage_threshold_voltage_samples = [voltage_samples[j] for j in over_voltage_threshold_indices]
        # Find all time samples that are over the voltage threshold
        over_voltage_threshold_time_samples = [time_samples[j] for j in over_voltage_threshold_indices]

        # [Calculate (time_samples_voltage_threshold) and (on_off_samples_list)]
        # List containing duration of all samples (in samples) above voltage threshold
        # Result unit: [sample = one microsecond]
        above_threshold_duration_samples_list = []
        # List containing first samples of all periods above voltage threshold
        above_threshold_on_time_sample_list = []
        # Counter incremented at each sample from the first on sample to the last on sample (i.e. off sample)
        counter = 0
        for x in range(len(voltage_samples)):
            if voltage_samples[x] > voltage_threshold:
                if counter == 0:
                    above_threshold_on_time_sample_list.append(time_samples[x])
                counter = counter + 1
            else:
                if counter != 0:
                    above_threshold_duration_samples_list.append(counter)
                    counter = 0
        # List of sample points for each above voltage threshold
        # Format: [on_11, on_12, on_13, ..., on_21, on_22, on_23, ... ]
        above_voltage_threshold_samples_list = []
        # List of sample points for each above voltage threshold samples
        # Format: [first_sample_1, last_sample_1, first_sample_2, last_sample_2, ... ]
        on_off_samples_list = []
        for count in range(len(above_threshold_on_time_sample_list)-1):
            # First sample
            on_time_sample = above_threshold_on_time_sample_list[count]
            # Last sample
            off_time_sample = above_threshold_on_time_sample_list[count] + above_threshold_duration_samples_list[count]
            # Extend list with new sample [first_sample_x, last_sample_x]
            on_off_samples_list.extend([on_time_sample, off_time_sample])
            # Calculate length of new sample
            range_sample = list(range(on_time_sample, off_time_sample))
            # Extend list with new sample (duration)
            above_voltage_threshold_samples_list.extend(range_sample)
        # List of sample points above voltage threshold interspersed by NaN at time_samples under voltage threshold
        # Note: NaN is needed to get rid of straight line plotted by Matplotlib at non-continous points
        time_samples_voltage_threshold = []
        for v in time_samples:
            if v not in above_voltage_threshold_samples_list:
                time_samples_voltage_threshold.append(float('nan'))
            else:
                time_samples_voltage_threshold.append(v)

        # [Store (on_off_samples_list) in a file]
        file = open(stats_file_name_prefix + '_on_off_samples_list.txt', 'w')
        # Write statistics
        for x in on_off_samples_list:
            file.write(str(x)+'\n')
        file.close()

        # [Plot all results]
        # Get voltage threshold line for the whole plot
        line_voltage_threshold = [voltage_threshold for x in time_samples]
        # Get voltage threshold line for only on and off (start and end) samples above voltage threshold
        line_voltage_threshold_per_on_off_sample = [voltage_threshold for x in on_off_samples_list]
        # Plot original samples
        plt.plot(time_samples, voltage_samples, '-g')
        # Plot voltage threshold for all collected samples
        plt.plot(time_samples, line_voltage_threshold, '-r')
        # Plot voltage threshold for all samples above voltage threshold
        plt.plot(time_samples_voltage_threshold, line_voltage_threshold, '.-k')
        # Plot only on and off (start and end) samples above voltage threshold
        plt.plot(on_off_samples_list, line_voltage_threshold_per_on_off_sample, 'xk')
        # Plot all samples above voltage threshold
        plt.plot(over_voltage_threshold_time_samples, over_voltage_threshold_voltage_samples, '.b')
        # Figure setup
        plt.xlabel('Timestamp (millisecond)')
        plt.ylabel('Voltage (V)')
        plt.tight_layout()
        legend = ['Original samples',
                  'Voltage threshold',
                  'Samples within above voltage threshold',
                  'First and last sample within above voltage threshold',
                  'Original samples above voltage threshold']
        plt.legend(legend, loc = 'best')
        plt.savefig(stats_file_name_prefix + '_parsed_figure.pdf')
        plt.show()