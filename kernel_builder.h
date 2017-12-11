#ifndef __KERNEL_BUILDER_H__
#define __KERNEL_BUILDER_H__


int build_flops_kernel(int flops);
int build_mem_kernel(int loads, int stores);
int build_hybrid_kernel(int flops, int loads, int stores);


#endif