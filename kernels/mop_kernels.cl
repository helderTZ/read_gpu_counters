
 /******************************************************
  * Scalar single-precision load only kernels
  * ***************************************************/
 
 __kernel void scalar_sp_load_kernel(__global float *a) {
	int i = get_global_id(0);
	a[i] = 2.0f;
}


 /******************************************************
  * Scalar single-precision load only with loop kernels
  * ***************************************************/
 
 __kernel void scalar_sp_load_iter_1024_kernel(__global float *a) {
	int i = get_global_id(0);
	int j;
	float b[1024];
	for(j = 0; j < 1024; j++)
		b[j] = a[i];
}

 /******************************************************
  * Scalar single-precision load only with loop kernels
  * ***************************************************/
 
 __kernel void scalar_sp_load_iter_1024_global2priv_kernel(__global float *a) {
	int i = get_global_id(0);
	int j;
	int priv = 2.0f;
	for(j = 0; j < 1024; j++)
		priv = a[i];
}












 /******************************************************
  * Scalar single-precision kernels
  * ***************************************************/
 
 __kernel void scalar_sp_load_store_kernel(__global float *src, __global float *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 /******************************************************
  * Vector single-precision kernels
  * ***************************************************/
 
 __kernel void vect2_sp_load_store_kernel(__global float2 *src, __global float2 *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 __kernel void vect4_sp_load_store_kernel(__global float4 *src, __global float4 *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 __kernel void vect8_sp_load_store_kernel(__global float8 *src, __global float8 *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 __kernel void vect16_sp_load_store_kernel(__global float16 *src, __global float16 *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 /******************************************************
  * Scalar double-precision kernels
  * ***************************************************/
 
 __kernel void scalar_dp_load_store_kernel(__global double *src, __global double *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 /******************************************************
  * Vector double-precision kernels
  * ***************************************************/
 
 __kernel void vect2_dp_load_store_kernel(__global double2 *src, __global double2 *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 __kernel void vect4_dp_load_store_kernel(__global double4 *src, __global double4 *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 __kernel void vect8_dp_load_store_kernel(__global double8 *src, __global double8 *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}

 __kernel void vect16_dp_load_store_kernel(__global double16 *src, __global double16 *dst) {
	int i = get_global_id(0);
	dst[i] = src[i];
}


 /******************************************************
  * Scalar single-precision with loop kernels
  * ***************************************************/
 
 __kernel void scalar_sp_load_store_iter_1024_kernel(__global float *src, __global float *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}

 /******************************************************
  * Vector single-precision with loop kernels
  * ***************************************************/
 
 __kernel void vect2_sp_load_store_iter_1024_kernel(__global float2 *src, __global float2 *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}

 __kernel void vect4_sp_load_store_iter_1024_kernel(__global float4 *src, __global float4 *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}

 __kernel void vect8_sp_load_store_iter_1024_kernel(__global float8 *src, __global float8 *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}

 __kernel void vect16_sp_load_store_iter_1024_kernel(__global float16 *src, __global float16 *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}


 /******************************************************
  * Scalar double-precision with loop kernels
  * ***************************************************/
 
 __kernel void scalar_dp_load_store_iter_1024_kernel(__global double *src, __global double *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}

 /******************************************************
  * Vector double-precision with loop kernels
  * ***************************************************/
 
 __kernel void vect2_dp_load_store_iter_1024_kernel(__global double2 *src, __global double2 *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}

 __kernel void vect4_dp_load_store_iter_1024_kernel(__global double4 *src, __global double4 *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}

 __kernel void vect8_dp_load_store_iter_1024_kernel(__global double8 *src, __global double8 *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}

 __kernel void vect16_dp_load_store_iter_1024_kernel(__global double16 *src, __global double16 *dst) {
	int i = get_global_id(0);
	int j;
	for(i = 0; i < 1024; i++)
		dst[i] = src[i];
}
