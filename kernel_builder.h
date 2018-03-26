#ifndef __KERNEL_BUILDER_H__
#define __KERNEL_BUILDER_H__

void str_tolower(char *str);
void str_toupper(char *str);
const char* simd2string(int simd);
bool validate_op_flop(const char *op);
bool validate_op_mem(const char *op);
bool validate_simd(const char *simd);
int op_base_flops(const char *op);

int build_flops_kernel(int flops ,int simd, const char *op);
int build_mem_kernel(int loads, int stores, int simd, const char *op);
int build_hybrid_kernel(int flops, int loads, int stores);



#endif
