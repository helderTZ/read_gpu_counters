
#define _GNU_SOURCE

#include <stdlib.h>
#include <stdio.h>
#include <CL/cl.h>
#include "errors.h"

#include "igt.h"
#include "drm.h"
#include "read_gpu_counters.h"
#include "platform.h"

#include <sched.h>


#define SIZE 168



char kernel_choice[50] = "";
int number_available_kernels = 6;
char *available_kernels[] = {"single_flop", "flops_light", "flops_max", "load_store", "ternary", "custom"};




/* dumpBinaries
 * dumps kernel binaries to file
 * creates a file for each device the program was compiled for
 * (should only be one)
 */
void dumpBinaries(cl_program program) {

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
		sprintf(filename, "kernel_binary_dev%d.s", j);
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
	free(devices);

}






int main(int argc, char** argv) {

	int i;
	int dump = 0;
	int repeat = 1;

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
		}
	}

	// validate kernel chosen
	if(strcmp(kernel_choice, "") == 0) {
		printf("No kernel selectrd, defaulting to kernel \"flops_light\"\n");
		strcpy(kernel_choice, "flops_light");
	}

	int match = 0;
	for (int i = 0; i < number_available_kernels; i++) {
		if (strcmp(kernel_choice, available_kernels[i]) == 0) match++;
	}
	if (match == 0) {
		printf(KRED "Chosen kernel not available. Choose from:\n" KNRM);
		for (int i = 0; i < number_available_kernels; i++)
			printf("\t%s\n", available_kernels[i]);
		printf("Defaulting to kernel \"flops_light\"\n");
		strcpy(kernel_choice, "flops_light");
	}


	// set affinity ( to only run on one core)
	// helps with reading frequency
	CPU_ZERO(&my_set);
	CPU_SET(0, &my_set);
	sched_setaffinity(0, sizeof(cpu_set_t), &my_set);


	/* ============================================================================================ */
	/* ======================================= OpenCL stuff ======================================= */
	/* ============================================================================================ */
	
	int j, ocl_ret;
	float *A, *B, *C, *D, *E, *F, *G;

	// kernel source vars
	FILE *f_source;
	size_t source_size;
	char *source_str;

	// kernel build log vars
	cl_char *build_log = NULL;
	size_t build_log_len = 0;

	// kernel build options
	//char options[] = "-Diter=10000";
	cl_char *options = NULL;

	// memory initialization
	A = (float*)malloc(sizeof(float) * NUM_TOTAL_THREADS_GT2); if(A==NULL) { printf(KRED "Error allocating!\n" KNRM); exit(1); }
	B = (float*)malloc(sizeof(float) * NUM_TOTAL_THREADS_GT2); if(B==NULL) { printf(KRED "Error allocating!\n" KNRM); exit(1); }
	C = (float*)malloc(sizeof(float) * NUM_TOTAL_THREADS_GT2); if(C==NULL) { printf(KRED "Error allocating!\n" KNRM); exit(1); }
	D = (float*)malloc(sizeof(float) * NUM_TOTAL_THREADS_GT2); if(D==NULL) { printf(KRED "Error allocating!\n" KNRM); exit(1); }
	E = (float*)malloc(sizeof(float) * NUM_TOTAL_THREADS_GT2); if(E==NULL) { printf(KRED "Error allocating!\n" KNRM); exit(1); }
	F = (float*)malloc(sizeof(float) * NUM_TOTAL_THREADS_GT2); if(F==NULL) { printf(KRED "Error allocating!\n" KNRM); exit(1); }
	G = (float*)malloc(sizeof(float) * NUM_TOTAL_THREADS_GT2); if(G==NULL) { printf(KRED "Error allocating!\n" KNRM); exit(1); }
	for(i=0; i<NUM_TOTAL_THREADS_GT2; i++) {
		A[i] = 2.0;
		B[i] = 2.0;
		C[i] = 2.0;
		D[i] = 2.0;
		E[i] = 2.0;
		F[i] = 2.0;
		G[i] = 2.0;
	}
	
	// get kernel code from file
	if (strcmp(kernel_choice, "custom") == 0)
		f_source = fopen("custom_kernel.cl", "r");
	else
		f_source = fopen("kernel.cl", "r");
	fseek(f_source, 0L, SEEK_END);
	source_size = (size_t) ftell(f_source);
	fseek(f_source, 0L, SEEK_SET);
	source_str = (char*)malloc(sizeof(char)*source_size);
	fread(source_str, sizeof(char), source_size, f_source);
	fclose(f_source);



	printf("=================================================\n");
	printf("================= OpenCL kernel =================\n");
	printf("=================================================\n");
	//printf("Kernel source (%d bytes):\n%s\n", source_size, source_str);



	ocl_ret = clGetPlatformIDs(1, &platform, NULL); 								clCheckError(ocl_ret, __LINE__);
	ocl_ret = clGetDeviceIDs(platform, CL_DEVICE_TYPE_GPU, 1, &device, NULL); 		clCheckError(ocl_ret, __LINE__);
	context = clCreateContext(NULL, 1, &device, NULL, NULL, &ocl_ret); 				clCheckError(ocl_ret, __LINE__);
	command_queue = clCreateCommandQueue(context, device, 0, &ocl_ret); 			clCheckError(ocl_ret, __LINE__);
	//command_queue = clCreateCommandQueueWithProperties(context, device, NULL, &ret); clCheckError(ret, __LINE__);
	
	a = clCreateBuffer(context, CL_MEM_READ_WRITE, NUM_TOTAL_THREADS_GT2*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
	b = clCreateBuffer(context, CL_MEM_READ_WRITE, NUM_TOTAL_THREADS_GT2*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
	c = clCreateBuffer(context, CL_MEM_READ_WRITE, NUM_TOTAL_THREADS_GT2*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
	d = clCreateBuffer(context, CL_MEM_READ_WRITE, NUM_TOTAL_THREADS_GT2*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
	e = clCreateBuffer(context, CL_MEM_READ_WRITE, NUM_TOTAL_THREADS_GT2*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
	f = clCreateBuffer(context, CL_MEM_READ_WRITE, NUM_TOTAL_THREADS_GT2*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
	g = clCreateBuffer(context, CL_MEM_READ_WRITE, NUM_TOTAL_THREADS_GT2*sizeof(float), NULL, &ocl_ret); clCheckError(ocl_ret, __LINE__);
	
	ocl_ret = clEnqueueWriteBuffer(command_queue, a, CL_TRUE, 0, NUM_TOTAL_THREADS_GT2*sizeof(float), A, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
	ocl_ret = clEnqueueWriteBuffer(command_queue, b, CL_TRUE, 0, NUM_TOTAL_THREADS_GT2*sizeof(float), B, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
	ocl_ret = clEnqueueWriteBuffer(command_queue, c, CL_TRUE, 0, NUM_TOTAL_THREADS_GT2*sizeof(float), C, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
	ocl_ret = clEnqueueWriteBuffer(command_queue, d, CL_TRUE, 0, NUM_TOTAL_THREADS_GT2*sizeof(float), D, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
	ocl_ret = clEnqueueWriteBuffer(command_queue, e, CL_TRUE, 0, NUM_TOTAL_THREADS_GT2*sizeof(float), E, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
	ocl_ret = clEnqueueWriteBuffer(command_queue, f, CL_TRUE, 0, NUM_TOTAL_THREADS_GT2*sizeof(float), F, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
	ocl_ret = clEnqueueWriteBuffer(command_queue, g, CL_TRUE, 0, NUM_TOTAL_THREADS_GT2*sizeof(float), G, 0, NULL, NULL); clCheckError(ocl_ret, __LINE__);
	
	program = clCreateProgramWithSource(context, 1, (const char**)&source_str, (const size_t*)&source_size, &ocl_ret); 	clCheckError(ocl_ret, __LINE__);
	ocl_ret = clBuildProgram(program, 1, &device, options, NULL, NULL); 												clCheckError(ocl_ret, __LINE__);

	ocl_ret = clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_STATUS, sizeof(build_status), &build_status, NULL); 	clCheckError(ocl_ret, __LINE__);
	ocl_ret = clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, 0, NULL, &build_log_len); 						clCheckError(ocl_ret, __LINE__);
	
	// print build log for debugging
	build_log = malloc(build_log_len+1);
	ocl_ret = clGetProgramBuildInfo(program, device, CL_PROGRAM_BUILD_LOG, build_log_len, build_log, NULL); clCheckError(ocl_ret, __LINE__);
	printf("Build log:\n%s\n", build_log);
	free(build_log);


	kernel = clCreateKernel(program, kernel_choice, &ocl_ret); 		clCheckError(ocl_ret, __LINE__);
	if (strcmp(kernel_choice, "single_flop") == 0) {
		ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_mem), (void*)&a); clCheckError(ocl_ret, __LINE__);
	}
	if (strcmp(kernel_choice, "flops_light") == 0) {
		ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_mem), (void*)&a); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 1, sizeof(cl_mem), (void*)&b); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 2, sizeof(cl_mem), (void*)&c); clCheckError(ocl_ret, __LINE__);
	} else if (strcmp(kernel_choice, "flops_max") == 0) {
		ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_mem), (void*)&a); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 1, sizeof(cl_mem), (void*)&b); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 2, sizeof(cl_mem), (void*)&c); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 3, sizeof(cl_mem), (void*)&d); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 4, sizeof(cl_mem), (void*)&e); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 5, sizeof(cl_mem), (void*)&f); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 6, sizeof(cl_mem), (void*)&g); clCheckError(ocl_ret, __LINE__);
	} else if (strcmp(kernel_choice, "ternary") == 0) {
		ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_mem), (void*)&a); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 1, sizeof(cl_mem), (void*)&b); clCheckError(ocl_ret, __LINE__);
	} else if (strcmp(kernel_choice, "custom") == 0) {
		ocl_ret = clSetKernelArg(kernel, 0, sizeof(cl_mem), (void*)&a); clCheckError(ocl_ret, __LINE__);
		ocl_ret = clSetKernelArg(kernel, 1, sizeof(cl_mem), (void*)&b); clCheckError(ocl_ret, __LINE__);
	}


	//global = NUM_TOTAL_EUS_GT2;
	global = 1;
	local = 1;
	//global = NUM_TOTAL_THREADS_GT2*10;
	//local = NUM_THREADS_PER_EU;
	




	/* ============================================================================================ */
	/* ====================================== Counters stuff ====================================== */
	/* ============================================================================================ */

	bool ret;

	printf("\n\n");
	printf("=================================================\n");
	printf("===================== Counters ==================\n");
	printf("=================================================\n");
	printf("\n");

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
	write_u64_file("/proc/sys/dev/i915/perf_stream_paranoid", 1);
	write_u64_file("/proc/sys/dev/i915/oa_max_sample_rate", 100000);


	// see if ggtt or ppgtt
	// 0 - global gtt
 	// 1 - aliasing ppgtt
 	// 2 - full ppgtt, limited to 32bit address space
 	// 3 - full ppgtt, 64bit address space
	int gtt_type = gem_gtt_type(drm_fd);
	if (gtt_type == 0) 	printf(KGRN "GTT type: global gtt\n" KNRM);
	if (gtt_type == 1) 	printf(KGRN "GTT type: aliasing ppgtt\n" KNRM);
	if (gtt_type == 2) 	printf(KGRN "GTT type: full ppgtt, limited to 32bit address space\n" KNRM);
	if (gtt_type == 3) 	printf(KGRN "GTT type: full ppgtt, 64bit address space\n" KNRM);
	else				printf(KRED "GGT type: Invalid\n" KNRM);




	render_copy = igt_get_render_copyfunc(devid); // this should be replaced by the opencl kernel

	
	//test_whitelisted_registers_userspace_config();


	//write_to_flexible_eu_registers();


	// read counters, do work, read counters again and print deltas
	for(j = 0; j < repeat; j++) {
		//test_counters_with_opencl(dump);
		//read_counters_with_mmio();
        //test_counters_with_mmap();
        test_counters_with_lib();
	}






	close(drm_fd);

	// OpenCL cleanup
	clReleaseKernel(kernel);
	clReleaseProgram(program);
	clReleaseCommandQueue(command_queue);
	clReleaseContext(context);
	clReleaseMemObject(a);
	clReleaseMemObject(b);
	clReleaseMemObject(c);
	clReleaseMemObject(d);
	clReleaseMemObject(e);
	clReleaseMemObject(f);
	clReleaseMemObject(g);
	free(source_str);
	free(A);
	free(B);
	free(C);
	free(D);
	free(E);
	free(F);
	free(G);

}
