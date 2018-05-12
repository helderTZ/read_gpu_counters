#! /user/bin/env python

import os
import sys
import math
from statistics import median


def create_summary(kernel, block_exp):
	ocl_time = []
	timestamp = []
	gpu_ticks = []
	cpu_ticks = []
	a_counters = []
	b_counters = []
	c_counters = []
	for i in range(36):
		a_counters.append([])
	for i in range(8):
		b_counters.append([])
		c_counters.append([])
	psys_energy = []
	pkg_energy = []
	pp0_energy = []
	dram_energy = []
	gpu_energy = []
	ocl_time_median = []
	timestamp_median = []
	gpu_ticks_median = []
	cpu_ticks_median = []
	a_counters_median = []
	b_counters_median = []
	c_counters_median = []
	for i in range(36):
		a_counters_median.append([])
	for i in range(8):
		b_counters_median.append([])
		c_counters_median.append([])
	psys_energy_median = []
	pkg_energy_median = []
	pp0_energy_median = []
	dram_energy_median = []
	gpu_energy_median = []
	
	# 32+256 tpb mode
	#if block_exp == 0: block_exp = 12
	#blocks = [1 for i in range(9)] + [i for i in range(2,33)] + [2**i for i in range(6,int(block_exp))]
	#tpb = [2**i for i in range(0,9)]  + [32 for i in range(len(blocks)-10+1)] + [256 for i in range(len(blocks)-10+1)]
	#blocks = blocks + [i for i in range(2,33)] + [2**i for i in range(6,int(block_exp))]
	
	# 256 tpb mode
	if block_exp == 0: block_exp = 12
	blocks = [1 for i in range(9)] + [i for i in range(2,33)] + [2**i for i in range(6,int(block_exp))]
	tpb = [2**i for i in range(0,9)]  + [256 for i in range(len(blocks)-10+1)]
	
	
	# 256 tpb 1-64 blocks mode 
	#if block_exp == 0: block_exp = 12
	#blocks = [1 for i in range(9)] + [i for i in range(2,65)]
	#tpb = [2**i for i in range(0,9)]  + [256 for i in range(len(blocks)-10+1)]
	
	
	#print(blocks)
	#print(tpb)
	
	#sys.exit()


	for b,t in zip(blocks, tpb):
		
		#print(b,t)
		
		filename = 'results_rpc_' + kernel + '_' + str(b) + '_blocks_' + str(t) + '_tpb.csv'
		with open('../results/' + filename, 'r') as f:
			
			lines = f.readlines()
			header = list(lines.pop(0).split())	# remove header
			for line in lines:
				words = list(line.split())
				i=0
				for word in words:
					if i==0:	# ocl_time
						ocl_time.append(int(word))
					if i==1:	# timestamp
						timestamp.append(int(word))
					elif i==2:	# gpu ticks
						gpu_ticks.append(int(word))
					elif i==3:	# cpu ticks
						cpu_ticks.append(int(word))
					elif i >= 12 and i < 12+36:	# A counters
						a_counters[i-12].append(int(word))
					elif i >= 12+36 and i < 12+36+8:	# B counters
						b_counters[i-(12+36)].append(int(word))
					elif i >= 12+36+8 and i < 12+36+8+8:	# C counters
						c_counters[i-(12+36+8)].append(int(word))
					elif i >= 12+36+8+8 and i < 12+36+8+8+1:	# psys energy
						psys_energy.append(int(word))
					elif i >= 12+36+8+8+1 and i < 12+36+8+8+2:	# pkg energy
						pkg_energy.append(int(word))
					elif i >= 12+36+8+8+2 and i < 12+36+8+8+3:	# pp0 energy
						pp0_energy.append(int(word))
					elif i >= 12+36+8+8+3 and i < 12+36+8+8+4:	# pp0 energy:	# gpu energy
						dram_energy.append(int(word))
					elif i >= 12+36+8+8+4:	# gpu energy
						gpu_energy.append(int(word))
					i += 1
			
			
			
			
			ocl_time_median.append(math.floor(median(ocl_time)))
			timestamp_median.append(math.floor(median(timestamp)))
			gpu_ticks_median.append(math.floor(median(gpu_ticks)))
			cpu_ticks_median.append(math.floor(median(cpu_ticks)))
			for i in range(len(a_counters)):
				a_counters_median[i].append(math.floor(median(a_counters[i])))
			for i in range(len(b_counters)):
				b_counters_median[i].append(math.floor(median(b_counters[i])))
			for i in range(len(c_counters)):
				c_counters_median[i].append(math.floor(median(c_counters[i])))
			psys_energy_median.append(math.floor(median(psys_energy)))
			pkg_energy_median.append(math.floor(median(pkg_energy)))
			pp0_energy_median.append(math.floor(median(pp0_energy)))
			dram_energy_median.append(math.floor(median(dram_energy)))
			gpu_energy_median.append(math.floor(median(gpu_energy)))
			
			#if "_16_" in filename: print(a_counters_median[8])
			#if "_16_" in filename: print(a_counters)
			
			# reset lists for next iteration
			ocl_time = []
			timestamp = []
			gpu_ticks = []
			cpu_ticks = []
			a_counters = []
			b_counters = []
			c_counters = []
			for i in range(36):
				a_counters.append([])
			for i in range(8):
				b_counters.append([])
				c_counters.append([])
			psys_energy = []
			pkg_energy = []
			pp0_energy = []
			dram_energy = []
			gpu_energy = []


	for i in range(3,11):
		header.pop(3)	# remove unnecesary cols
	header.insert(0, 'kernel')
	header.insert(1, 'block size')
	header.insert(2, 'threads per block')

			
	with open(kernel + '_summary.csv', 'w') as f:
		for i in range(len(timestamp_median)):
			if i==0:
				print('\t'.join(header), file=f)
			print(kernel + '\t' + str(blocks[i]) + '\t' + str(tpb[i]) + '\t' + str(ocl_time_median[i]) + '\t' + str(timestamp_median[i]) + '\t' + str(gpu_ticks_median[i]) + '\t' + str(cpu_ticks_median[i]) + '\t', file=f, end='')
			for j in range(len(a_counters_median)):
				print(str(a_counters_median[j][i]) + '\t', file=f, end='')
			for j in range(len(b_counters_median)):
				print(str(b_counters_median[j][i]) + '\t' + str(c_counters_median[j][i]) + '\t', file=f, end='')
			print(str(psys_energy_median[i]) + '\t', file=f, end='')
			print(str(pkg_energy_median[i]) + '\t', file=f, end='')
			print(str(pp0_energy_median[i]) + '\t', file=f, end='')
			print(str(dram_energy_median[i]) + '\t', file=f, end='')
			print(str(gpu_energy_median[i]) + '\t', file=f, end='')
			print('', file=f)
	
	
	#header.pop(0)	# remove kernel name
	#header[1] = '# ' + header[1]	# comment first line for gnuplot
	#header.insert(2, '# threads')	# add col total number of threads
	## add timers in sec, enrgy and power cols
	#header.append('OCL_TIMER [s]')
	#header.append('TIMESTAMP [s]')
	#header.append('GPU_TICKS [s]')
	#header.append('CPU_TICKS [s]')
	#header.append('PSYS_POWER [W]')
	#header.append('PKG_POWER [W]')
	#header.append('PP0_POWER [W]')
	#header.append('DRAM_POWER [W]')
	#header.append('GPU_POWER [W]')
	#
	#with open('../plots/' + kernel + '.csv', 'w') as f:
	#	for i in range(len(timestamp_median)):
	#		if i==0:
	#			print('\t'.join(header), file=f)
	#		print(str(blocks[i]) + '\t' + str(tpb[i]) + '\t' + str(blocks[i]*tpb[i]) + '\t' + str(ocl_time_median[i]) + '\t' + str(timestamp_median[i]) + '\t' + str(gpu_ticks_median[i]) + '\t' + str(cpu_ticks_median[i]) + '\t', file=f, end='')
	#		for j in range(len(a_counters_median)):
	#			print(str(a_counters_median[j][i]) + '\t', file=f, end='')
	#		for j in range(len(b_counters_median)):
	#			print(str(b_counters_median[j][i]) + '\t' + str(c_counters_median[j][i]) + '\t', file=f, end='')
	#		# print energy
	#		print(str(psys_energy_median[i]) + '\t', file=f, end='')
	#		print(str(pkg_energy_median[i]) + '\t', file=f, end='')
	#		print(str(pp0_energy_median[i]) + '\t', file=f, end='')
	#		print(str(dram_energy_median[i]) + '\t', file=f, end='')
	#		print(str(gpu_energy_median[i]) + '\t', file=f, end='')
	#		# calc and print timers in seconds
	#		ocl_time_seconds = float(ocl_time_median[i])/1.0e9
	#		timestamp_seconds = float(timestamp_median[i])/12500000
	#		gpu_seconds = float(gpu_ticks_median[i])/1050e6
	#		cpu_seconds = float(cpu_ticks_median[i])/3.5e9
	#		print(str(ocl_time_seconds) + '\t' + str(timestamp_seconds) + '\t' + str(gpu_seconds) + '\t' + str(cpu_seconds) + '\t', file=f, end='')
	#		# calc and print power
	#		ocl_time_seconds = ocl_time_median[i]/1.0e9
	#		psys_power = psys_energy_median[i] / ocl_time_seconds
	#		pkg_power = pkg_energy_median[i] / ocl_time_seconds
	#		pp0_power = pp0_energy_median[i] / ocl_time_seconds
	#		dram_power = dram_energy_median[i] / ocl_time_seconds
	#		gpu_power = pkg_power - pp0_power - dram_power
	#		print(str(psys_power) + '\t' + str(pkg_power) + '\t' + str(pp0_power) + '\t' + str(dram_power) + '\t' + str(gpu_power), file=f, end='')
	#		print('', file=f)
		


def create_summary_all_ops(kernel_name, block_exp):
	if 'add' in kernel_name:
		kernel_name_add = kernel_name
		kernel_name_sub = kernel_name.replace('add', 'sub')
		kernel_name_mul = kernel_name.replace('add', 'mul')
		kernel_name_div = kernel_name.replace('add', 'div')
		kernel_name_mad = kernel_name.replace('add', 'mad')
		create_summary(kernel_name_add, block_exp)
		create_summary(kernel_name_sub, block_exp)
		create_summary(kernel_name_mul, block_exp)
		create_summary(kernel_name_div, block_exp)
		create_summary(kernel_name_mad, block_exp)
	else:
		print('Could not find \'add\' in kernel name.')
		sys.exit()


def create_summary_all_simd(kernel_name, block_exp):
	if 'scalar' in kernel_name:
		kernel_name_scalar = kernel_name
		kernel_name_vect2 = kernel_name.replace('scalar', 'vect2')
		kernel_name_vect4 = kernel_name.replace('scalar', 'vect4')
		kernel_name_vect8 = kernel_name.replace('scalar', 'vect8')
		kernel_name_vect16 = kernel_name.replace('scalar', 'vect16')
		create_summary(kernel_name_scalar, block_exp)
		create_summary(kernel_name_vect2, block_exp)
		create_summary(kernel_name_vect4, block_exp)
		create_summary(kernel_name_vect8, block_exp)
		create_summary(kernel_name_vect16, block_exp)
	else:
		print('Could not find \'scalar\' in kernel name.')
		sys.exit()


def create_summary_all_simd_all_ops(kernel_name, block_exp):
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
		create_summary(k, block_exp)



block_exp = 0
if len(sys.argv) > 3 and '--block_exp' in sys.argv:
	block_exp = sys.argv[sys.argv.index('--block_exp')+1]

if len(sys.argv) > 3 and '--all-ops' in sys.argv and '--all-simd' in sys.argv:
	create_summary_all_simd_all_ops(sys.argv[1], block_exp)
elif len(sys.argv) > 2 and '--all-ops' in sys.argv:
	create_summary_all_ops(sys.argv[1], block_exp)
elif len(sys.argv) > 2 and '--all-simd' in sys.argv:
	create_summary_all_simd(sys.argv[1], block_exp)
else:
	create_summary(sys.argv[1], block_exp)
