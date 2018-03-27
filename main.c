
#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <CL/cl.h>
#include "errors.h"

#include "igt.h"
#include "drm.h"
#include "read_gpu_counters.h"
#include "platform.h"
#include "kernel_builder.h"

#include <sched.h>


// support for double-precision floating point in OpenCL
#pragma OPENCL EXTENSION cl_khr_fp64 : enable


#define SIZE 168
#define TOTAL_THREADS (256*128*256) 


char kernel_choice[50] = "";
int number_available_flop_kernels = 350;
int number_available_mop_kernels = 23;
int number_available_power_kernels = 50;
int number_available_shared_mem_kernels = 15;
char *available_flop_kernels[] = {
	"scalar_sp_add_kernel", "scalar_sp_sub_kernel", "scalar_sp_mul_kernel", "scalar_sp_div_kernel", "scalar_sp_mad_kernel", 
	"vect2_sp_add_kernel",  "vect2_sp_sub_kernel",  "vect2_sp_mul_kernel",  "vect2_sp_div_kernel",  "vect2_sp_mad_kernel", 
	"vect4_sp_add_kernel",  "vect4_sp_sub_kernel",  "vect4_sp_mul_kernel",  "vect4_sp_div_kernel",  "vect4_sp_mad_kernel", 
	"vect8_sp_add_kernel",  "vect8_sp_sub_kernel",  "vect8_sp_mul_kernel",  "vect8_sp_div_kernel",  "vect8_sp_mad_kernel", 
	"vect16_sp_add_kernel", "vect16_sp_sub_kernel", "vect16_sp_mul_kernel", "vect16_sp_div_kernel", "vect16_sp_mad_kernel", 
	"scalar_dp_add_kernel", "scalar_dp_sub_kernel", "scalar_dp_mul_kernel", "scalar_dp_div_kernel", "scalar_dp_mad_kernel", 
	"vect2_dp_add_kernel",  "vect2_dp_sub_kernel",  "vect2_dp_mul_kernel",  "vect2_dp_div_kernel",  "vect2_dp_mad_kernel", 
	"vect4_dp_add_kernel",  "vect4_dp_sub_kernel",  "vect4_dp_mul_kernel",  "vect4_dp_div_kernel",  "vect4_dp_mad_kernel", 
	"vect8_dp_add_kernel",  "vect8_dp_sub_kernel",  "vect8_dp_mul_kernel",  "vect8_dp_div_kernel",  "vect8_dp_mad_kernel", 
	"vect16_dp_add_kernel", "vect16_dp_sub_kernel", "vect16_dp_mul_kernel", "vect16_dp_div_kernel", "vect16_dp_mad_kernel", 
	"scalar_sp_add_iter_8192_kernel", "scalar_sp_sub_iter_8192_kernel", "scalar_sp_mul_iter_8192_kernel", "scalar_sp_div_iter_8192_kernel", "scalar_sp_mad_iter_8192_kernel", 
	"vect2_sp_add_iter_8192_kernel",  "vect2_sp_sub_iter_8192_kernel",  "vect2_sp_mul_iter_8192_kernel",  "vect2_sp_div_iter_8192_kernel",  "vect2_sp_mad_iter_8192_kernel", 
	"vect4_sp_add_iter_8192_kernel",  "vect4_sp_sub_iter_8192_kernel",  "vect4_sp_mul_iter_8192_kernel",  "vect4_sp_div_iter_8192_kernel",  "vect4_sp_mad_iter_8192_kernel", 
	"vect8_sp_add_iter_8192_kernel",  "vect8_sp_sub_iter_8192_kernel",  "vect8_sp_mul_iter_8192_kernel",  "vect8_sp_div_iter_8192_kernel",  "vect8_sp_mad_iter_8192_kernel", 
	"vect16_sp_add_iter_8192_kernel", "vect16_sp_sub_iter_8192_kernel", "vect16_sp_mul_iter_8192_kernel", "vect16_sp_div_iter_8192_kernel", "vect16_sp_mad_iter_8192_kernel", 
	"scalar_dp_add_iter_8192_kernel", "scalar_dp_sub_iter_8192_kernel", "scalar_dp_mul_iter_8192_kernel", "scalar_dp_div_iter_8192_kernel", "scalar_dp_mad_iter_8192_kernel", 
	"vect2_dp_add_iter_8192_kernel",  "vect2_dp_sub_iter_8192_kernel",  "vect2_dp_mul_iter_8192_kernel",  "vect2_dp_div_iter_8192_kernel",  "vect2_dp_mad_iter_8192_kernel", 
	"vect4_dp_add_iter_8192_kernel",  "vect4_dp_sub_iter_8192_kernel",  "vect4_dp_mul_iter_8192_kernel",  "vect4_dp_div_iter_8192_kernel",  "vect4_dp_mad_iter_8192_kernel", 
	"vect8_dp_add_iter_8192_kernel",  "vect8_dp_sub_iter_8192_kernel",  "vect8_dp_mul_iter_8192_kernel",  "vect8_dp_div_iter_8192_kernel",  "vect8_dp_mad_iter_8192_kernel", 
	"vect16_dp_add_iter_8192_kernel", "vect16_dp_sub_iter_8192_kernel", "vect16_dp_mul_iter_8192_kernel", "vect16_dp_div_iter_8192_kernel", "vect16_dp_mad_iter_8192_kernel", 
	"scalar_sp_add_iter_1024_kernel", "scalar_sp_sub_iter_1024_kernel", "scalar_sp_mul_iter_1024_kernel", "scalar_sp_div_iter_1024_kernel", "scalar_sp_mad_iter_1024_kernel", 
	"vect2_sp_add_iter_1024_kernel",  "vect2_sp_sub_iter_1024_kernel",  "vect2_sp_mul_iter_1024_kernel",  "vect2_sp_div_iter_1024_kernel",  "vect2_sp_mad_iter_1024_kernel", 
	"vect4_sp_add_iter_1024_kernel",  "vect4_sp_sub_iter_1024_kernel",  "vect4_sp_mul_iter_1024_kernel",  "vect4_sp_div_iter_1024_kernel",  "vect4_sp_mad_iter_1024_kernel", 
	"vect8_sp_add_iter_1024_kernel",  "vect8_sp_sub_iter_1024_kernel",  "vect8_sp_mul_iter_1024_kernel",  "vect8_sp_div_iter_1024_kernel",  "vect8_sp_mad_iter_1024_kernel", 
	"vect16_sp_add_iter_1024_kernel", "vect16_sp_sub_iter_1024_kernel", "vect16_sp_mul_iter_1024_kernel", "vect16_sp_div_iter_1024_kernel", "vect16_sp_mad_iter_1024_kernel", 
	"scalar_dp_add_iter_1024_kernel", "scalar_dp_sub_iter_1024_kernel", "scalar_dp_mul_iter_1024_kernel", "scalar_dp_div_iter_1024_kernel", "scalar_dp_mad_iter_1024_kernel", 
	"vect2_dp_add_iter_1024_kernel",  "vect2_dp_sub_iter_1024_kernel",  "vect2_dp_mul_iter_1024_kernel",  "vect2_dp_div_iter_1024_kernel",  "vect2_dp_mad_iter_1024_kernel", 
	"vect4_dp_add_iter_1024_kernel",  "vect4_dp_sub_iter_1024_kernel",  "vect4_dp_mul_iter_1024_kernel",  "vect4_dp_div_iter_1024_kernel",  "vect4_dp_mad_iter_1024_kernel", 
	"vect8_dp_add_iter_1024_kernel",  "vect8_dp_sub_iter_1024_kernel",  "vect8_dp_mul_iter_1024_kernel",  "vect8_dp_div_iter_1024_kernel",  "vect8_dp_mad_iter_1024_kernel", 
	"vect16_dp_add_iter_1024_kernel", "vect16_dp_sub_iter_1024_kernel", "vect16_dp_mul_iter_1024_kernel", "vect16_dp_div_iter_1024_kernel", "vect16_dp_mad_iter_1024_kernel", 
	"scalar_sp_add_iter_128_unroll_64_kernel", "scalar_sp_sub_iter_128_unroll_64_kernel", "scalar_sp_mul_iter_128_unroll_64_kernel", "scalar_sp_div_iter_128_unroll_64_kernel", "scalar_sp_mad_iter_128_unroll_64_kernel", 
	"vect2_sp_add_iter_128_unroll_64_kernel",  "vect2_sp_sub_iter_128_unroll_64_kernel",  "vect2_sp_mul_iter_128_unroll_64_kernel",  "vect2_sp_div_iter_128_unroll_64_kernel",  "vect2_sp_mad_iter_128_unroll_64_kernel", 
	"vect4_sp_add_iter_128_unroll_64_kernel",  "vect4_sp_sub_iter_128_unroll_64_kernel",  "vect4_sp_mul_iter_128_unroll_64_kernel",  "vect4_sp_div_iter_128_unroll_64_kernel",  "vect4_sp_mad_iter_128_unroll_64_kernel", 
	"vect8_sp_add_iter_128_unroll_64_kernel",  "vect8_sp_sub_iter_128_unroll_64_kernel",  "vect8_sp_mul_iter_128_unroll_64_kernel",  "vect8_sp_div_iter_128_unroll_64_kernel",  "vect8_sp_mad_iter_128_unroll_64_kernel", 
	"vect16_sp_add_iter_128_unroll_64_kernel", "vect16_sp_sub_iter_128_unroll_64_kernel", "vect16_sp_mul_iter_128_unroll_64_kernel", "vect16_sp_div_iter_128_unroll_64_kernel", "vect16_sp_mad_iter_128_unroll_64_kernel", 
	"scalar_dp_add_iter_128_unroll_64_kernel", "scalar_dp_sub_iter_128_unroll_64_kernel", "scalar_dp_mul_iter_128_unroll_64_kernel", "scalar_dp_div_iter_128_unroll_64_kernel", "scalar_dp_mad_iter_128_unroll_64_kernel", 
	"vect2_dp_add_iter_128_unroll_64_kernel",  "vect2_dp_sub_iter_128_unroll_64_kernel",  "vect2_dp_mul_iter_128_unroll_64_kernel",  "vect2_dp_div_iter_128_unroll_64_kernel",  "vect2_dp_mad_iter_128_unroll_64_kernel", 
	"vect4_dp_add_iter_128_unroll_64_kernel",  "vect4_dp_sub_iter_128_unroll_64_kernel",  "vect4_dp_mul_iter_128_unroll_64_kernel",  "vect4_dp_div_iter_128_unroll_64_kernel",  "vect4_dp_mad_iter_128_unroll_64_kernel", 
	"vect8_dp_add_iter_128_unroll_64_kernel",  "vect8_dp_sub_iter_128_unroll_64_kernel",  "vect8_dp_mul_iter_128_unroll_64_kernel",  "vect8_dp_div_iter_128_unroll_64_kernel",  "vect8_dp_mad_iter_128_unroll_64_kernel", 
	"vect16_dp_add_iter_128_unroll_64_kernel", "vect16_dp_sub_iter_128_unroll_64_kernel", "vect16_dp_mul_iter_128_unroll_64_kernel", "vect16_dp_div_iter_128_unroll_64_kernel", "vect16_dp_mad_iter_128_unroll_64_kernel", 
	"scalar_sp_add_priv_kernel", "scalar_sp_sub_priv_kernel", "scalar_sp_mul_priv_kernel", "scalar_sp_div_priv_kernel", "scalar_sp_mad_priv_kernel", 
	"vect2_sp_add_priv_kernel",  "vect2_sp_sub_priv_kernel",  "vect2_sp_mul_priv_kernel",  "vect2_sp_div_priv_kernel",  "vect2_sp_mad_priv_kernel", 
	"vect4_sp_add_priv_kernel",  "vect4_sp_sub_priv_kernel",  "vect4_sp_mul_priv_kernel",  "vect4_sp_div_priv_kernel",  "vect4_sp_mad_priv_kernel", 
	"vect8_sp_add_priv_kernel",  "vect8_sp_sub_priv_kernel",  "vect8_sp_mul_priv_kernel",  "vect8_sp_div_priv_kernel",  "vect8_sp_mad_priv_kernel", 
	"vect16_sp_add_priv_kernel", "vect16_sp_sub_priv_kernel", "vect16_sp_mul_priv_kernel", "vect16_sp_div_priv_kernel", "vect16_sp_mad_priv_kernel", 
	"scalar_dp_add_priv_kernel", "scalar_dp_sub_priv_kernel", "scalar_dp_mul_priv_kernel", "scalar_dp_div_priv_kernel", "scalar_dp_mad_priv_kernel", 
	"vect2_dp_add_priv_kernel",  "vect2_dp_sub_priv_kernel",  "vect2_dp_mul_priv_kernel",  "vect2_dp_div_priv_kernel",  "vect2_dp_mad_priv_kernel", 
	"vect4_dp_add_priv_kernel",  "vect4_dp_sub_priv_kernel",  "vect4_dp_mul_priv_kernel",  "vect4_dp_div_priv_kernel",  "vect4_dp_mad_priv_kernel", 
	"vect8_dp_add_priv_kernel",  "vect8_dp_sub_priv_kernel",  "vect8_dp_mul_priv_kernel",  "vect8_dp_div_priv_kernel",  "vect8_dp_mad_priv_kernel", 
	"vect16_dp_add_priv_kernel", "vect16_dp_sub_priv_kernel", "vect16_dp_mul_priv_kernel", "vect16_dp_div_priv_kernel", "vect16_dp_mad_priv_kernel", 
	"scalar_sp_add_priv_iter_8192_kernel", "scalar_sp_sub_priv_iter_8192_kernel", "scalar_sp_mul_priv_iter_8192_kernel", "scalar_sp_div_priv_iter_8192_kernel", "scalar_sp_mad_priv_iter_8192_kernel", 
	"vect2_sp_add_priv_iter_8192_kernel",  "vect2_sp_sub_priv_iter_8192_kernel",  "vect2_sp_mul_priv_iter_8192_kernel",  "vect2_sp_div_priv_iter_8192_kernel",  "vect2_sp_mad_priv_iter_8192_kernel", 
	"vect4_sp_add_priv_iter_8192_kernel",  "vect4_sp_sub_priv_iter_8192_kernel",  "vect4_sp_mul_priv_iter_8192_kernel",  "vect4_sp_div_priv_iter_8192_kernel",  "vect4_sp_mad_priv_iter_8192_kernel", 
	"vect8_sp_add_priv_iter_8192_kernel",  "vect8_sp_sub_priv_iter_8192_kernel",  "vect8_sp_mul_priv_iter_8192_kernel",  "vect8_sp_div_priv_iter_8192_kernel",  "vect8_sp_mad_priv_iter_8192_kernel", 
	"vect16_sp_add_priv_iter_8192_kernel", "vect16_sp_sub_priv_iter_8192_kernel", "vect16_sp_mul_priv_iter_8192_kernel", "vect16_sp_div_priv_iter_8192_kernel", "vect16_sp_mad_priv_iter_8192_kernel", 
	"scalar_dp_add_priv_iter_8192_kernel", "scalar_dp_sub_priv_iter_8192_kernel", "scalar_dp_mul_priv_iter_8192_kernel", "scalar_dp_div_priv_iter_8192_kernel", "scalar_dp_mad_priv_iter_8192_kernel", 
	"vect2_dp_add_priv_iter_8192_kernel",  "vect2_dp_sub_priv_iter_8192_kernel",  "vect2_dp_mul_priv_iter_8192_kernel",  "vect2_dp_div_priv_iter_8192_kernel",  "vect2_dp_mad_priv_iter_8192_kernel", 
	"vect4_dp_add_priv_iter_8192_kernel",  "vect4_dp_sub_priv_iter_8192_kernel",  "vect4_dp_mul_priv_iter_8192_kernel",  "vect4_dp_div_priv_iter_8192_kernel",  "vect4_dp_mad_priv_iter_8192_kernel", 
	"vect8_dp_add_priv_iter_8192_kernel",  "vect8_dp_sub_priv_iter_8192_kernel",  "vect8_dp_mul_priv_iter_8192_kernel",  "vect8_dp_div_priv_iter_8192_kernel",  "vect8_dp_mad_priv_iter_8192_kernel", 
	"vect16_dp_add_priv_iter_8192_kernel", "vect16_dp_sub_priv_iter_8192_kernel", "vect16_dp_mul_priv_iter_8192_kernel", "vect16_dp_div_priv_iter_8192_kernel", "vect16_dp_mad_priv_iter_8192_kernel", 
	"scalar_sp_add_priv_iter_8192_args_kernel", "scalar_sp_sub_priv_iter_8192_args_kernel", "scalar_sp_mul_priv_iter_8192_args_kernel", "scalar_sp_div_priv_iter_8192_args_kernel", "scalar_sp_mad_priv_iter_8192_args_kernel", 
	"vect2_sp_add_priv_iter_8192_args_kernel",  "vect2_sp_sub_priv_iter_8192_args_kernel",  "vect2_sp_mul_priv_iter_8192_args_kernel",  "vect2_sp_div_priv_iter_8192_args_kernel",  "vect2_sp_mad_priv_iter_8192_args_kernel", 
	"vect4_sp_add_priv_iter_8192_args_kernel",  "vect4_sp_sub_priv_iter_8192_args_kernel",  "vect4_sp_mul_priv_iter_8192_args_kernel",  "vect4_sp_div_priv_iter_8192_args_kernel",  "vect4_sp_mad_priv_iter_8192_args_kernel", 
	"vect8_sp_add_priv_iter_8192_args_kernel",  "vect8_sp_sub_priv_iter_8192_args_kernel",  "vect8_sp_mul_priv_iter_8192_args_kernel",  "vect8_sp_div_priv_iter_8192_args_kernel",  "vect8_sp_mad_priv_iter_8192_args_kernel", 
	"vect16_sp_add_priv_iter_8192_args_kernel", "vect16_sp_sub_priv_iter_8192_args_kernel", "vect16_sp_mul_priv_iter_8192_args_kernel", "vect16_sp_div_priv_iter_8192_args_kernel", "vect16_sp_mad_priv_iter_8192_args_kernel", 
	"scalar_dp_add_priv_iter_8192_args_kernel", "scalar_dp_sub_priv_iter_8192_args_kernel", "scalar_dp_mul_priv_iter_8192_args_kernel", "scalar_dp_div_priv_iter_8192_args_kernel", "scalar_dp_mad_priv_iter_8192_args_kernel", 
	"vect2_dp_add_priv_iter_8192_args_kernel",  "vect2_dp_sub_priv_iter_8192_args_kernel",  "vect2_dp_mul_priv_iter_8192_args_kernel",  "vect2_dp_div_priv_iter_8192_args_kernel",  "vect2_dp_mad_priv_iter_8192_args_kernel", 
	"vect4_dp_add_priv_iter_8192_args_kernel",  "vect4_dp_sub_priv_iter_8192_args_kernel",  "vect4_dp_mul_priv_iter_8192_args_kernel",  "vect4_dp_div_priv_iter_8192_args_kernel",  "vect4_dp_mad_priv_iter_8192_args_kernel", 
	"vect8_dp_add_priv_iter_8192_args_kernel",  "vect8_dp_sub_priv_iter_8192_args_kernel",  "vect8_dp_mul_priv_iter_8192_args_kernel",  "vect8_dp_div_priv_iter_8192_args_kernel",  "vect8_dp_mad_priv_iter_8192_args_kernel", 
	"vect16_dp_add_priv_iter_8192_args_kernel", "vect16_dp_sub_priv_iter_8192_args_kernel", "vect16_dp_mul_priv_iter_8192_args_kernel", "vect16_dp_div_priv_iter_8192_args_kernel", "vect16_dp_mad_priv_iter_8192_args_kernel", 
};
char *available_mop_kernels[] = {
	"scalar_sp_load_store_kernel", "vect2_sp_load_store_kernel", "vect4_sp_load_store_kernel", "vect8_sp_load_store_kernel", "vect16_sp_load_store_kernel",
	"scalar_dp_load_store_kernel", "vect2_dp_load_store_kernel", "vect4_dp_load_store_kernel", "vect8_dp_load_store_kernel", "vect16_dp_load_store_kernel",
	"scalar_sp_load_store_iter_1024_kernel", "vect2_sp_load_store_iter_1024_kernel", "vect4_sp_load_store_iter_1024_kernel", "vect8_sp_load_store_iter_1024_kernel", "vect16_sp_load_store_iter_1024_kernel",
	"scalar_dp_load_store_iter_1024_kernel", "vect2_dp_load_store_iter_1024_kernel", "vect4_dp_load_store_iter_1024_kernel", "vect8_dp_load_store_iter_1024_kernel", "vect16_dp_load_store_iter_1024_kernel",
	// experiments
	"scalar_sp_load_kernel", "scalar_sp_load_iter_1024_kernel", "scalar_sp_load_iter_1024_global2priv_kernel",
};

char *available_power_kernels[] = {
	"scalar_sp_add_power_kernel", "scalar_sp_sub_power_kernel", "scalar_sp_mul_power_kernel", "scalar_sp_div_power_kernel", "scalar_sp_mad_power_kernel", 
	"vect2_sp_add_power_kernel",  "vect2_sp_sub_power_kernel",  "vect2_sp_mul_power_kernel",  "vect2_sp_div_power_kernel",  "vect2_sp_mad_power_kernel", 
	"vect4_sp_add_power_kernel",  "vect4_sp_sub_power_kernel",  "vect4_sp_mul_power_kernel",  "vect4_sp_div_power_kernel",  "vect4_sp_mad_power_kernel", 
	"vect8_sp_add_power_kernel",  "vect8_sp_sub_power_kernel",  "vect8_sp_mul_power_kernel",  "vect8_sp_div_power_kernel",  "vect8_sp_mad_power_kernel", 
	"vect16_sp_add_power_kernel", "vect16_sp_sub_power_kernel", "vect16_sp_mul_power_kernel", "vect16_sp_div_power_kernel", "vect16_sp_mad_power_kernel", 
	"scalar_dp_add_power_kernel", "scalar_dp_sub_power_kernel", "scalar_dp_mul_power_kernel", "scalar_dp_div_power_kernel", "scalar_dp_mad_power_kernel", 
	"vect2_dp_add_power_kernel",  "vect2_dp_sub_power_kernel",  "vect2_dp_mul_power_kernel",  "vect2_dp_div_power_kernel",  "vect2_dp_mad_power_kernel", 
	"vect4_dp_add_power_kernel",  "vect4_dp_sub_power_kernel",  "vect4_dp_mul_power_kernel",  "vect4_dp_div_power_kernel",  "vect4_dp_mad_power_kernel", 
	"vect8_dp_add_power_kernel",  "vect8_dp_sub_power_kernel",  "vect8_dp_mul_power_kernel",  "vect8_dp_div_power_kernel",  "vect8_dp_mad_power_kernel", 
	"vect16_dp_add_power_kernel", "vect16_dp_sub_power_kernel", "vect16_dp_mul_power_kernel", "vect16_dp_div_power_kernel", "vect16_dp_mad_power_kernel", 
};

char *available_shared_mem_kernels[] = {
	"scalar_sp_load_store_shm_kernel", "vect2_sp_load_store_shm_kernel", "vect4_sp_load_store_shm_kernel", "vect8_sp_load_store_shm_kernel", "vect16_sp_load_store_shm_kernel", 
	"scalar_sp_load_store_shm_iter_1024_kernel", "vect2_sp_load_store_shm_iter_1024_kernel", "vect4_sp_load_store_shm_iter_1024_kernel", "vect8_sp_load_store_shm_iter_1024_kernel", "vect16_sp_load_store_shm_iter_1024_kernel",
	"scalar_sp_load_store_shm_iter_81920_kernel", "vect2_sp_load_store_shm_iter_81920_kernel", "vect4_sp_load_store_shm_iter_81920_kernel", "vect8_sp_load_store_shm_iter_81920_kernel", "vect16_sp_load_store_shm_iter_81920_kernel",
};

/* dumpBinaries
 * dumps kernel binaries to file
 * creates a file for each device the program was compiled for
 * (should only be one)
 */
void dumpBinaries(cl_program program, char *source_file) {

	int j, ocl_ret;

	// kernel asm dump vars
	FILE* f_binaries;
	cl_uint num_devices;
	cl_device_id *devices;
	size_t *binaries_size;
	unsigned char **binaries_str;

	// get number of devices for which the kernels were compiled
	ocl_ret = clGetProgramInfo(program, CL_PROGRAM_NUM_DEVICES, sizeof(cl_uint), &num_devices, NULL); clCheckError(ocl_ret, __LINE__);
	printf("num_devices = %d\n", num_devices);

	// get binary sizes for each device the program was compiled for
	binaries_size = malloc(num_devices*sizeof(size_t));
	ocl_ret = clGetProgramInfo(program, CL_PROGRAM_BINARY_SIZES, num_devices*sizeof(size_t), binaries_size, NULL);	clCheckError(ocl_ret, __LINE__);
	for(j = 0; j < (int)num_devices; j++) 
		printf("binaries_size[%d] = %d B\n", j, binaries_size[j]);

	// get each device's binaries
	binaries_str = malloc(num_devices*sizeof(unsigned char*));
	for(j = 0; j < (int)num_devices; j++)
		binaries_str[j] = malloc(binaries_size[j] * sizeof(unsigned char));
	ocl_ret = clGetProgramInfo(program, CL_PROGRAM_BINARIES, num_devices * sizeof(unsigned char*), binaries_str, NULL);		clCheckError(ocl_ret, __LINE__);

	// dump binaries to file(s) (one for each device)
	char filename[50];
	for(j = 0; j < (int)num_devices; j++) {
		sprintf(filename, "kernels/kernel_binary_dev%d_%s.s", j, source_file);
		f_binaries = fopen(filename, "w");
		fwrite(binaries_str[j], 1, binaries_size[j], f_binaries);
		fclose(f_binaries);
	}

	// cleanup
	for(j = 0; j < (int)num_devices; j++) {
		free(binaries_str[j]);
	}
	free(binaries_str);
	free(binaries_size);
	//free(devices);

}






int main(int argc, char** argv, char **envp) {

	int i;
	int dump = 0;
	int repeat = 1;
	int build = 0;
	int profile = 0;
	int iter = 0;
	char access_mode[5] = "\0";
	char custom_kernel_type[5] = "\0";
	char mem_access[5] = "\0";
	int custom_kernel_simd = 0;
	int blocks = 0;
	int threads_per_block = 0;
	int fma = 0;
	int power_smoothing = 0;
	int power_clamping = 0;
	int quiet = 0;
	int external_app = 0;
	int custom_counter = 0;
	uint32_t custom_increment = 0;
	uint32_t custom_coarse = 0;
	uint32_t custom_fine = 0;
	uint32_t custom_counter_dword = 0;
	char *app_name_args;
	uint64_t clock_start, clock_end, clock_delta;
	uint64_t build_clock_start, build_clock_end, build_clock_delta;
	uint64_t readbin_clock_start, readbin_clock_end, readbin_clock_delta;
	uint64_t nominal_cpu_freq = 3500000000;
	
	/* ============================================================================================ */
	/* ===================================== preliminary stuff ==================================== */
	/* ============================================================================================ */

	// args processing
	if (argc > 1) {

		for(i = 0; i < argc; i++) {
			if (strcmp(argv[i], "-d")==0 || strcmp(argv[i], "--dump")==0)
				dump = 1;

			if (strcmp(argv[i], "-r")==0 || strcmp(argv[i], "--repeat")==0)
				repeat = atoi(argv[i+1]);

			if (strcmp(argv[i], "-c")==0 || strcmp(argv[i], "--choose")==0)
				strcpy(kernel_choice, argv[i+1]);
						
			if (strcmp(argv[i], "-b")==0 || strcmp(argv[i], "--build")==0)
				build = 1;
			
			if (strcmp(argv[i], "-p")==0 || strcmp(argv[i], "--profile")==0)
				profile = 1;
			
			if (strcmp(argv[i], "-a")==0 || strcmp(argv[i], "--access")==0) {
				if      (strcmp(argv[i+1], "rpc")==0)  strcpy(access_mode, "rpc");
				else if (strcmp(argv[i+1], "mmio")==0) strcpy(access_mode, "mmio");
				else if (strcmp(argv[i+1], "prof")==0) strcpy(access_mode, "prof");
				else    { fprintf(stderr, KRED "Incompatible access mode: either \"rpc\" or \"mmio\"\n" KNRM); exit(1); }
			}
			
			if (strcmp(argv[i], "--blocks")==0)
				blocks = atoi(argv[i+1]);
			
			if (strcmp(argv[i], "--tpb")==0 )
				threads_per_block = atoi(argv[i+1]);
			
			if (strcmp(argv[i], "--iter")==0)
				iter = atoi(argv[i+1]);
			
			if (strcmp(argv[i], "--ktype")==0)
				strcpy(custom_kernel_type, argv[i+1]);
			
			if (strcmp(argv[i], "--simd")==0)
				custom_kernel_simd = atoi(argv[i+1]);
			
			if (strcmp(argv[i], "--enable-fma")==0)
				fma = 1;
			
			if (strcmp(argv[i], "--power-smoothing")==0)
				power_smoothing = 1;
			
			if (strcmp(argv[i], "-q")==0 || strcmp(argv[i], "--quiet")==0)
				quiet = 1;
			
			// not implemented yet, it would segfault
			if (strcmp(argv[i], "--power-clamping")==0)
				power_clamping = 1;
			
			if (strcmp(argv[i], "--external-app")==0) {
				external_app = 1;
				app_name_args = (char*) malloc(strlen(argv[i+1]) * sizeof(char));
				strcpy(app_name_args, argv[i+1]);
			}
			
			if (strcmp(argv[i], "--custom-counter-increment")==0 || strcmp(argv[i], "-cc-i")==0) {
				custom_counter = 1;
				custom_increment = (uint32_t) atoi(argv[i+1]);
			}
			
			if (strcmp(argv[i], "--custom-counter-coarse")==0 || strcmp(argv[i], "-cc-c")==0) {
				custom_counter = 1;
				custom_coarse = (uint32_t) atoi(argv[i+1]);
			}
			
			if (strcmp(argv[i], "--custom-counter-fine")==0 || strcmp(argv[i], "-cc-f")==0) {
				custom_counter = 1;
				custom_fine = (uint32_t) atoi(argv[i+1]);
			}
			
		}
	}
	
	if (custom_counter) {
		custom_counter_dword = (custom_increment | custom_coarse<<4 | custom_fine<<8) | ((custom_increment | custom_coarse<<4 | custom_fine<<8) << 12);
		printf("Increment filter: %u\n", custom_increment);
		printf("Coarse filter:    %u\n", custom_coarse);
		printf("Fine filter:      %u\n", custom_fine);
		printf("Counter configuration: %u\n", custom_counter_dword);
		printf("Counter configuration: "); print_binary(custom_counter_dword, 32);
	}
	
	if (quiet) {
		fclose(stdout);
		//stdout = fopen("/dev/null/", "w");
		//dup2(open("/dev/null/", O_WRONLY), 1);
	}

	// validate kernel chosen
	if(strcmp(kernel_choice, "") == 0) {
		printf("No kernel selected, defaulting to kernel \"scalar_sp_add_kernel\"\n");
		strcpy(kernel_choice, "scalar_sp_add_kernel");
	}
	
	if (profile) {
		clock_start = read_tsc_start();
	}

	int match = 0;
	char kernel_type;
	char precision_type;
	if (strcmp(kernel_choice, "custom") == 0) { match++; kernel_type = 'c'; }
	for (int i = 0; i < number_available_flop_kernels; i++) {
		if (strcmp(kernel_choice, available_flop_kernels[i]) == 0) { match++; kernel_type = 'f'; }
	}
	for (int i = 0; i < number_available_mop_kernels; i++) {
		if (strcmp(kernel_choice, available_mop_kernels[i]) == 0) { match++; kernel_type = 'm'; }
	}
	for (int i = 0; i < number_available_power_kernels; i++) {
		if (strcmp(kernel_choice, available_power_kernels[i]) == 0) { match++; kernel_type = 'p'; }
	}
	for (int i = 0; i < number_available_shared_mem_kernels; i++) {
		if (strcmp(kernel_choice, available_shared_mem_kernels[i]) == 0) { match++; kernel_type = 's'; }
	}
	if (match == 0) {
		printf(KRED "Chosen kernel not available. Choose from:\n" KNRM);
		for (int i = 0; i < number_available_flop_kernels; i++) printf("\t%s\n", available_flop_kernels[i]);
		for (int i = 0; i < number_available_mop_kernels; i++) printf("\t%s\n", available_mop_kernels[i]);
		for (int i = 0; i < number_available_power_kernels; i++) printf("\t%s\n", available_power_kernels[i]);
		for (int i = 0; i < number_available_shared_mem_kernels; i++) printf("\t%s\n", available_shared_mem_kernels[i]);
		printf("Defaulting to kernel \"scalar_add_kernel\"\n");
		strcpy(kernel_choice, "scalar_add_kernel");
		kernel_type = 'f';
	}
	
	if (strstr(kernel_choice, "sp") != NULL) 		precision_type = 's';	// single-precision
	else if (strstr(kernel_choice, "dp") != NULL) 	precision_type = 'd';	// double-precision
	else 											precision_type = 'u';	// unknown precision / unused (for memory kernels as of yet)
	
	if (strstr(kernel_choice, "load_store") != NULL)	strcpy(mem_access , "ls");
	else if (strstr(kernel_choice, "load") != NULL)		mem_access[0] = 'l';
	else if (strstr(kernel_choice, "store") != NULL)	mem_access[0] = 's';
	
	// somehow the unrolled loops in the double precision kernels need to be in a separate file to compile
	// so this flags tells the program later that it should search in another file for the unrolled dp kernels
	int unroll_flag = 0;
	if (kernel_type == 'f' && precision_type == 'd' && strstr(kernel_choice, "unroll")!=NULL) unroll_flag = 1;
	
	if (strcmp(access_mode, "\0")==0) strcpy(access_mode, "rpc");	// default to rpc
	
	if (profile) {
		clock_end = read_tsc_end();
		clock_delta = clock_end-clock_start;
		printf("[Kernel validation: %lf s]\n", clock_delta/(double)nominal_cpu_freq);
	}


	// set affinity (to only run on one core)
	// helps with reading frequency
	CPU_ZERO(&my_set);
	CPU_SET(0, &my_set);
	sched_setaffinity(0, sizeof(cpu_set_t), &my_set);


	/* ============================================================================================ */
	/* ======================================= OpenCL stuff ======================================= */
	/* ============================================================================================ */
	
	int j, ocl_ret;
	float *scalar_sp_A, *scalar_sp_B;
	cl_float2 *vect2_sp_A, *vect2_sp_B;
	cl_float4 *vect4_sp_A, *vect4_sp_B;
	cl_float8 *vect8_sp_A, *vect8_sp_B;
	cl_float16 *vect16_sp_A, *vect16_sp_B;
	double *scalar_dp_A, *scalar_dp_B;
	cl_double2 *vect2_dp_A, *vect2_dp_B;
	cl_double4 *vect4_dp_A, *vect4_dp_B;
	cl_double8 *vect8_dp_A, *vect8_dp_B;
	cl_double16 *vect16_dp_A, *vect16_dp_B;

	// kernel source vars
	FILE *f_source;
	size_t source_size;
	char *source_str;
	
	// kernel binary vars
	FILE *f_bin;
	size_t bin_size;
	char *bin_str;

	// kernel build log vars
	cl_char *build_log = NULL;
	size_t build_log_len = 0;

	// kernel build options
	char options[15];
	if (fma) 	strcpy(options, "-cl-mad-enable");
	else 		strcpy(options, "");
	
	
	// global -> total number of work-items
	// local  -> number of work-items per work-group
	// number of work-groups = global / local	
	global = blocks * threads_per_block;
	local = threads_per_block;

	printf("blocks = %d\ntpb = %d\n", blocks, threads_per_block);

	
	if(profile) {
		clock_start = read_tsc_start();
	}
	
	// memory initialization
	if (!external_app) {
		
		if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "sp") != NULL) {
			scalar_sp_A = (float*) malloc(sizeof(float) * global);
			if(scalar_sp_A==NULL) { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') { 
				scalar_sp_B = (float*) malloc(sizeof(float) * global);
				if(scalar_sp_B==NULL) { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); } 
			}
		} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "sp") != NULL) {
			vect2_sp_A = (cl_float2*) malloc(sizeof(cl_float2) * global);
			if(vect2_sp_A==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				vect2_sp_B = (cl_float2*) malloc(sizeof(cl_float2) * global);
				if(vect2_sp_B==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "sp") != NULL) {
			vect4_sp_A = (cl_float4*) malloc(sizeof(cl_float4) * global);
			if(vect4_sp_A==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				vect4_sp_B = (cl_float4*) malloc(sizeof(cl_float4) * global);
				if(vect4_sp_B==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "sp") != NULL) {
			vect8_sp_A = (cl_float8*) malloc(sizeof(cl_float8) * global);
			if(vect8_sp_A==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				vect8_sp_B = (cl_float8*) malloc(sizeof(cl_float8) * global);
				if(vect8_sp_B==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "sp") != NULL) {
			vect16_sp_A = (cl_float16*) malloc(sizeof(cl_float16) * global);
			if(vect16_sp_A==NULL) { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				vect16_sp_B = (cl_float16*) malloc(sizeof(cl_float16) * global);
				if(vect16_sp_B==NULL) { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		} else if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "dp") != NULL) {
			scalar_dp_A = (double*) malloc(sizeof(double) * global);
			if(scalar_dp_A==NULL) { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				scalar_dp_B = (double*) malloc(sizeof(double) * global);
				if(scalar_dp_B==NULL) { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "dp") != NULL) {
			vect2_dp_A = (cl_double2*) malloc(sizeof(cl_double2) * global);
			if(vect2_dp_A==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				vect2_dp_B = (cl_double2*) malloc(sizeof(cl_double2) * global);
				if(vect2_dp_B==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "dp") != NULL) {
			vect4_dp_A = (cl_double4*) malloc(sizeof(cl_double4) * global);
			if(vect4_dp_A==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				vect4_dp_B = (cl_double4*) malloc(sizeof(cl_double4) * global);
				if(vect4_dp_B==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "dp") != NULL) {
			vect8_dp_A = (cl_double8*) malloc(sizeof(cl_double8) * global);
			if(vect8_dp_A==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				vect8_dp_B = (cl_double8*) malloc(sizeof(cl_double8) * global);
				if(vect8_dp_B==NULL)  { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "dp") != NULL) {
			vect16_dp_A = (cl_double16*) malloc(sizeof(cl_double16) * global);
			if(vect16_dp_A==NULL) { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				vect16_dp_B = (cl_double16*) malloc(sizeof(cl_double16) * global);
				if(vect16_dp_B==NULL) { fprintf(stderr, KRED "Error allocating! Line %d\n" KNRM, __LINE__); exit(1); }
			}
		}
		for(i=0; i<global; i++) {
			if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "sp") != NULL) {
				scalar_sp_A[i] = 2.0f;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					scalar_sp_B[i] = 2.0f;
				}
			} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "sp") != NULL) {
				vect2_sp_A[i].x = 2.0f;   vect2_sp_A[i].y = 2.0f;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					vect2_sp_B[i].x	= 2.0f;   vect2_sp_B[i].y = 2.0f;
				}
			} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "sp") != NULL) {
				vect4_sp_A[i].x	= 2.0f;   vect4_sp_A[i].y = 2.0f;   vect4_sp_A[i].w = 2.0f;   vect4_sp_A[i].z = 2.0f;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					vect4_sp_B[i].x	= 2.0f;   vect4_sp_B[i].y = 2.0f;   vect4_sp_B[i].w = 2.0f;   vect4_sp_B[i].z = 2.0f;
				}
			} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "sp") != NULL) {
				vect8_sp_A[i].s0 = 2.0f;  vect8_sp_A[i].s1 = 2.0f;  vect8_sp_A[i].s2 = 2.0f;  vect8_sp_A[i].s3 = 2.0f;  vect8_sp_A[i].s4 = 2.0f;  vect8_sp_A[i].s5 = 2.0f;  vect8_sp_A[i].s6 = 2.0f;  vect8_sp_A[i].s7 = 2.0f;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					vect8_sp_B[i].s0 = 2.0f;  vect8_sp_B[i].s1 = 2.0f;  vect8_sp_B[i].s2 = 2.0f;  vect8_sp_B[i].s3 = 2.0f;  vect8_sp_B[i].s4 = 2.0f;  vect8_sp_B[i].s5 = 2.0f;  vect8_sp_B[i].s6 = 2.0f;  vect8_sp_B[i].s7 = 2.0f;
				}
			} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "sp") != NULL) {
				vect16_sp_A[i].s0 = 2.0f; vect16_sp_A[i].s1 = 2.0f; vect16_sp_A[i].s2 = 2.0f; vect16_sp_A[i].s3 = 2.0f; vect16_sp_A[i].s4 = 2.0f; vect16_sp_A[i].s5 = 2.0f; vect16_sp_A[i].s6 = 2.0f; vect16_sp_A[i].s7 = 2.0f;
				vect16_sp_A[i].s8 = 2.0f; vect16_sp_A[i].s9 = 2.0f; vect16_sp_A[i].sa = 2.0f; vect16_sp_A[i].sb = 2.0f; vect16_sp_A[i].sc = 2.0f; vect16_sp_A[i].sd = 2.0f; vect16_sp_A[i].se = 2.0f; vect16_sp_A[i].sf = 2.0f;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					vect16_sp_B[i].s0 = 2.0f; vect16_sp_B[i].s1 = 2.0f; vect16_sp_B[i].s2 = 2.0f; vect16_sp_B[i].s3 = 2.0f; vect16_sp_B[i].s4 = 2.0f; vect16_sp_B[i].s5 = 2.0f; vect16_sp_B[i].s6 = 2.0f; vect16_sp_B[i].s7 = 2.0f;
					vect16_sp_B[i].s8 = 2.0f; vect16_sp_B[i].s9 = 2.0f; vect16_sp_B[i].sa = 2.0f; vect16_sp_B[i].sb = 2.0f; vect16_sp_B[i].sc = 2.0f; vect16_sp_B[i].sd = 2.0f; vect16_sp_B[i].se = 2.0f; vect16_sp_B[i].sf = 2.0f;
				}
			} else if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "dp") != NULL) {
				scalar_dp_A[i] = 2.0;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					scalar_dp_B[i] = 2.0;
				}
			} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "dp") != NULL) {
				vect2_dp_A[i].x = 2.0;   vect2_dp_A[i].y = 2.0;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					vect2_dp_B[i].x	= 2.0;   vect2_dp_B[i].y = 2.0;
				}
			} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "dp") != NULL) {
				vect4_dp_A[i].x	= 2.0;   vect4_dp_A[i].y = 2.0;   vect4_dp_A[i].w = 2.0;   vect4_dp_A[i].z = 2.0;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					vect4_dp_B[i].x	= 2.0;   vect4_dp_B[i].y = 2.0;   vect4_dp_B[i].w = 2.0;   vect4_dp_B[i].z = 2.0;
				}
			} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "dp") != NULL) {
				vect8_dp_A[i].s0 = 2.0;  vect8_dp_A[i].s1 = 2.0;  vect8_dp_A[i].s2 = 2.0;  vect8_dp_A[i].s3 = 2.0;  vect8_dp_A[i].s4 = 2.0;  vect8_dp_A[i].s5 = 2.0;  vect8_dp_A[i].s6 = 2.0;  vect8_dp_A[i].s7 = 2.0;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					vect8_dp_B[i].s0 = 2.0;  vect8_dp_B[i].s1 = 2.0;  vect8_dp_B[i].s2 = 2.0;  vect8_dp_B[i].s3 = 2.0;  vect8_dp_B[i].s4 = 2.0;  vect8_dp_B[i].s5 = 2.0;  vect8_dp_B[i].s6 = 2.0;  vect8_dp_B[i].s7 = 2.0;
				}
			} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "dp") != NULL) {
				vect16_dp_A[i].s0 = 2.0; vect16_dp_A[i].s1 = 2.0; vect16_dp_A[i].s2 = 2.0; vect16_dp_A[i].s3 = 2.0; vect16_dp_A[i].s4 = 2.0; vect16_dp_A[i].s5 = 2.0; vect16_dp_A[i].s6 = 2.0; vect16_dp_A[i].s7 = 2.0;
				vect16_dp_A[i].s8 = 2.0; vect16_dp_A[i].s9 = 2.0; vect16_dp_A[i].sa = 2.0; vect16_dp_A[i].sb = 2.0; vect16_dp_A[i].sc = 2.0; vect16_dp_A[i].sd = 2.0; vect16_dp_A[i].se = 2.0; vect16_dp_A[i].sf = 2.0;
				if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
					vect16_dp_B[i].s0 = 2.0; vect16_dp_B[i].s1 = 2.0; vect16_dp_B[i].s2 = 2.0; vect16_dp_B[i].s3 = 2.0; vect16_dp_B[i].s4 = 2.0; vect16_dp_B[i].s5 = 2.0; vect16_dp_B[i].s6 = 2.0; vect16_dp_B[i].s7 = 2.0;
					vect16_dp_B[i].s8 = 2.0; vect16_dp_B[i].s9 = 2.0; vect16_dp_B[i].sa = 2.0; vect16_dp_B[i].sb = 2.0; vect16_dp_B[i].sc = 2.0; vect16_dp_B[i].sd = 2.0; vect16_dp_B[i].se = 2.0; vect16_dp_B[i].sf = 2.0;
				}
			}
		}
		
	}
	
	if (profile) {
		clock_end = read_tsc_end();
		clock_delta = clock_end-clock_start;
		printf("[Memory Initialization CPU side: %lf s]\n", clock_delta/(double)nominal_cpu_freq);
	}
	
	printf("=================================================\n");
	printf("================= OpenCL kernel =================\n");
	printf("=================================================\n");
	//printf("Kernel source (%d bytes):\n%s\n", source_size, source_str);


	if (profile) {
		clock_start = read_tsc_start();
	}

	if (!external_app) {
	
		ocl_ret = clGetPlatformIDs(1, &platform, NULL); 								clCheckError(ocl_ret, __LINE__);
		ocl_ret = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, NULL); 		clCheckError(ocl_ret, __LINE__);
		context = clCreateContext(NULL, 1, &device, NULL, NULL, &ocl_ret); 				clCheckError(ocl_ret, __LINE__);
		if (strcmp(access_mode, "prof")==0)  {
			command_queue = clCreateCommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &ocl_ret); 	clCheckError(ocl_ret, __LINE__);
		} else {
			command_queue = clCreateCommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &ocl_ret); 	clCheckError(ocl_ret, __LINE__);
		}
		//command_queue = clCreateCommandQueueWithProperties(context, device, NULL, &ret); clCheckError(ret, __LINE__);
		
		if (strstr(kernel_choice, "priv") != NULL) {
			// no need to create buffer
		} else if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "sp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(float), scalar_sp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__); 
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(float), scalar_sp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "sp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_float2), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(cl_float2), vect2_sp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_float2), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(cl_float2), vect2_sp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "sp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_float4), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(cl_float4), vect4_sp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_float4), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(cl_float4), vect4_sp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "sp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_float8), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(cl_float8), vect8_sp_A, 0, NULL, NULL); 		clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_float8), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(cl_float8), vect8_sp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "sp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_float16), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(cl_float16), vect16_sp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_float16), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(cl_float16), vect16_sp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "dp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(double), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(double), scalar_dp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(double), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(double), scalar_dp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "dp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_double2), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(cl_double2), vect2_dp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_double2), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(cl_double2), vect2_dp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "dp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_double4), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(cl_double4), vect4_dp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_double4), NULL, &ocl_ret); 	clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(cl_double4), vect4_dp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "dp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_double8), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(cl_double8), vect8_dp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_double8), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(cl_double8), vect8_dp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "dp") != NULL) {
			a = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_double16), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
			ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, global*sizeof(cl_double16), vect16_dp_A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				b = clCreateBuffer(context, CL_MEM_READ_WRITE, global*sizeof(cl_double16), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
				ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, global*sizeof(cl_double16), vect16_dp_B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
			}
		}
		
		
		
		
		char *source_file = (char*) malloc(20);
		char *binary_file = (char*) malloc(50);
		if      (kernel_type == 'c') 							{ f_source = fopen("custom_kernel.cl", "r"); 			sprintf(source_file, "custom_kernel.cl"); 		}
		else if (kernel_type == 'f' && precision_type == 's') 	{ f_source = fopen("kernels/flop_sp_kernels.cl", "r"); 	sprintf(source_file, "flop_sp_kernels.cl"); 	}
		else if (kernel_type == 'f' && precision_type == 'd' && unroll_flag) 	{ f_source = fopen("kernels/flop_dp_unroll_kernels.cl", "r"); 	sprintf(source_file, "flop_dp_unroll_kernels.cl"); 	}
		else if (kernel_type == 'f' && precision_type == 'd' && !unroll_flag) 	{ f_source = fopen("kernels/flop_dp_kernels.cl", "r"); 			sprintf(source_file, "flop_dp_kernels.cl"); 		}
		else if (kernel_type == 'p' && precision_type == 's') 	{ f_source = fopen("kernels/power_sp_kernels.cl", "r"); sprintf(source_file, "power_sp_kernels.cl"); 	}
		else if (kernel_type == 'p' && precision_type == 'd') 	{ f_source = fopen("kernels/power_dp_kernels.cl", "r"); sprintf(source_file, "power_dp_kernels.cl"); 	}
		else if (kernel_type == 'm') 						  	{ f_source = fopen("kernels/mop_kernels.cl", "r");		sprintf(source_file, "mop_kernels.cl"); 		}
		else if (kernel_type == 's') 						  	{ f_source = fopen("kernels/shared_mem_kernels.cl", "r");	sprintf(source_file, "shared_mem_kernels.cl"); }
		
		if (build) {
			
			if (profile) {
				build_clock_start = read_tsc_start();
			}
			
			// get kernel code from file
			fseek(f_source, 0L, SEEK_END);
			source_size = (size_t) ftell(f_source);
			fseek(f_source, 0L, SEEK_SET);
			source_str = (char*)malloc(sizeof(char)*source_size);
			fread(source_str, sizeof(char), source_size, f_source);
			fclose(f_source);
			
			program = clCreateProgramWithSource(context, 1, (const char**)&source_str, (const size_t*)&source_size, &ocl_ret); 	clCheckError(ocl_ret, __LINE__);
			
			printf("Compiling all kernels...\n");
			ocl_ret = clBuildProgram(program, 1, &device, options, NULL, NULL); 												clCheckError(ocl_ret, __LINE__);
			printf("Compilation done.\n");
			
			ocl_ret = clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_STATUS, sizeof(build_status), &build_status, NULL); 	clCheckError(ocl_ret, __LINE__);
			ocl_ret = clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, 0, NULL, &build_log_len); 						clCheckError(ocl_ret, __LINE__);
			
			// print build log for debugging
			build_log = malloc(build_log_len+1);
			ocl_ret = clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, build_log_len, build_log, NULL); clCheckError(ocl_ret, __LINE__);
			printf("Build log:\n%s\n", build_log);
			free(build_log);
			
			dumpBinaries(program, source_file);
			
			free(source_str);
			
			if (profile) {
				build_clock_end = read_tsc_end();
				build_clock_delta = clock_end-clock_start;
				printf("[Read source and build kernels: %lf s]\n", build_clock_delta/(double)nominal_cpu_freq);
			}
			
		} else {
			
			if (profile) {
				readbin_clock_end = read_tsc_start();
			}
			
			// get kernel binary from file
			sprintf(binary_file, "kernels/kernel_binary_dev0_%s.s", source_file);
			f_bin = fopen(binary_file, "r");
			fseek(f_bin, 0L, SEEK_END);
			bin_size = (size_t) ftell(f_bin);
			fseek(f_bin, 0L, SEEK_SET);
			bin_str = (char*)malloc(sizeof(char)*bin_size);
			fread(bin_str, sizeof(char), bin_size, f_bin);
			fclose(f_bin);
			
			cl_uint status;
			program = clCreateProgramWithBinary(context, 1, &device, (const size_t*)&bin_size, (const unsigned char**)&bin_str, &status, &ocl_ret); 
			clCheckError(ocl_ret, __LINE__);
			clCheckError(status, __LINE__);
			
			free(bin_str);
			
			if (profile) {
				readbin_clock_end = read_tsc_end();
				readbin_clock_delta = clock_end-clock_start;
				printf("[Read binary with pre-compiled kernels: %lf s]\n", readbin_clock_delta/(double)nominal_cpu_freq);
			}
		}
		
		free(source_file);
		free(binary_file);
		

		kernel = clCreateKernel(program, kernel_choice, &ocl_ret); 		clCheckError(ocl_ret, __LINE__);
		printf("%s\n", kernel_choice);
		if (strstr(kernel_choice, "priv") != NULL && strstr(kernel_choice, "args") != NULL) {
			if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "sp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(float), (void*)&scalar_sp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "sp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_float2), (void*)&vect2_sp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "sp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_float4), (void*)&vect4_sp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "sp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_float8), (void*)&vect8_sp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "sp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_float16), (void*)&vect16_sp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "dp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(double), (void*)&scalar_dp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "dp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_double2), (void*)&vect2_dp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "dp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_double2), (void*)&vect4_dp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "dp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_double2), (void*)&vect8_dp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "dp") != NULL) {
				ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_double2), (void*)&vect16_dp_A[0]); 
				clCheckError(ocl_ret, __LINE__);
			}
		} else if(strstr(kernel_choice, "priv") != NULL && strstr(kernel_choice, "args") == NULL) {
			// no args
		} else {
			ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_mem), (void*)&a); clCheckError(ocl_ret, __LINE__);
			if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p' || kernel_type == 'm') {
				ocl_ret = clSetKernelArg(kernel, 1, sizeof(cl_mem), (void*)&b); clCheckError(ocl_ret, __LINE__);
			}
		}
		
	}
	
	if (profile) {
		clock_end = read_tsc_end();
		clock_delta = clock_end-clock_start;
		printf("[OpenCL setup: %f s]\n", clock_delta/(double)nominal_cpu_freq);
	}
	

	


	/* ============================================================================================ */
	/* ====================================== Counters stuff ====================================== */
	/* ============================================================================================ */

	bool ret;

	printf("\n\n");
	printf("=================================================\n");
	printf("===================== Counters ==================\n");
	printf("=================================================\n");
	printf("\n");
	
	if (profile) {
		clock_start = read_tsc_start();
	}

	// fixture
	drm_fd = drm_open_driver_render(DRIVER_INTEL);
	devid = intel_get_drm_devid(drm_fd);
	card = drm_get_card();

	printf("after fixture\n");
	printf("drm_fd = %d\n", drm_fd);
	printf("devid = %d\n", devid);
	printf("card = %d\n", card);

	// populate some global structs
	init_sys_info();

	printf("after init_sys_info()\n");

	// this is required
	write_u64_file("/proc/sys/dev/i915/perf_stream_paranoid", -1);
	write_u64_file("/proc/sys/dev/i915/oa_max_sample_rate", 100000);
	
	if (profile) {
		clock_end = read_tsc_end();
		clock_delta = clock_end-clock_start;
		printf("[GPU Fixture: %lf s]\n", clock_delta/(double)nominal_cpu_freq);
	}

	
	fflush(stdout);
	
	//measure_overheads();

	// read counters, do work, read counters again and print deltas
	for(j = 0; j < repeat; j++) {
		if      (!external_app && strcmp(access_mode, "rpc")==0) 	read_counters_rpc(dump, power_smoothing, 0, NULL, NULL, custom_counter_dword);
		else if (!external_app && strcmp(access_mode, "mmio")==0) 	read_counters_mmio(custom_counter_dword);
		else if (!external_app && strcmp(access_mode, "prof")==0) 	profile_through_opencl();
		else if (external_app && strcmp(access_mode, "rpc")==0) 	read_counters_rpc(dump, power_smoothing, external_app, app_name_args, envp, custom_counter_dword);
		else														printf(KRED "Option not supported.\n" KNRM);
	}






	close(drm_fd);

	// OpenCL cleanup
	clReleaseKernel(kernel);
	clReleaseProgram(program);
	clReleaseCommandQueue(command_queue);
	clReleaseContext(context);
	clReleaseMemObject(a);
	clReleaseMemObject(b);
	if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "sp") != NULL) {
		free(scalar_sp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(scalar_sp_B);
	} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "sp") != NULL) {
		free(vect2_sp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(vect2_sp_B);
	} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "sp") != NULL) {
		free(vect4_sp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(vect4_sp_B);
	} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "sp") != NULL) {
		free(vect8_sp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(vect8_sp_B);
	} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "sp") != NULL) {
		free(vect16_sp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(vect16_sp_B);
	} else if (strstr(kernel_choice, "scalar") != NULL && strstr(kernel_choice, "dp") != NULL) {
		free(scalar_dp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(scalar_dp_B);
	} else if (strstr(kernel_choice, "vect2") != NULL && strstr(kernel_choice, "dp") != NULL) {
		free(vect2_dp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(vect2_dp_B);
	} else if (strstr(kernel_choice, "vect4") != NULL && strstr(kernel_choice, "dp") != NULL) {
		free(vect4_dp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(vect4_dp_B);
	} else if (strstr(kernel_choice, "vect8") != NULL && strstr(kernel_choice, "dp") != NULL) {
		free(vect8_dp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(vect8_dp_B);
	} else if (strstr(kernel_choice, "vect16") != NULL && strstr(kernel_choice, "dp") != NULL) {
		free(vect16_dp_A);
		if (kernel_type == 'f' || kernel_type == 's' || kernel_type == 'p') free(vect16_dp_B);
	}
	
	//if (app_name_args != NULL) free(app_name_args);
	//if (quiet) fclose(stdout);

}
