 /******************************************************
  * Scalar single-precision kernels
  * ***************************************************/
 
 __kernel void scalar_sp_add_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void scalar_sp_sub_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void scalar_sp_mul_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void scalar_sp_div_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void scalar_sp_mad_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}

 /******************************************************
  * Vector single-precision kernels
  * ***************************************************/
 
 __kernel void __attribute__((vec_type_hint(float2))) vect2_sp_add_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_sub_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mul_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_div_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mad_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_add_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_sub_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mul_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_div_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mad_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_add_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_sub_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mul_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_div_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mad_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_add_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_sub_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mul_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_div_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mad_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}



 /******************************************************
  * Scalar single-precision with loop kernels
  * ***************************************************/
 
 __kernel void scalar_sp_add_iter_1024_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void scalar_sp_sub_iter_1024_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void scalar_sp_mul_iter_1024_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void scalar_sp_div_iter_1024_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void scalar_sp_mad_iter_1024_kernel(__global float *a, __global float *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}

/******************************************************
  * Vector single-precision with loop kernels
  * ***************************************************/
 
 __kernel void __attribute__((vec_type_hint(float2))) vect2_sp_add_iter_1024_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_sub_iter_1024_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mul_iter_1024_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_div_iter_1024_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mad_iter_1024_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_add_iter_1024_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_sub_iter_1024_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mul_iter_1024_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_div_iter_1024_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mad_iter_1024_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_add_iter_1024_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_sub_iter_1024_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mul_iter_1024_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_div_iter_1024_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mad_iter_1024_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_add_iter_1024_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_sub_iter_1024_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mul_iter_1024_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_div_iter_1024_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mad_iter_1024_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}




/******************************************************
  * Scalar single-precision with loop unrolling kernels
  * ***************************************************/
 
 __kernel void scalar_sp_add_iter_128_unroll_64_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
	}
}

__kernel void scalar_sp_sub_iter_128_unroll_64_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
	}
}

__kernel void scalar_sp_mul_iter_128_unroll_64_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
	}
}

__kernel void scalar_sp_div_iter_128_unroll_64_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
	}
}

__kernel void scalar_sp_mad_iter_128_unroll_64_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
	}
}

/******************************************************
  * Vector single-precision with loop unrolling kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_add_iter_128_unroll_64_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_sub_iter_128_unroll_64_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mul_iter_128_unroll_64_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_div_iter_128_unroll_64_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mad_iter_128_unroll_64_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_add_iter_128_unroll_64_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_sub_iter_128_unroll_64_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mul_iter_128_unroll_64_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_div_iter_128_unroll_64_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mad_iter_128_unroll_64_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
	}
}


__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_add_iter_128_unroll_64_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_sub_iter_128_unroll_64_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mul_iter_128_unroll_64_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_div_iter_128_unroll_64_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mad_iter_128_unroll_64_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
	}
}


__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_add_iter_128_unroll_64_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
		a[i] = a[i] + b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_sub_iter_128_unroll_64_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
		a[i] = a[i] - b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mul_iter_128_unroll_64_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
		a[i] = a[i] * b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_div_iter_128_unroll_64_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
		a[i] = a[i] / b[i];
	}
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mad_iter_128_unroll_64_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j;
	// 128 iter * 64 unroll = 8192 flops
	for(j = 0; j < 128; j++) {
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
		a[i] = a[i] * b[i] + b[i];
	}
}


 /******************************************************
  * Scalar single-precision private mem kernels
  * ***************************************************/
 
__kernel void scalar_sp_add_priv_kernel() {
	float a = 2.0f;
	a = a + 2.0f;
}

__kernel void scalar_sp_sub_priv_kernel() {
	float a = 2.0f;
	a = a - 2.0f;
}

__kernel void scalar_sp_mul_priv_kernel() {
	float a = 2.0f;
	a = a * 2.0f;
}

__kernel void scalar_sp_div_priv_kernel() {
	float a = 2.0f;
	a = a / 2.0f;
}

__kernel void scalar_sp_mad_priv_kernel() {
	float a = 2.0f;
	a = a * 2.0f + 2.0f;
}

 /******************************************************
  * Vector single-precision private mem kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_add_priv_kernel() {
	float2 a = (float2) (2.0f);
	a = a + (float2) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_sub_priv_kernel() {
	float2 a = (float2) (2.0f);
	a = a - (float2) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mul_priv_kernel() {
	float2 a = (float2) (2.0f);
	a = a * (float2) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_div_priv_kernel() {
	float2 a = (float2) (2.0f);
	a = a / (float2) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mad_priv_kernel() {
	float2 a = (float2) (2.0f);
	a = a * (float2) 2.0f + (float2) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_add_priv_kernel() {
	float4 a = (float4) (2.0f);
	a = a + (float4) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_sub_priv_kernel() {
	float4 a = (float4) (2.0f);
	a = a - (float4) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mul_priv_kernel() {
	float4 a = (float4) (2.0f);
	a = a * (float4) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_div_priv_kernel() {
	float4 a = (float4) (2.0f);
	a = a / (float4) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mad_priv_kernel() {
	float4 a = (float4) (2.0f);
	a = a * (float4) 2.0f + (float4) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_add_priv_kernel() {
	float8 a = (float8) (2.0f);
	a = a + (float8) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_sub_priv_kernel() {
	float8 a = (float8) (2.0f);
	a = a - (float8) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mul_priv_kernel() {
	float8 a = (float8) (2.0f);
	a = a * (float8) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_div_priv_kernel() {
	float8 a = (float8) (2.0f);
	a = a / (float8) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mad_priv_kernel() {
	float8 a = (float8) (2.0f);
	a = a * (float8) 2.0f + (float8) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_add_priv_kernel() {
	float16 a = (float16) (2.0f);
	a = a + (float16) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_sub_priv_kernel() {
	float16 a = (float16) (2.0f);
	a = a - (float16) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mul_priv_kernel() {
	float16 a = (float16) (2.0f);
	a = a * (float16) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_div_priv_kernel() {
	float16 a = (float16) (2.0f);
	a = a / (float16) 2.0f;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mad_priv_kernel() {
	float16 a = (float16) (2.0f);
	a = a * (float16) 2.0f + (float16) 2.0f;
}

 /******************************************************
  * Scalar single-precision private mem with loop kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(float))) scalar_sp_add_priv_iter_1024_kernel(__global float *a) {
	int i = get_global_id(0);
	int j;
	float temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float))) scalar_sp_sub_priv_iter_1024_kernel(__global float *a) {
	int i = get_global_id(0);
	int j;
	float temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - 2.0f;
	a[i] = temp;
}


__kernel void __attribute__((vec_type_hint(float))) scalar_sp_mul_priv_iter_1024_kernel(__global float *a) {
	int i = get_global_id(0);
	int j;
	float temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float))) scalar_sp_div_priv_iter_1024_kernel(__global float *a) {
	int i = get_global_id(0);
	int j;
	float temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float))) scalar_sp_mad_priv_iter_1024_kernel(__global float *a) {
	int i = get_global_id(0);
	int j;
	float temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * 2.0f + 2.0f;
	a[i] = temp;
}


 /******************************************************
  * Vector single-precision private mem with loop kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_add_priv_iter_1024_kernel(__global float2 *a) {
	int i = get_global_id(0);
	int j;
	float2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + (float2) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_sub_priv_iter_1024_kernel(__global float2 *a) {
	int i = get_global_id(0);
	int j;
	float2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - (float2) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mul_priv_iter_1024_kernel(__global float2 *a) {
	int i = get_global_id(0);
	int j;
	float2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (float2) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_div_priv_iter_1024_kernel(__global float2 *a) {
	int i = get_global_id(0);
	int j;
	float2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / (float2) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mad_priv_iter_1024_kernel(__global float2 *a) {
	int i = get_global_id(0);
	int j;
	float2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (float2) 2.0f + (float2) 2.0f;
	a[i] = temp;
}


__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_add_priv_iter_1024_kernel(__global float4 *a) {
	int i = get_global_id(0);
	int j;
	float4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + (float4) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_sub_priv_iter_1024_kernel(__global float4 *a) {
	int i = get_global_id(0);
	int j;
	float4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - (float4) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mul_priv_iter_1024_kernel(__global float4 *a) {
	int i = get_global_id(0);
	int j;
	float4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (float4) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_div_priv_iter_1024_kernel(__global float4 *a) {
	int i = get_global_id(0);
	int j;
	float4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / (float4) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mad_priv_iter_1024_kernel(__global float4 *a) {
	int i = get_global_id(0);
	int j;
	float4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (float4) 2.0f + (float4) 2.0f;
	a[i] = temp;
}



__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_add_priv_iter_1024_kernel(__global float8 *a) {
	int i = get_global_id(0);
	int j;
	float8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + (float8) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_sub_priv_iter_1024_kernel(__global float8 *a) {
	int i = get_global_id(0);
	int j;
	float8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - (float8) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mul_priv_iter_1024_kernel(__global float8 *a) {
	int i = get_global_id(0);
	int j;
	float8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (float8) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_div_priv_iter_1024_kernel(__global float8 *a) {
	int i = get_global_id(0);
	int j;
	float8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / (float8) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mad_priv_iter_1024_kernel(__global float8 *a) {
	int i = get_global_id(0);
	int j;
	float8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (float8) 2.0f + (float8) 2.0f;
	a[i] = temp;
}



__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_add_priv_iter_1024_kernel(__global float16 *a) {
	int i = get_global_id(0);
	int j;
	float16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + (float16) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_sub_priv_iter_1024_kernel(__global float16 *a) {
	int i = get_global_id(0);
	int j;
	float16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - (float16) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mul_priv_iter_1024_kernel(__global float16 *a) {
	int i = get_global_id(0);
	int j;
	float16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (float16) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_div_priv_iter_1024_kernel(__global float16 *a) {
	int i = get_global_id(0);
	int j;
	float16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / (float16) 2.0f;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mad_priv_iter_1024_kernel(__global float16 *a) {
	int i = get_global_id(0);
	int j;
	float16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (float16) 2.0f + (float16) 2.0f;
	a[i] = temp;
}


