#! /bin/bash

if [ $# -lt 3 ]
then
	echo "Usage: run_repeat <number of repetitions> <type of kernel> <exponent for number of blocks> <sleep status>"
	echo "Available kernel types: flop mop power shm"
	echo "Sleep status: 1 for on, 0 for off, default is off"
	exit
fi


modprobe msr


# set cpu freq to max
CMD=$(cat /proc/cpuinfo | grep processor | wc -l)
NUM_CPUS=$(expr $CMD - 1)
for i in $(seq 0 $NUM_CPUS)
do
	echo "performance" > /sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor
done
echo "0" > /proc/sys/kernel/nmi_watchdog

# set gpu freq to max
intel_gpu_frequency -m


base=2
exp=$3

# to give time to lock computer
if [ $# -eq 4 ]
then
	if [ $4 -eq 1 ]
	then
		sleep 10
	fi
fi


if [[ $2 == "flop" ]]
then
	
	reps=$1
	for kernel in  "scalar_sp_add_priv_iter_1024_kernel" "vect2_sp_add_priv_iter_1024_kernel" "vect4_sp_add_priv_iter_1024_kernel" "vect8_sp_add_priv_iter_1024_kernel" "vect16_sp_add_priv_iter_1024_kernel"
	#"scalar_sp_add_priv_iter_1024_kernel" "vect2_sp_add_priv_iter_1024_kernel" "vect4_sp_add_priv_iter_1024_kernel" "vect8_sp_add_priv_iter_1024_kernel" "vect16_sp_add_priv_iter_1024_kernel" "scalar_sp_sub_priv_iter_1024_kernel" "vect2_sp_sub_priv_iter_1024_kernel" "vect4_sp_sub_priv_iter_1024_kernel" "vect8_sp_sub_priv_iter_1024_kernel" "vect16_sp_sub_priv_iter_1024_kernel" "scalar_sp_mul_priv_iter_1024_kernel" "vect2_sp_mul_priv_iter_1024_kernel" "vect4_sp_mul_priv_iter_1024_kernel" "vect8_sp_mul_priv_iter_1024_kernel" "vect16_sp_mul_priv_iter_1024_kernel" "scalar_sp_div_priv_iter_1024_kernel" "vect2_sp_div_priv_iter_1024_kernel" "vect4_sp_div_priv_iter_1024_kernel" "vect8_sp_div_priv_iter_1024_kernel" "vect16_sp_div_priv_iter_1024_kernel" "scalar_sp_mad_priv_iter_1024_kernel" "vect2_sp_mad_priv_iter_1024_kernel" "vect4_sp_mad_priv_iter_1024_kernel" "vect8_sp_mad_priv_iter_1024_kernel" "vect16_sp_mad_priv_iter_1024_kernel"
	#"scalar_dp_add_kernel" "scalar_dp_sub_kernel" "scalar_dp_mul_kernel" "scalar_dp_div_kernel" "scalar_dp_mad_kernel" "vect2_dp_add_kernel" "vect2_dp_sub_kernel" "vect2_dp_mul_kernel" "vect2_dp_div_kernel" "vect2_dp_mad_kernel" "vect4_dp_add_kernel" "vect4_dp_sub_kernel" "vect4_dp_mul_kernel" "vect4_dp_div_kernel" "vect4_dp_mad_kernel" "vect8_dp_add_kernel" "vect8_dp_sub_kernel" "vect8_dp_mul_kernel" "vect8_dp_div_kernel" "vect8_dp_mad_kernel" "vect16_dp_add_kernel" "vect16_dp_sub_kernel" "vect16_dp_mul_kernel" "vect16_dp_div_kernel" "vect16_dp_mad_kernel" 
	#"scalar_dp_add_iter_1024_kernel" "scalar_dp_sub_iter_1024_kernel" "scalar_dp_mul_iter_1024_kernel" "scalar_dp_div_iter_1024_kernel" "scalar_dp_mad_iter_1024_kernel" "vect2_dp_add_iter_1024_kernel" "vect2_dp_sub_iter_1024_kernel" "vect2_dp_mul_iter_1024_kernel" "vect2_dp_div_iter_1024_kernel" "vect2_dp_mad_iter_1024_kernel" "vect4_dp_add_iter_1024_kernel" "vect4_dp_sub_iter_1024_kernel" "vect4_dp_mul_iter_1024_kernel" "vect4_dp_div_iter_1024_kernel" "vect4_dp_mad_iter_1024_kernel" "vect8_dp_add_iter_1024_kernel" "vect8_dp_sub_iter_1024_kernel" "vect8_dp_mul_iter_1024_kernel" "vect8_dp_div_iter_1024_kernel" "vect8_dp_mad_iter_1024_kernel" "vect16_dp_add_iter_1024_kernel" "vect16_dp_sub_iter_1024_kernel" "vect16_dp_mul_iter_1024_kernel" "vect16_dp_div_iter_1024_kernel" "vect16_dp_mad_iter_1024_kernel"  "scalar_dp_add_iter_128_unroll_64_kernel" "scalar_dp_sub_iter_128_unroll_64_kernel" "scalar_dp_mul_iter_128_unroll_64_kernel" "scalar_dp_div_iter_128_unroll_64_kernel" "scalar_dp_mad_iter_128_unroll_64_kernel" "vect2_dp_add_iter_128_unroll_64_kernel"  "vect2_dp_sub_iter_128_unroll_64_kernel"  "vect2_dp_mul_iter_128_unroll_64_kernel"  "vect2_dp_div_iter_128_unroll_64_kernel"  "vect2_dp_mad_iter_128_unroll_64_kernel"  "vect4_dp_add_iter_128_unroll_64_kernel"  "vect4_dp_sub_iter_128_unroll_64_kernel"  "vect4_dp_mul_iter_128_unroll_64_kernel"  "vect4_dp_div_iter_128_unroll_64_kernel"  "vect4_dp_mad_iter_128_unroll_64_kernel"  "vect8_dp_add_iter_128_unroll_64_kernel"  "vect8_dp_sub_iter_128_unroll_64_kernel"  "vect8_dp_mul_iter_128_unroll_64_kernel"  "vect8_dp_div_iter_128_unroll_64_kernel"  "vect8_dp_mad_iter_128_unroll_64_kernel" "vect16_dp_add_iter_128_unroll_64_kernel" "vect16_dp_sub_iter_128_unroll_64_kernel" "vect16_dp_mul_iter_128_unroll_64_kernel" "vect16_dp_div_iter_128_unroll_64_kernel" "vect16_dp_mad_iter_128_unroll_64_kernel" 
	#"scalar_sp_add_kernel" "scalar_sp_sub_kernel" "scalar_sp_mul_kernel" "scalar_sp_div_kernel" "scalar_sp_mad_kernel" "vect2_sp_add_kernel" "vect2_sp_sub_kernel" "vect2_sp_mul_kernel" "vect2_sp_div_kernel" "vect2_sp_mad_kernel" "vect4_sp_add_kernel" "vect4_sp_sub_kernel" "vect4_sp_mul_kernel" "vect4_sp_div_kernel" "vect4_sp_mad_kernel" "vect8_sp_add_kernel" "vect8_sp_sub_kernel" "vect8_sp_mul_kernel" "vect8_sp_div_kernel" "vect8_sp_mad_kernel" "vect16_sp_add_kernel" "vect16_sp_sub_kernel" "vect16_sp_mul_kernel" "vect16_sp_div_kernel" "vect16_sp_mad_kernel" 
	#"scalar_dp_add_kernel" "scalar_dp_sub_kernel" "scalar_dp_mul_kernel" "scalar_dp_div_kernel" "scalar_dp_mad_kernel" "vect2_dp_add_kernel" "vect2_dp_sub_kernel" "vect2_dp_mul_kernel" "vect2_dp_div_kernel" "vect2_dp_mad_kernel" "vect4_dp_add_kernel" "vect4_dp_sub_kernel" "vect4_dp_mul_kernel" "vect4_dp_div_kernel" "vect4_dp_mad_kernel" "vect8_dp_add_kernel" "vect8_dp_sub_kernel" "vect8_dp_mul_kernel" "vect8_dp_div_kernel" "vect8_dp_mad_kernel" "vect16_dp_add_kernel" "vect16_dp_sub_kernel" "vect16_dp_mul_kernel" "vect16_dp_div_kernel" "vect16_dp_mad_kernel"
	#"scalar_sp_add_iter_8192_kernel" "scalar_sp_sub_iter_8192_kernel" "scalar_sp_mul_iter_8192_kernel" "scalar_sp_div_iter_8192_kernel" "scalar_sp_mad_iter_8192_kernel" "vect2_sp_add_iter_8192_kernel" "vect2_sp_sub_iter_8192_kernel" "vect2_sp_mul_iter_8192_kernel" "vect2_sp_div_iter_8192_kernel" "vect2_sp_mad_iter_8192_kernel" "vect4_sp_add_iter_8192_kernel" "vect4_sp_sub_iter_8192_kernel" "vect4_sp_mul_iter_8192_kernel" "vect4_sp_div_iter_8192_kernel" "vect4_sp_mad_iter_8192_kernel" "vect8_sp_add_iter_8192_kernel" "vect8_sp_sub_iter_8192_kernel" "vect8_sp_mul_iter_8192_kernel" "vect8_sp_div_iter_8192_kernel" "vect8_sp_mad_iter_8192_kernel" "vect16_sp_add_iter_8192_kernel" "vect16_sp_sub_iter_8192_kernel" "vect16_sp_mul_iter_8192_kernel" "vect16_sp_div_iter_8192_kernel" "vect16_sp_mad_iter_8192_kernel"
	#"scalar_sp_add_iter_1024_kernel" "scalar_sp_sub_iter_1024_kernel" "scalar_sp_mul_iter_1024_kernel" "scalar_sp_div_iter_1024_kernel" "scalar_sp_mad_iter_1024_kernel" "vect2_sp_add_iter_1024_kernel" "vect2_sp_sub_iter_1024_kernel" "vect2_sp_mul_iter_1024_kernel" "vect2_sp_div_iter_1024_kernel" "vect2_sp_mad_iter_1024_kernel" "vect4_sp_add_iter_1024_kernel" "vect4_sp_sub_iter_1024_kernel" "vect4_sp_mul_iter_1024_kernel" "vect4_sp_div_iter_1024_kernel" "vect4_sp_mad_iter_1024_kernel" "vect8_sp_add_iter_1024_kernel" "vect8_sp_sub_iter_1024_kernel" "vect8_sp_mul_iter_1024_kernel" "vect8_sp_div_iter_1024_kernel" "vect8_sp_mad_iter_1024_kernel" "vect16_sp_add_iter_1024_kernel" "vect16_sp_sub_iter_1024_kernel" "vect16_sp_mul_iter_1024_kernel" "vect16_sp_div_iter_1024_kernel" "vect16_sp_mad_iter_1024_kernel"
	#"scalar_dp_add_iter_1024_kernel" "scalar_dp_sub_iter_1024_kernel" "scalar_dp_mul_iter_1024_kernel" "scalar_dp_div_iter_1024_kernel" "scalar_dp_mad_iter_1024_kernel" "vect2_dp_add_iter_1024_kernel" "vect2_dp_sub_iter_1024_kernel" "vect2_dp_mul_iter_1024_kernel" "vect2_dp_div_iter_1024_kernel" "vect2_dp_mad_iter_1024_kernel" "vect4_dp_add_iter_1024_kernel" "vect4_dp_sub_iter_1024_kernel" "vect4_dp_mul_iter_1024_kernel" "vect4_dp_div_iter_1024_kernel" "vect4_dp_mad_iter_1024_kernel" "vect8_dp_add_iter_1024_kernel" "vect8_dp_sub_iter_1024_kernel" "vect8_dp_mul_iter_1024_kernel" "vect8_dp_div_iter_1024_kernel" "vect8_dp_mad_iter_1024_kernel" "vect16_dp_add_iter_1024_kernel" "vect16_dp_sub_iter_1024_kernel" "vect16_dp_mul_iter_1024_kernel" "vect16_dp_div_iter_1024_kernel" "vect16_dp_mad_iter_1024_kernel"
	#"scalar_dp_add_iter_8192_kernel" "scalar_dp_sub_iter_8192_kernel" "scalar_dp_mul_iter_8192_kernel" "scalar_dp_div_iter_8192_kernel" "scalar_dp_mad_iter_8192_kernel" "vect2_dp_add_iter_8192_kernel" "vect2_dp_sub_iter_8192_kernel" "vect2_dp_mul_iter_8192_kernel" "vect2_dp_div_iter_8192_kernel" "vect2_dp_mad_iter_8192_kernel" "vect4_dp_add_iter_8192_kernel" "vect4_dp_sub_iter_8192_kernel" "vect4_dp_mul_iter_8192_kernel" "vect4_dp_div_iter_8192_kernel" "vect4_dp_mad_iter_8192_kernel" "vect8_dp_add_iter_8192_kernel" "vect8_dp_sub_iter_8192_kernel" "vect8_dp_mul_iter_8192_kernel" "vect8_dp_div_iter_8192_kernel" "vect8_dp_mad_iter_8192_kernel" "vect16_dp_add_iter_8192_kernel" "vect16_dp_sub_iter_8192_kernel" "vect16_dp_mul_iter_8192_kernel" "vect16_dp_div_iter_8192_kernel" "vect16_dp_mad_iter_8192_kernel" 
	#"scalar_sp_add_iter_128_unroll_64_kernel" "scalar_sp_sub_iter_128_unroll_64_kernel" "scalar_sp_mul_iter_128_unroll_64_kernel" "scalar_sp_div_iter_128_unroll_64_kernel" "scalar_sp_mad_iter_128_unroll_64_kernel" "vect2_sp_add_iter_128_unroll_64_kernel"  "vect2_sp_sub_iter_128_unroll_64_kernel"  "vect2_sp_mul_iter_128_unroll_64_kernel"  "vect2_sp_div_iter_128_unroll_64_kernel"  "vect2_sp_mad_iter_128_unroll_64_kernel"  "vect4_sp_add_iter_128_unroll_64_kernel"  "vect4_sp_sub_iter_128_unroll_64_kernel"  "vect4_sp_mul_iter_128_unroll_64_kernel"  "vect4_sp_div_iter_128_unroll_64_kernel"  "vect4_sp_mad_iter_128_unroll_64_kernel"  "vect8_sp_add_iter_128_unroll_64_kernel"  "vect8_sp_sub_iter_128_unroll_64_kernel"  "vect8_sp_mul_iter_128_unroll_64_kernel"  "vect8_sp_div_iter_128_unroll_64_kernel"  "vect8_sp_mad_iter_128_unroll_64_kernel" "vect16_sp_add_iter_128_unroll_64_kernel" "vect16_sp_sub_iter_128_unroll_64_kernel" "vect16_sp_mul_iter_128_unroll_64_kernel" "vect16_sp_div_iter_128_unroll_64_kernel" "vect16_sp_mad_iter_128_unroll_64_kernel" 
	#"scalar_dp_add_iter_128_unroll_64_kernel" "scalar_dp_sub_iter_128_unroll_64_kernel" "scalar_dp_mul_iter_128_unroll_64_kernel" "scalar_dp_div_iter_128_unroll_64_kernel" "scalar_dp_mad_iter_128_unroll_64_kernel" "vect2_dp_add_iter_128_unroll_64_kernel"  "vect2_dp_sub_iter_128_unroll_64_kernel"  "vect2_dp_mul_iter_128_unroll_64_kernel"  "vect2_dp_div_iter_128_unroll_64_kernel"  "vect2_dp_mad_iter_128_unroll_64_kernel"  "vect4_dp_add_iter_128_unroll_64_kernel"  "vect4_dp_sub_iter_128_unroll_64_kernel"  "vect4_dp_mul_iter_128_unroll_64_kernel"  "vect4_dp_div_iter_128_unroll_64_kernel"  "vect4_dp_mad_iter_128_unroll_64_kernel"  "vect8_dp_add_iter_128_unroll_64_kernel"  "vect8_dp_sub_iter_128_unroll_64_kernel"  "vect8_dp_mul_iter_128_unroll_64_kernel"  "vect8_dp_div_iter_128_unroll_64_kernel"  "vect8_dp_mad_iter_128_unroll_64_kernel" "vect16_dp_add_iter_128_unroll_64_kernel" "vect16_dp_sub_iter_128_unroll_64_kernel" "vect16_dp_mul_iter_128_unroll_64_kernel" "vect16_dp_div_iter_128_unroll_64_kernel" "vect16_dp_mad_iter_128_unroll_64_kernel" 
	#"scalar_sp_add_priv_iter_8192_kernel" "scalar_sp_sub_priv_iter_8192_kernel" "scalar_sp_mul_priv_iter_8192_kernel" "scalar_sp_div_priv_iter_8192_kernel" "scalar_sp_mad_priv_iter_8192_kernel" "vect2_sp_add_priv_iter_8192_kernel"  "vect2_sp_sub_priv_iter_8192_kernel"  "vect2_sp_mul_priv_iter_8192_kernel""vect2_sp_div_priv_iter_8192_kernel"  "vect2_sp_mad_priv_iter_8192_kernel" "vect4_sp_add_priv_iter_8192_kernel"  "vect4_sp_sub_priv_iter_8192_kernel"  "vect4_sp_mul_priv_iter_8192_kernel"  "vect4_sp_div_priv_iter_8192_kernel"  "vect4_sp_mad_priv_iter_8192_kernel" "vect8_sp_add_priv_iter_8192_kernel"  "vect8_sp_sub_priv_iter_8192_kernel"  "vect8_sp_mul_priv_iter_8192_kernel"  "vect8_sp_div_priv_iter_8192_kernel"  "vect8_sp_mad_priv_iter_8192_kernel" "vect16_sp_add_priv_iter_8192_kernel" "vect16_sp_sub_priv_iter_8192_kernel" "vect16_sp_mul_priv_iter_8192_kernel" "vect16_sp_div_priv_iter_8192_kernel" "vect16_sp_mad_priv_iter_8192_kernel" "scalar_dp_add_priv_iter_8192_kernel" "scalar_dp_sub_priv_iter_8192_kernel" "scalar_dp_mul_priv_iter_8192_kernel" "scalar_dp_div_priv_iter_8192_kernel" "scalar_dp_mad_priv_iter_8192_kernel" "vect2_dp_add_priv_iter_8192_kernel"  "vect2_dp_sub_priv_iter_8192_kernel"  "vect2_dp_mul_priv_iter_8192_kernel"  "vect2_dp_div_priv_iter_8192_kernel"  "vect2_dp_mad_priv_iter_8192_kernel" "vect4_dp_add_priv_iter_8192_kernel"  "vect4_dp_sub_priv_iter_8192_kernel"  "vect4_dp_mul_priv_iter_8192_kernel"  "vect4_dp_div_priv_iter_8192_kernel"  "vect4_dp_mad_priv_iter_8192_kernel" "vect8_dp_add_priv_iter_8192_kernel"  "vect8_dp_sub_priv_iter_8192_kernel"  "vect8_dp_mul_priv_iter_8192_kernel"  "vect8_dp_div_priv_iter_8192_kernel"  "vect8_dp_mad_priv_iter_8192_kernel" "vect16_dp_add_priv_iter_8192_kernel" "vect16_dp_sub_priv_iter_8192_kernel" "vect16_dp_mul_priv_iter_8192_kernel" "vect16_dp_div_priv_iter_8192_kernel" "vect16_dp_mad_priv_iter_8192_kernel"
	#"scalar_sp_add_priv_iter_8192_iter_8192_kernel" "scalar_sp_sub_priv_iter_8192_iter_8192_kernel" "scalar_sp_mul_priv_iter_8192_iter_8192_kernel" "scalar_sp_div_priv_iter_8192_iter_8192_kernel" "scalar_sp_mad_priv_iter_8192_iter_8192_kernel" "vect2_sp_add_priv_iter_8192_iter_8192_kernel" "vect2_sp_sub_priv_iter_8192_iter_8192_kernel" "vect2_sp_mul_priv_iter_8192_iter_8192_kernel" "vect2_sp_div_priv_iter_8192_iter_8192_kernel"  "vect2_sp_mad_priv_iter_8192_iter_8192_kernel" "vect4_sp_add_priv_iter_8192_iter_8192_kernel"  "vect4_sp_sub_priv_iter_8192_iter_8192_kernel"  "vect4_sp_mul_priv_iter_8192_iter_8192_kernel"  "vect4_sp_div_priv_iter_8192_iter_8192_kernel"  "vect4_sp_mad_priv_iter_8192_iter_8192_kernel" "vect8_sp_add_priv_iter_8192_iter_8192_kernel"  "vect8_sp_sub_priv_iter_8192_iter_8192_kernel"  "vect8_sp_mul_priv_iter_8192_iter_8192_kernel"  "vect8_sp_div_priv_iter_8192_iter_8192_kernel"  "vect8_sp_mad_priv_iter_8192_iter_8192_kernel" "vect16_sp_add_priv_iter_8192_iter_8192_kernel" "vect16_sp_sub_priv_iter_8192_iter_8192_kernel" "vect16_sp_mul_priv_iter_8192_iter_8192_kernel" "vect16_sp_div_priv_iter_8192_iter_8192_kernel" "vect16_sp_mad_priv_iter_8192_iter_8192_kernel" "scalar_dp_add_priv_iter_8192_iter_8192_kernel" "scalar_dp_sub_priv_iter_8192_iter_8192_kernel" "scalar_dp_mul_priv_iter_8192_iter_8192_kernel" "scalar_dp_div_priv_iter_8192_iter_8192_kernel" "scalar_dp_mad_priv_iter_8192_iter_8192_kernel" "vect2_dp_add_priv_iter_8192_iter_8192_kernel"  "vect2_dp_sub_priv_iter_8192_iter_8192_kernel"  "vect2_dp_mul_priv_iter_8192_iter_8192_kernel"  "vect2_dp_div_priv_iter_8192_iter_8192_kernel"  "vect2_dp_mad_priv_iter_8192_iter_8192_kernel" "vect4_dp_add_priv_iter_8192_iter_8192_kernel"  "vect4_dp_sub_priv_iter_8192_iter_8192_kernel"  "vect4_dp_mul_priv_iter_8192_iter_8192_kernel"  "vect4_dp_div_priv_iter_8192_iter_8192_kernel"  "vect4_dp_mad_priv_iter_8192_iter_8192_kernel" "vect8_dp_add_priv_iter_8192_iter_8192_kernel"  "vect8_dp_sub_priv_iter_8192_iter_8192_kernel"  "vect8_dp_mul_priv_iter_8192_iter_8192_kernel"  "vect8_dp_div_priv_iter_8192_iter_8192_kernel"  "vect8_dp_mad_priv_iter_8192_iter_8192_kernel" "vect16_dp_add_priv_iter_8192_iter_8192_kernel" "vect16_dp_sub_priv_iter_8192_iter_8192_kernel" "vect16_dp_mul_priv_iter_8192_iter_8192_kernel" "vect16_dp_div_priv_iter_8192_iter_8192_kernel" "vect16_dp_mad_priv_iter_8192_iter_8192_kernel"
	#"vect2_sp_mul_priv_iter_8192_iter_8192_args_kernel""vect2_sp_div_priv_iter_8192_iter_8192_args_kernel"  "vect2_sp_mad_priv_iter_8192_iter_8192_args_kernel" "vect4_sp_add_priv_iter_8192_iter_8192_args_kernel"  "vect4_sp_sub_priv_iter_8192_iter_8192_args_kernel"  "vect4_sp_mul_priv_iter_8192_iter_8192_args_kernel"  "vect4_sp_div_priv_iter_8192_iter_8192_args_kernel"  "vect4_sp_mad_priv_iter_8192_iter_8192_args_kernel" "vect8_sp_add_priv_iter_8192_iter_8192_args_kernel"  "vect8_sp_sub_priv_iter_8192_iter_8192_args_kernel"  "vect8_sp_mul_priv_iter_8192_iter_8192_args_kernel"  "vect8_sp_div_priv_iter_8192_iter_8192_args_kernel"  "vect8_sp_mad_priv_iter_8192_iter_8192_args_kernel" "vect16_sp_add_priv_iter_8192_iter_8192_args_kernel" "vect16_sp_sub_priv_iter_8192_iter_8192_args_kernel" "vect16_sp_mul_priv_iter_8192_iter_8192_args_kernel" "vect16_sp_div_priv_iter_8192_iter_8192_args_kernel" "vect16_sp_mad_priv_iter_8192_iter_8192_args_kernel" "scalar_dp_add_priv_iter_8192_iter_8192_args_kernel" "scalar_dp_sub_priv_iter_8192_iter_8192_args_kernel" "scalar_dp_mul_priv_iter_8192_iter_8192_args_kernel" "scalar_dp_div_priv_iter_8192_iter_8192_args_kernel" "scalar_dp_mad_priv_iter_8192_iter_8192_args_kernel" "vect2_dp_add_priv_iter_8192_iter_8192_args_kernel"  "vect2_dp_sub_priv_iter_8192_iter_8192_args_kernel"  "vect2_dp_mul_priv_iter_8192_iter_8192_args_kernel"  "vect2_dp_div_priv_iter_8192_iter_8192_args_kernel"  "vect2_dp_mad_priv_iter_8192_iter_8192_args_kernel" "vect4_dp_add_priv_iter_8192_iter_8192_args_kernel"  "vect4_dp_sub_priv_iter_8192_iter_8192_args_kernel"  "vect4_dp_mul_priv_iter_8192_iter_8192_args_kernel"  "vect4_dp_div_priv_iter_8192_iter_8192_args_kernel"  "vect4_dp_mad_priv_iter_8192_iter_8192_args_kernel" "vect8_dp_add_priv_iter_8192_iter_8192_args_kernel"  "vect8_dp_sub_priv_iter_8192_iter_8192_args_kernel"  "vect8_dp_mul_priv_iter_8192_iter_8192_args_kernel"  "vect8_dp_div_priv_iter_8192_iter_8192_args_kernel"  "vect8_dp_mad_priv_iter_8192_iter_8192_args_kernel" "vect16_dp_add_priv_iter_8192_iter_8192_args_kernel" "vect16_dp_sub_priv_iter_8192_iter_8192_args_kernel" "vect16_dp_mul_priv_iter_8192_iter_8192_args_kernel" "vect16_dp_div_priv_iter_8192_iter_8192_args_kernel" "vect16_dp_mad_priv_iter_8192_iter_8192_args_kernel"
	
	do
		for i in `seq 1 $reps`
		do
			echo "Running rep $i of $kernel"
			for j in `seq 0 8`
			do
				echo "    # of blocks: 1 threads per block: $(($base**$j))"
				nice -n -20 ./read_gpu_counters -d -c $kernel --blocks 1 --tpb $(($base**$j)) > /dev/null 2>> errors.log
			done
			for j in `seq 2 32`
			do
				echo "    # of blocks: $j threads per block: 256"
				nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $j --tpb 256 > /dev/null 2>> errors.log
			done
			
			if [ $exp -gt 5 ]
			then
				for j in `seq 6 $exp`
				do
					echo "    # of blocks: $(($base**$j)) threads per block: 256"
					nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $(($base**$j)) --tpb 256 > /dev/null 2>> errors.log
				done
			fi
		done
	done
	
fi


if [[ $2 == "mop" ]]
then
	
	reps=$1
	for kernel in "scalar_sp_load_store_iter_1024_kernel" "vect2_sp_load_store_iter_1024_kernel" "vect4_sp_load_store_iter_1024_kernel" "vect8_sp_load_store_iter_1024_kernel" "vect16_sp_load_store_iter_1024_kernel" "scalar_sp_load_iter_1024_kernel" "vect2_sp_load_iter_1024_kernel" "vect4_sp_load_iter_1024_kernel" "vect8_sp_load_iter_1024_kernel" "vect16_sp_load_iter_1024_kernel"
	#"scalar_sp_load_store_iter_1024_kernel" "vect2_sp_load_store_iter_1024_kernel" "vect4_sp_load_store_iter_1024_kernel" "vect8_sp_load_store_iter_1024_kernel" "vect16_sp_load_store_iter_1024_kernel"
	#"scalar_sp_load_store_kernel" "vect2_sp_load_store_kernel" "vect4_sp_load_store_kernel" "vect8_sp_load_store_kernel" "vect16_sp_load_store_kernel"
	#"scalar_dp_load_store_kernel" "vect2_dp_load_store_kernel" "vect4_dp_load_store_kernel" "vect8_dp_load_store_kernel" "vect16_dp_load_store_kernel"
	#"scalar_sp_load_store_iter_1024_kernel" "vect2_sp_load_store_iter_1024_kernel" "vect4_sp_load_store_iter_1024_kernel" "vect8_sp_load_store_iter_1024_kernel" "vect16_sp_load_store_iter_1024_kernel"
	#"scalar_dp_load_store_iter_1024_kernel" "vect2_dp_load_store_iter_1024_kernel" "vect4_dp_load_store_iter_1024_kernel" "vect8_dp_load_store_iter_1024_kernel" "vect16_dp_load_store_iter_1024_kernel"
	do
		for i in `seq 1 $reps`
		do
			echo "Running rep $i of $kernel"
			for j in `seq 0 8`
			do
				echo "    # of blocks: 1 threads per block: $(($base**$j))"
				nice -n -20 ./read_gpu_counters -d -c $kernel --blocks 1 --tpb $(($base**$j)) > /dev/null 2>> errors.log
			done
			for j in `seq 2 32`
			do
				echo "    # of blocks: $j threads per block: 256"
				nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $j --tpb 256 > /dev/null 2>> errors.log
				#echo "    # of blocks: $j threads per block: 32"
				#nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $j --tpb 32 > /dev/null 2>> errors.log
			done
			
			if [ $exp -gt 5 ]
			then
				for j in `seq 6 $exp`
				do
					echo "    # of blocks: $(($base**$j)) threads per block: 256"
					nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $(($base**$j)) --tpb 256 > /dev/null 2>> errors.log
					#echo "    # of blocks: $(($base**$j)) threads per block: 32"
					#nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $(($base**$j)) --tpb 32 > /dev/null 2>> errors.log
				done
			fi
		done
	done
	
fi



if [[ $2 == "power" ]]
then
	
	reps=$1
	for kernel in  "scalar_sp_mad_power_kernel" "vect2_sp_mad_power_kernel" "vect4_sp_mad_power_kernel" "vect8_sp_mad_power_kernel" "vect16_sp_mad_power_kernel"
	#"scalar_sp_mad_power_kernel" "vect2_sp_mad_power_kernel" "vect4_sp_mad_power_kernel" "vect8_sp_mad_power_kernel" "vect16_sp_mad_power_kernel"
	#"scalar_sp_add_power_kernel" "scalar_sp_sub_power_kernel" "scalar_sp_mul_power_kernel" "scalar_sp_div_power_kernel" "scalar_sp_mad_power_kernel" "vect2_sp_add_power_kernel" "vect2_sp_sub_power_kernel" "vect2_sp_mul_power_kernel" "vect2_sp_div_power_kernel" "vect2_sp_mad_power_kernel" "vect4_sp_add_power_kernel" "vect4_sp_sub_power_kernel" "vect4_sp_mul_power_kernel" "vect4_sp_div_power_kernel" "vect4_sp_mad_power_kernel" "vect8_sp_add_power_kernel" "vect8_sp_sub_power_kernel" "vect8_sp_mul_power_kernel" "vect8_sp_div_power_kernel" "vect8_sp_mad_power_kernel" "vect16_sp_add_power_kernel" "vect16_sp_sub_power_kernel" "vect16_sp_mul_power_kernel" "vect16_sp_div_power_kernel" "vect16_sp_mad_power_kernel"
	#"scalar_sp_add_power_kernel" "scalar_sp_sub_power_kernel" "scalar_sp_mul_power_kernel" "scalar_sp_div_power_kernel" "scalar_sp_mad_power_kernel"
	#"vect2_sp_add_power_kernel" "vect2_sp_sub_power_kernel" "vect2_sp_mul_power_kernel" "vect2_sp_div_power_kernel" "vect2_sp_mad_power_kernel"
	#"vect4_sp_add_power_kernel" "vect4_sp_sub_power_kernel" "vect4_sp_mul_power_kernel" "vect4_sp_div_power_kernel" "vect4_sp_mad_power_kernel"
	#"vect8_sp_add_power_kernel" "vect8_sp_sub_power_kernel" "vect8_sp_mul_power_kernel" "vect8_sp_div_power_kernel" "vect8_sp_mad_power_kernel"
	#"vect16_sp_add_power_kernel" "vect16_sp_sub_power_kernel" "vect16_sp_mul_power_kernel" "vect16_sp_div_power_kernel" "vect16_sp_mad_power_kernel"
	do
		for i in `seq 1 $reps`
		do
			echo "Running rep $i of $kernel"
			for j in `seq 0 8`
			do
				echo "    # of blocks: 1 threads per block: $(($base**$j))"
				nice -n -20 ./read_gpu_counters -d -c $kernel --blocks 1 --tpb $(($base**$j)) --power-smoothing > /dev/null 2>> errors.log
				#nice -n -20 ./read_gpu_counters -d -c $kernel --blocks 1 --tpb $(($base**$j)) > /dev/null 2>> errors.log
			done
			for j in `seq 2 32`
			do
				echo "    # of blocks: $j threads per block: 256"
				nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $j --tpb 256 --power-smoothing > /dev/null 2>> errors.log
				#nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $j --tpb 256 > /dev/null 2>> errors.log
			done
			
			if [ $exp -gt 5 ]
			then
				for j in `seq 6 $exp`
				do
					echo "    # of blocks: $(($base**$j)) threads per block: 256"
					nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $(($base**$j)) --tpb 256 --power-smoothing > /dev/null 2>> errors.log
					#nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $(($base**$j)) --tpb 256 > /dev/null 2>> errors.log
				done
			fi
		done
	done
	
fi


if [[ $2 == "shm" ]]
then
	
	reps=$1
	for kernel in "scalar_sp_load_store_shm_iter_1024_kernel" "vect2_sp_load_store_shm_iter_1024_kernel" "vect4_sp_load_store_shm_iter_1024_kernel" "vect8_sp_load_store_shm_iter_1024_kernel" "vect16_sp_load_store_shm_iter_1024_kernel" 
	#"scalar_sp_load_store_shm_kernel" "vect2_sp_load_store_shm_kernel" "vect4_sp_load_store_shm_kernel" "vect8_sp_load_store_shm_kernel" "vect16_sp_load_store_shm_kernel" 
	#"scalar_sp_load_store_shm_iter_1024_kernel" "vect2_sp_load_store_shm_iter_1024_kernel" "vect4_sp_load_store_shm_iter_1024_kernel" "vect8_sp_load_store_shm_iter_1024_kernel" "vect16_sp_load_store_shm_iter_1024_kernel" 
	#"scalar_sp_load_store_shm_iter_81920_kernel" "vect2_sp_load_store_shm_iter_81920_kernel" "vect4_sp_load_store_shm_iter_81920_kernel" "vect8_sp_load_store_shm_iter_81920_kernel" "vect16_sp_load_store_shm_iter_81920_kernel" 
	#"scalar_sp_load_store_shm_iter_1024_kernel" "vect2_sp_load_store_shm_iter_1024_kernel" "vect4_sp_load_store_shm_iter_1024_kernel" "vect8_sp_load_store_shm_iter_1024_kernel" "vect16_sp_load_store_shm_iter_1024_kernel" 
	do
		for i in `seq 1 $reps`
		do
			echo "Running rep $i of $kernel"
			for j in `seq 0 8`
			do
				echo "    # of blocks: 1 threads per block: $(($base**$j))"
				nice -n -20 ./read_gpu_counters -d -c $kernel --blocks 1 --tpb $(($base**$j)) > /dev/null 2>> errors.log
			done
			for j in `seq 2 32`
			do
				echo "    # of blocks: $j threads per block: 256"
				nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $j --tpb 256 > /dev/null 2>> errors.log
			done
			
			if [ $exp -gt 5 ]
			then
				for j in `seq 6 $exp`
				do
					echo "    # of blocks: $(($base**$j)) threads per block: 256"
					nice -n -20 ./read_gpu_counters -d -c $kernel --blocks $(($base**$j)) --tpb 256 > /dev/null 2>> errors.log
				done
			fi
		done
	done
	
fi

