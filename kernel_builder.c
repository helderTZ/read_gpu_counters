#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>

#include "kernel_builder.h"


int build_flops_kernel(int flops, int simd, flop_op_t op) {

	int i;
	int iter = (flops*flop_per_op[op])/(simd/4);

	if( !(simd==4 || simd==8 || simd==16 || simd==32) )
		return -1;

	FILE *f_kernel = fopen("custom_kernel.cl", "w");

	fprintf(f_kernel, "__kernel void custom(__global float%d *a) {\n", simd);
	fprintf(f_kernel, "\tint i = get_global_id(0);\n");
	fprintf(f_kernel, "\tint j;\n");
	fprintf(f_kernel, "\tfor(j = 0; j < %d; j++) {\n",iter);
	
	for(i = 0; i < iter; i++) {
		switch(op) {
			case ADD: fprintf(f_kernel, "\t\ta[i] = a[i] + 1.0f;\n"); break;
			case SUB: fprintf(f_kernel, "\t\ta[i] = a[i] - 1.0f;\n"); break;
			case MUL: fprintf(f_kernel, "\t\ta[i] = a[i] * 2.0f;\n"); break;
			case DIV: fprintf(f_kernel, "\t\ta[i] = a[i] / 2.0f;\n"); break;
			case MAD: fprintf(f_kernel, "\t\ta[i] = a[i] * 2.0f + 1.0f;\n"); break;
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
	
	fprintf(f_kernel, "__kernel void custom(__global float%d *a, __global float%d *b) {\n", simd, simd);
	fprintf(f_kernel, "\tint i = get_global_id(0);\n");
	fprintf(f_kernel, "\tint j;\n");
	fprintf(f_kernel, "\tfor(j = 0; j < %d; j++) {\n",iter);
	
	for(i = 0; i < iter; i++) {
		switch(op) {
			case LD: fprintf(f_kernel, "\t\tfloat%d temp = a[i];\n", simd); break;
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



void str_tolower(char *str) {

	char *p = str;
	for( ; *p; ++p) 
		*p = tolower((unsigned char)*p);
		//*p = (*p) + 32;

}

void str_toupper(char *str) {

	char *p = str;
	for( ; *p; ++p) 
		*p = toupper((unsigned char)*p);
		//*p = (*p) - 32;

}





int main(int argc, char **argv) {

	operation_t op = NOP;
	flop_op_t flop_op;
	mem_op_t mem_op;
	int flops = 0;
	int loads = 0;
	int stores = 0;
	int simd = 0;
	int i;
	int err;


	if (argc > 1) {

		for(i = 0; i < argc; i++) {

			if (strcmp(argv[i], "--op")==0 && i+2 < argc) {
				str_tolower(argv[i+1]);
				if(strcmp(argv[i+1], "flop")==0) 	{ op = FLOP; flops = atoi(argv[i+2]); }
				if(strcmp(argv[i+1], "mem")==0)  	{ op = MEM; }
				if(strcmp(argv[i+1], "hybrid")==0) 	{ op = HYB; }
			}

			if(strcmp(argv[i], "--type")==0) {
				str_tolower(argv[i+1]);
				if(op == FLOP && i+1 < argc) {
					if(strcmp(argv[i+1], "add")==0) flop_op = ADD;
					if(strcmp(argv[i+1], "sub")==0) flop_op = SUB;
					if(strcmp(argv[i+1], "mul")==0) flop_op = MUL;
					if(strcmp(argv[i+1], "div")==0) flop_op = DIV;
					if(strcmp(argv[i+1], "mad")==0) flop_op = MAD;
				}
				if(op == MEM && (i+2 < argc || i+3 < argc)) {
					if(strcmp(argv[i+1], "ld")==0) 		{ mem_op = LD; loads = atoi(argv[i+2]); }
					if(strcmp(argv[i+1], "st")==0) 		{ mem_op = ST; stores = atoi(argv[i+2]); }
					if(strcmp(argv[i+1], "hybrid")==0) 	{ mem_op = HYBRID; loads = atoi(argv[i+2]); stores = atoi(argv[i+2]); }
				}
			}

			if(strcmp(argv[i], "--simd")==0 && i+1 < argc) {
				simd = atoi(argv[i+1]);
			}

		}

	}

	if(op == FLOP) err = build_flops_kernel(flops, simd, flop_op);
	if(op == MEM) err = build_mem_kernel(loads, stores, simd, mem_op);
	
	if(err!=0) printf("Err = %d\n", err);
}
