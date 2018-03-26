#! /user/bin/env python

import sys
import os

filename = sys.argv[1]

if '_add_' not in filename:
	print('arg must contain \'_add_\'')
	sys.exit()

filename_add_ = filename
filename_sub_ = filename.replace('_add_', '_sub_')
filename_mul_ = filename.replace('_add_', '_mul_')
filename_div_ = filename.replace('_add_', '_div_')
filename_mad_ = filename.replace('_add_', '_mad_')

os.system('python csv2copy-pastable_all-threads.py ' + filename_add_)
os.system('python csv2copy-pastable_all-threads.py ' + filename_sub_)
os.system('python csv2copy-pastable_all-threads.py ' + filename_mul_)
os.system('python csv2copy-pastable_all-threads.py ' + filename_div_)
os.system('python csv2copy-pastable_all-threads.py ' + filename_mad_)

