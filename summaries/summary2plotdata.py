#! /user/bin/env python

import os
import sys
import xlrd




def create_plotdata(kernel_name, wb_name, ws_name):
	
	wb = xlrd.open_workbook(wb_name)
	ws = wb.sheet_by_name(ws_name)

	block_size = []
	tpb = []
	total_threads = []
	ipc = []

	with open('../plots/' + kernel_name + '.csv', 'w') as f:
		
		# print header
		print('#block size\tthreads per block\tTotal threads\tIPC/EU GEN', file=f)
		
		nrows = ws.nrows
		ncols = ws.ncols
		
		for i in range(nrows):
			if i==0: continue	# skip first row
			for j in range(ncols):
				if j==0:	# skip to next line if wrong kernel
					kernel = ws.cell_value(i,j)
					if kernel != kernel_name:
						break
				elif ws.cell_value(0,j) == "block size":
					block_size.append(ws.cell_value(i,j))
				elif ws.cell_value(0,j) == "threads per block":
					tpb.append(ws.cell_value(i,j))
				elif ws.cell_value(0,j) == "Total threads":
					total_threads.append(ws.cell_value(i,j))
				elif ws.cell_value(0,j) == "IPC/EU (using GEN instructions)":
					ipc.append(ws.cell_value(i,j))
				else:
					continue
		
		for i in range(len(tpb)):
			print(str(block_size[i]) + '\t', file=f, end='')
			print(str(tpb[i]) + '\t', file=f, end='')
			print(str(total_threads[i]) + '\t', file=f, end='')
			print(str(ipc[i]) + '\t', file=f, end='')
			print('\n', file=f, end='')
	
	
	
	
def create_plotdata_all_simd(kernel_name):
	if 'scalar' in kernel_name:
		kernel_name_scalar = kernel_name
		kernel_name_vect2 = kernel_name.replace('scalar', 'vect2')
		kernel_name_vect4 = kernel_name.replace('scalar', 'vect4')
		kernel_name_vect8 = kernel_name.replace('scalar', 'vect8')
		kernel_name_vect16 = kernel_name.replace('scalar', 'vect16')
		create_plotdata(kernel_name_scalar)
		create_plotdata(kernel_name_vect2)
		create_plotdata(kernel_name_vect4)
		create_plotdata(kernel_name_vect8)
		create_plotdata(kernel_name_vect16)
	else:
		print('Could not find \'scalar\' in kernel name.')
		sys.exit()
	
	
	
def create_plotdata_all_ops(kernel_name):
	if 'add' in kernel_name:
		kernel_name_add = kernel_name
		kernel_name_sub = kernel_name.replace('add', 'sub')
		kernel_name_mul = kernel_name.replace('add', 'mul')
		kernel_name_div = kernel_name.replace('add', 'div')
		kernel_name_mad = kernel_name.replace('add', 'mad')
		create_plotdata(kernel_name_add)
		create_plotdata(kernel_name_sub)
		create_plotdata(kernel_name_mul)
		create_plotdata(kernel_name_div)
		create_plotdata(kernel_name_mad)
	else:
		print('Could not find \'add\' in kernel name.')
		sys.exit()
			
			
	
def create_plotdata_all_simd_all_ops(kernel_name):
	simd = ['scalar', 'vect2', 'vect4', 'vect8', 'vect16']
	ops = ['add', 'sub', 'mul', 'div', 'mad']
	kernel_names = []
	for s in simd:
		for o in ops:
			kernel_name_temp = kernel_name.replace('scalar', s)
			kernel_name_temp = kernel_name_temp.replace('add', o)
			kernel_names.append(kernel_name_temp)
	#print('\n'.join(kernel_names))
	for k in kernel_names:
		create_plotdata(k)



if len(sys.argv) < 3:
	print('Usage: summary2plotdata.py <kernel_name> <workbook_name> <worksheet_name> [--all-ops] [--all-simd]')
	sys.exit()
	
kernel_name = sys.argv[1]
wb_name = sys.argv[2]
ws_name = sys.argv[3]

if len(sys.argv) > 5 and '--all-ops' in sys.argv and '--all-simd' in sys.argv:
	create_plotdata_all_simd_all_ops(kernel_name, wb_name, ws_name)
elif len(sys.argv) > 4 and '--all-ops' in sys.argv:
	create_plotdata_all_ops(kernel_name, wb_name, ws_name)
elif len(sys.argv) > 4 and '--all-simd' in sys.argv:
	create_plotdata_all_simd(kernel_name, wb_name, ws_name)
else:
	create_plotdata(kernel_name, wb_name, ws_name)
