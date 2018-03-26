 #! /user/bin/env python
 
import os
import sys

kernel_name_org = sys.argv[1]
if 'scalar' not in kernel_name_org or 'add' not in kernel_name_org:
	print('Could not find \'scalar\' or \'add\' in kernel name.')
	sys.exit()

rows_to_write = []
ops = ['add', 'sub', 'mul', 'div', 'mad']
simd = ['scalar', 'vect2', 'vect4', 'vect8', 'vect16']
for s in simd:
	kernel_name_simd = kernel_name_org.replace('scalar', s)
	for o in ops:
		kernel_name_op = kernel_name_simd.replace('add', o)
		filename = kernel_name_op + '_summary.csv'
		with open(filename, 'r') as summary_f:
			lines = summary_f.readlines()
			lines.pop(0)
			for line in lines:
				rows_to_write.append(list(line.split()))

#print(rows_to_write[0][0])
with open('buffer.csv', 'w') as f:
	for row in rows_to_write:
		print('\t'.join(row), file=f)
