

 /******************************************************
  * Scalar single-precision load only with loop kernels
  * ***************************************************/

__kernel void scalar_sp_load_iter_1024_kernel(__global float *src, __global float *dst) {
	int i = get_global_id(0);
	int j;
	float temp = src[i];
	for(j = 0; j < 1024; j++)
		temp += src[i];
	dst[i] = temp;
}


 /******************************************************
  * Vector single-precision load only with loop kernels
  * ***************************************************/

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_load_iter_1024_kernel(__global float2 *src, __global float2 *dst) {
	int i = get_global_id(0);
	int j;
	float2 temp = src[i];
	for(j = 0; j < 1024; j++)
		temp += src[i];
	dst[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_load_iter_1024_kernel(__global float4 *src, __global float4 *dst) {
	int i = get_global_id(0);
	int j;
	float4 temp = src[i];
	for(j = 0; j < 1024; j++)
		temp += src[i];
	dst[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_load_iter_1024_kernel(__global float8 *src, __global float8 *dst) {
	int i = get_global_id(0);
	int j;
	float8 temp = src[i];
	for(j = 0; j < 1024; j++)
		temp += src[i];
	dst[i] = temp;
}


__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_load_iter_1024_kernel(__global float16 *src, __global float16 *dst) {
	int i = get_global_id(0);
	int j;
	float16 temp = src[i];
	for(j = 0; j < 1024; j++)
		temp += src[i];
	dst[i] = temp;
}

 
 
 
 
 
 
 
 
 
 
 



 /******************************************************
  * Scalar single-precision with loop kernels
  * ***************************************************/
 
 __kernel void scalar_sp_load_store_iter_1024_kernel(__global float *src, __global float *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}

 /******************************************************
  * Vector single-precision with loop kernels
  * ***************************************************/
 
 __kernel void __attribute__((vec_type_hint(float2))) vect2_sp_load_store_iter_1024_kernel(__global float2 *src, __global float2 *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}

 __kernel void __attribute__((vec_type_hint(float4))) vect4_sp_load_store_iter_1024_kernel(__global float4 *src, __global float4 *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}

 __kernel void __attribute__((vec_type_hint(float8))) vect8_sp_load_store_iter_1024_kernel(__global float8 *src, __global float8 *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}

 __kernel void __attribute__((vec_type_hint(float16))) vect16_sp_load_store_iter_1024_kernel(__global float16 *src, __global float16 *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}










 /******************************************************
  * Scalar double-precision with loop kernels
  * ***************************************************/
 
 __kernel void scalar_dp_load_store_iter_1024_kernel(__global double *src, __global double *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}

 /******************************************************
  * Vector double-precision with loop kernels
  * ***************************************************/
 
 __kernel void __attribute__((vec_type_hint(float2))) vect2_dp_load_store_iter_1024_kernel(__global double2 *src, __global double2 *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}

 __kernel void __attribute__((vec_type_hint(float4))) vect4_dp_load_store_iter_1024_kernel(__global double4 *src, __global double4 *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}

 __kernel void __attribute__((vec_type_hint(float8))) vect8_dp_load_store_iter_1024_kernel(__global double8 *src, __global double8 *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}

 __kernel void __attribute__((vec_type_hint(float16))) vect16_dp_load_store_iter_1024_kernel(__global double16 *src, __global double16 *dst) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		dst[i] = src[i];
}




