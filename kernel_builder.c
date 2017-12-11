#include <stdlib.h>
#include <stdio.h>
#include <string.h>

 
int build_flops_kernel(int flops) {

	FILE *f_kernel = fopen("custom_kernel.cl", "w");



	fclose(f_kernel);

	return 0;
}



int build_mem_kernel(int loads, int stores) {

	FILE *f_kernel = fopen("custom_kernel.cl", "w");



	fclose(f_kernel);

	return 0;
}



int build_hybrid_kernel(int flops, int loads, int stores) {

	FILE *f_kernel = fopen("custom_kernel.cl", "w");



	fclose(f_kernel);

	return 0;
}