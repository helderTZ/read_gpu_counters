#! /user/bin/env python

import sys
import csv


filename = sys.argv[1]
filename = '../results/' + filename

# transpose NOT IMPLEMENTED yet
#if sys.argc > 2 and sys.argv[2] == '-t':
#	transpose = True
#else:
#	transpose = False

# rows we want to keep
keep_rows = 55
timestamp = []	# col 0
gpu_ticks = []	# col 1
cpu_ticks = []	# col 2
a_counters = []
b_counters = []
c_counters = []

for i in range(0,36):
	a_counters.append([])
for i in range(0,8):
	b_counters.append([])
	c_counters.append([])

a0_col_idx = 11
b0_col_idx = 47
c0_col_idx = 55


with open(filename,'r') as f:
	reader = csv.reader(f, delimiter='\t')
	rowindex = 0
	for row in reader:
		if rowindex == 0:
			rowindex += 1
			continue
		colindex = 0
		for col in row:
			if colindex == 0:      timestamp.append(col)
			elif colindex == 1: gpu_ticks.append(col)
			elif colindex == 2: cpu_ticks.append(col)
			elif colindex >= a0_col_idx and colindex < b0_col_idx: a_counters[colindex-a0_col_idx].append(col)
			elif colindex >= b0_col_idx and colindex < c0_col_idx: b_counters[colindex-b0_col_idx].append(col)
			elif colindex >= c0_col_idx and colindex < c0_col_idx+8: c_counters[colindex-c0_col_idx].append(col)
			colindex += 1
		rowindex += 1
		
		
txt_filename = filename[11:-5] + '_cpable.txt'
with open(txt_filename, 'w') as f:
	for i in range(len(timestamp)):
		print(timestamp[i]+'\t', file=f, end='')
		print(gpu_ticks[i]+'\t', file=f, end='')
		print(cpu_ticks[i]+'\t', file=f, end='')
		for j in range(len(a_counters)):
			print(a_counters[j][i]+'\t', file=f, end='')
		for j in range(len(b_counters)):
			print(b_counters[j][i]+'\t', file=f, end='')
		for j in range(len(c_counters)):
			print(c_counters[j][i]+'\t', file=f, end='')
		print('\n', file=f, end='')
