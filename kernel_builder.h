#ifndef __KERNEL_BUILDER_H__
#define __KERNEL_BUILDER_H__

enum flop_op {
    ADD,
    SUB,
    MUL,
    DIV,
    MAD
}

enum mem_op {
    LD,
    ST,
    HYBRID
}

int flop_per_op[] {
    [ADD] = 1,
    [SUB] = 1,
    [MUL] = 1,
    [DIV] = 1,
    [MAD] = 2
}


int build_flops_kernel(int flops, int simd, enum flop_op op);
int build_mem_kernel(int loads, int stores, int simd, enum mem_op op);
int build_hybrid_kernel(int flops, int loads, int stores);


#endif
