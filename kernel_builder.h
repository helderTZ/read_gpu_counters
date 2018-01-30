#ifndef __KERNEL_BUILDER_H__
#define __KERNEL_BUILDER_H__

typedef enum operation {
	NOP,
	FLOP,
	MEM,
	HYB
} operation_t;

typedef enum flop_op {
	ADD,
	SUB,
	MUL,
	DIV,
	MAD
} flop_op_t;

typedef enum mem_op {
	LD,
	ST,
	HYBRID
} mem_op_t;

int flop_per_op[] {
	[ADD] = 1,
	[SUB] = 1,
	[MUL] = 1,
	[DIV] = 1,
	[MAD] = 2
};

void str_tolower(char *str);
void str_toupper(char *str);

int build_flops_kernel(int flops, int simd, flop_op_t op);
int build_mem_kernel(int loads, int stores, int simd, mem_op_t op);
int build_hybrid_kernel(int flops, int loads, int stores);


#endif
