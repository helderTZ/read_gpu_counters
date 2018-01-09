#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "kernel_builder.h"


int build_flops_kernel(int flops, int simd, flop_op_t op) {

	int i;
	int iter = (flops*flop_per_op[op])/simd;

	if( !(simd==4 || simd==8 || simd==16 || simd==32) )
		return -1;

	FILE *f_kernel = fopen("custom_kernel.cl", "w");

	fprintf(f_kernel, "__kernel void custom_flops(__global float%d *a) {\n", simd);
	fprintf(f_kernel, "\tint i = get_global_id(0);\n");
	fprintf(f_kernel, "\tint j;\n");
	fprintf(f_kernel, "\tfor(j = 0; j < %d; j++) {\n",iter);
	
	for(i = 0; i < iter; i++) {
		switch(op) {
			case ADD: fprintf(f_kernel, "\t\ta[i] = a[i] + 1;\n"); break;
			case SUB: fprintf(f_kernel, "\t\ta[i] = a[i] - 1;\n"); break;
			case MUL: fprintf(f_kernel, "\t\ta[i] = a[i] * 2;\n"); break;
			case DIV: fprintf(f_kernel, "\t\ta[i] = a[i] / 2;\n"); break;
			case MAD: fprintf(f_kernel, "\t\ta[i] = a[i] * 2 + 1;\n"); break;
			default: return -1;
		}
	}
	
	fprintf(f_kernel, "\t}\n}");                

	fclose(f_kernel);

	return 0;
}



int build_mem_kernel(int loads, int stores, int simd, mem_op_t op) {

	int i;
	int iter = (loads+stores)/simd;

	if( !(simd==4 || simd==8 || simd==16 || simd==32) )
		return -1;

	FILE *f_kernel = fopen("custom_kernel.cl", "w");
	
	fprintf(f_kernel, "__kernel void custom_mem(__global float%d *a, __global float%d *b) {\n", simd, simd);
	fprintf(f_kernel, "\tint i = get_global_id(0);\n");
	fprintf(f_kernel, "\tint j;\n");
	fprintf(f_kernel, "\tfor(j = 0; j < %d; j++) {\n",iter);
	
	for(i = 0; i < iter; i++) {
		switch(op) {
			case LD: fprintf(f_kernel, "\t\tfloat%d temp = a[i];\n"); break;
			case ST: fprintf(f_kernel, "\t\ta[i] = 2;\n"); break;
			case HYBRID: fprintf(f_kernel, "\t\ta[i] = b[i];\n"); break;
			default: return -1;
		}
	}
	
	fprintf(f_kernel, "\t}\n}");  

	fclose(f_kernel);

	return 0;
}



int build_hybrid_kernel(int flops, int loads, int stores) {

	FILE *f_kernel = fopen("custom_kernel.cl", "w");



	fclose(f_kernel);

	return 0;
}


int main(int argc, char **argv) {

	flop_op_t f_op = MAD;
	int err = build_flops_kernel(1000, 4, f_op);

	printf("Err = %d\n", err);

}