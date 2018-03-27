# read_gpu_counters

Reads Intel integrated GPU OA counters. Comes with a few OpenCL kernels as mini benchmarks. 
Closely follows intel-gpu-tools method to read counters. Uses some libraries from intel-gpu-tools.

Difference between version 4 and 3
	change local (work-group size)
	change loop kernels # of iterations, from 10000 to 8192 to match the unroll ones (128 iter * 64 unroll)
	change config to EU_PERF_CNT_CTL, now read each EU separately
	change flop kernels to receive two args, *a and *b

Difference between version 5 and 4
	arg stress-level deprecated, now accepts number of blocks and threads per block as args
	naming of results file changed slightly
	errors now print to stderr

Difference between version 6 and 5
	print_report now prints ocl time and papi values

Difference between version 7 and 5
	results now have OCL_TIMER column and 4 PAPI_VALUES columns
	Added folder 'plots' where all gnuplot scripts, csv files with the data and the svg plots will be
	results have been reset

Difference between version 8 and 7
	Vector kernels seemed to be serializing, so added __atribute__((vec_type_hint()))
	This implied a reset of the results
	Added argument to run mads with -cl-mad-enable
	Made changes to shared memory kernels
	Added '--quiet' option
	read_counters->run_kernel->read_counters now in a loop for smoothing (controlled via arg)
	Power kernels now support '--power-smoothing' which is basically repeating the kernels a bunch of times (10 times) and doing the median of the power results
		support for the regulars counters still to come

Difference between version 9 and 8
	Added '--power-smoothing' support for counters, i.e., medians (not fully tested yet, use with caution)
		Code is commented for now, bug with free, and not strictly necessary to implement because the counters actually don't deviate too much (like power)

Difference between version 10 and 9
	Added '--external-app' option: will use system() to launch an application instead of a predefined kernel
		Only implemented for RPC as of yet, and a bit buggy
	Now lets users input their own counters, without the need to change the macro COUNTERS_CONFING and recompile
