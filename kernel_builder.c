#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h>

#include "kernel_builder.h"




	
void str_tolower(char *str) {

	char *p = str;
	for( ; *p; ++p) 
		//*p = tolower((unsigned char)*p);
		*p = (*p) + 32;

}

void str_toupper(char *str) {

	char *p = str;
	for( ; *p; ++p) 
		//p = toupper((unsigned char)*p);
		*p = (*p) - 32;

}

const char* simd2string(int simd) {
	
	switch(simd) {
		case 1: return "";
		case 2: return "2";
		case 4: return "4";
		case 8: return "8";
		case 16: return "16";
		default: return "-1";
	}
}

bool validate_op_flop(const char *op) {
	
	if 		(strcmp(op, "ADD")==0) 	return true;
	else if (strcmp(op, "SUB")==0) 	return true;
	else if (strcmp(op, "MUL")==0) 	return true;
	else if (strcmp(op, "DIV")==0) 	return true;
	else if (Strcmp(op, "MAD")==0) 	return true;
	else							return false;
}

bool validate_op_mem(const char *op) {
	
	if 		(strcmp(op, "LD")==0) 	return true;
	else if (strcmp(op, "ST")==0) 	return true;
	else if (strcmp(op, "HYB")==0) 	return true;
	else							return false;
}

bool validate_simd(const char *simd) {
	
	switch(simd) {
		case 1:
		case 2:
		case 4:
		case 8:
		case 16:
			return true;
		default:
			return false;
	}
}

int op_base_flops(const char *op) {
	
	if 		(strcmp(op, "ADD")==0) 	return 1;
	else if (strcmp(op, "SUB")==0) 	return 1;
	else if (strcmp(op, "MUL")==0) 	return 1;
	else if (strcmp(op, "DIV")==0) 	return 1;
	else if (Strcmp(op, "MAD")==0) 	return 2;
	else							return 0;
}




int build_flops_kernel(int flops ,int simd, const char *op) {
	
	if (!validate_op_flop(op)) return -1;
	if (!validate_simd(simd)) return -1;
	
		int i;
	int flops_per_op = op_base_flops(op);

	FILE *f_kernel = fopen("kernels/custom_kernel.cl", "w");

	fprintf(f_kernel, "__kernel void flop_custom(__global float%s *a, int iter) {\n", simd2string(simd));
	fprintf(f_kernel, "\tint i = get_global_id(0);\n");
	fprintf(f_kernel, "\tint j;\n");
	fprintf(f_kernel, "\tfor(j = 0; j < iter; j++) {\n");
	
	for(i = 0; i < iter; i++) {
		if 		(strcmp(op, "ADD")==0) fprintf(f_kernel, "\t\ta[i] = a[i] + 1.0f;\n");
		else if (strcmp(op, "SUB")==0) fprintf(f_kernel, "\t\ta[i] = a[i] - 1.0f;\n");
		else if (strcmp(op, "MUL")==0) fprintf(f_kernel, "\t\ta[i] = a[i] * 2.0f;\n");
		else if (strcmp(op, "DIV")==0) fprintf(f_kernel, "\t\ta[i] = a[i] / 2.0f;\n");
		else if (strcmp(op, "MAD")==0) fprintf(f_kernel, "\t\ta[i] = a[i] * 2.0f + 1.0f;\n");
	}
	
	fprintf(f_kernel, "\t}\n}");                

	fclose(f_kernel);

	return 0;
}



int build_mem_kernel(int loads, int stores, int simd, const char *op) {

	if (!validate_op_mem(op)) return -1;
	if (!validate_simd(simd)) return -1;
	
	int i;

	if( !(simd==1 || simd==2 || simd==4 || simd==8 || simd==16) )
		return -1;

	FILE *f_kernel = fopen("kernels/custom_kernel.cl", "w");
	
	fprintf(f_kernel, "__kernel void mem_custom(__global float%s *a, __global float%s *b, int iter, int loads, int stores) {\n", simd2string(simd), simd2string(simd));
	fprintf(f_kernel, "\tint i = get_global_id(0);\n");
	fprintf(f_kernel, "\tint j, k;\n");
	fprintf(f_kernel, "\tfor(j = 0; j < iter; j++) {\n");
	
	for(i = 0; i < iter; i++) {
		if (strcmp(op, "LD")==0) {
			fprintf(f_kernel, "\t\tfloat%d temp;\n", simd);
			//fprintf(f_kernel, "\t\tfor(k = 0; k < loads; k++) {\n");
			fprintf(f_kernel, "\t\t\ttemp = a[i];\n");
			fprintf(f_kernel, "\t\t}\n");
		}			
		else if (strcmp(op, "ST")==0) {
			//fprintf(f_kernel, "\t\tfor(k = 0; k < stores; k++) {\n");
			fprintf(f_kernel, "\t\t\tfloat%d temp = (float%d)(j);\n", simd, simd);
			fprintf(f_kernel, "\t\t\ta[i] = temp;\n");
			fprintf(f_kernel, "\t\t}\n");
		}
		else if (strcmp(op, "HYB")==0) {
			fprintf(f_kernel, "\t\ta[i] = b[i];\n");
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







/*
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
*/

