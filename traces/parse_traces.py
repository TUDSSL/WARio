# Copyright (C) 2021 TU Delft Embedded and Networked
# Systems Group/Sustainable Systems Laboratory.
#
# File licensed under the terms of the MIT license.

import matplotlib.pyplot as plt

# Interpretation of the sample based on the description from
# https://github.com/ransford/mspsim/blob/mementos/traces/README

with open('traces/6.txt') as file:
    # Read file line by line
    # Format of each line: <time> <voltage>
    lines = file.readlines()
    # Get time samples as integers
    # One sample unit: [milliseconds]
    time_samples = [int(line.split()[0]) for line in lines]
    # Get voltage samples as floats
    # One sample unit: [volts]
    voltage_samples = [float(line.split()[1]) for line in lines]

# Calculate total measurement time of the loaded trace file
# Result unit: [seconds]
# Samples are of increasing order; first sample starts at arbitrary value
total_time = (time_samples[-1] - time_samples[0]) / 1000
# Calculate total number of samples
total_samples_number = len(time_samples)
# Print results
print('Total measurement time:', total_time, 'seconds')
print('Total number of samples:', total_samples_number)

# Set voltage threshold over which we assume a microcontroller works
# Threshold unit: [volts]
voltage_threshold = 1.9

# Find all samples over voltage threshold
over_voltage_threshold_indices = [count for count, value in enumerate(voltage_samples) if value > voltage_threshold]
# Find all samples under voltage threshold
under_voltage_threshold_indices = [count for count, value in enumerate(voltage_samples) if value <= voltage_threshold]

# Find all voltage vales that are over the voltage threshold
over_voltage_threshold_voltage_samples = [voltage_samples[j] for j in over_voltage_threshold_indices]
over_voltage_threshold_time_samples = [time_samples[j] for j in over_voltage_threshold_indices]
# Find all voltage vales that are under the voltage threshold
under_voltage_threshold_voltage_samples = [voltage_samples[j] for j in under_voltage_threshold_indices]
under_voltage_threshold_time_samples = [time_samples[j] for j in under_voltage_threshold_indices]

# voltage_threshold = 4
# voltage_samples = [1, 2, 3, 4, 5, 3, 4, 5, 6, 1]

above_threshold_duration_samples_list = []
above_threshold_first_sample_list = []
counter = 0
for x in range(len(voltage_samples)):
    if voltage_samples[x] > voltage_threshold:
        if counter == 0:
            above_threshold_first_sample_list.append(time_samples[x])
        counter = counter + 1
    else:
        if counter != 0:
            above_threshold_duration_samples_list.append(counter)
            counter = 0

for x in above_threshold_duration_samples_list:
    line_voltage_threshold = [voltage_threshold for x in time_samples]

print('above_threshold_duration_samples_list', above_threshold_duration_samples_list)
print('above_threshold_first_sample_list', above_threshold_first_sample_list)

# dif = [over1[i]-over1[i+1] for i in range(len(over1)-1)]
# values = [i+1 for i in range(len(over1)-1) if over1[i]-over1[i+1]<-1]
# values_under = [i+1 for i in range(len(under1)-1) if under1[i]-under1[i+1]<-1]

# locdif = [y for x,y in enumerate(dif) if y<-1]
# samx = [sam[j] for j in values]
# overx = [over1[j] for j in values]


plt.plot(time_samples, voltage_samples, '-')
line_voltage_threshold = [voltage_threshold for x in time_samples]
plt.plot(time_samples, line_voltage_threshold, '-')

plt.plot(over_voltage_threshold_time_samples, over_voltage_threshold_voltage_samples, 'r.')
plt.plot(under_voltage_threshold_time_samples, under_voltage_threshold_voltage_samples, 'g.')

plt.xlabel('Timestamp (millisecond)')
plt.ylabel('Voltage (V)')
plt.show()