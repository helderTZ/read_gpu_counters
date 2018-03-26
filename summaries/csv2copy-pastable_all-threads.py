#! /user/bin/env python

import sys
import os

filename = sys.argv[1]
filename_1_ = filename
filename_7_ = filename.replace('_1_', '_7_')
filename_56_ = filename.replace('_1_', '_56_')
filename_168_ = filename.replace('_1_', '_168_')
filename_1680_ = filename.replace('_1_', '_1680_')
filename_16800_ = filename.replace('_1_', '_16800_')
filename_168000_ = filename.replace('_1_', '_168000_')
num_tab_sep = 8

os.system('python csv2copy-pastable.py ' + filename_1_)
os.system('python csv2copy-pastable.py ' + filename_7_)
os.system('python csv2copy-pastable.py ' + filename_56_)
os.system('python csv2copy-pastable.py ' + filename_168_)
os.system('python csv2copy-pastable.py ' + filename_1680_)
os.system('python csv2copy-pastable.py ' + filename_16800_)
os.system('python csv2copy-pastable.py ' + filename_168000_)

file_1_ = open(filename_1_[:-5] + '_cpable.txt', 'r')
file_7_ = open(filename_7_[:-5] + '_cpable.txt', 'r')
file_56_ = open(filename_56_[:-5] + '_cpable.txt', 'r')
file_168_ = open(filename_168_[:-5] + '_cpable.txt', 'r')
file_1680_ = open(filename_1680_[:-5] + '_cpable.txt', 'r')
file_16800_ = open(filename_16800_[:-5] + '_cpable.txt', 'r')
file_168000_ = open(filename_168000_[:-5] + '_cpable.txt', 'r')

with open(filename_1_[:-5].replace('_1_thread', '_all-threads') + '_cpable.txt', 'w') as f:
	lines_1_ = file_1_.readlines()
	lines_7_ = file_7_.readlines()
	lines_56_ = file_56_.readlines()
	lines_168_ = file_168_.readlines()
	lines_1680_ = file_1680_.readlines()
	lines_16800_ = file_16800_.readlines()
	lines_168000_ = file_168000_.readlines()
	for i in range(len(lines_1_)):
		print(lines_1_[i][:-1] + '\t'*num_tab_sep + lines_7_[i][:-1] + '\t'*num_tab_sep + lines_56_[i][:-1] +  '\t'*num_tab_sep + lines_168_[i][:-1] + '\t'*num_tab_sep + lines_1680_[i][:-1] + '\t'*num_tab_sep + lines_16800_[i][:-1] + '\t'*num_tab_sep + lines_168000_[i][:-1], file=f)

file_1_.close()
file_7_.close()
file_56_.close()
file_168_.close()
file_1680_.close()
file_16800_.close()
file_168000_.close()

os.remove(filename_1_[:-5] + '_cpable.txt')
os.remove(filename_7_[:-5] + '_cpable.txt')
os.remove(filename_56_[:-5] + '_cpable.txt')
os.remove(filename_168_[:-5] + '_cpable.txt')
os.remove(filename_1680_[:-5] + '_cpable.txt')
os.remove(filename_16800_[:-5] + '_cpable.txt')
os.remove(filename_168000_[:-5] + '_cpable.txt')
