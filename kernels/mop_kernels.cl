

 /******************************************************
  * Scalar single-precision load only with loop kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(float))) scalar_sp_load_iter_1024_kernel(__global float *src, __global float *dst) {
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
  * Scalar single-precision load only with loop kernels
  * trying to fight optimization to not kill mem access
  * ***************************************************/

__kernel void __attribute__((vec_type_hint(float))) scalar_sp_load_iter_1024_kernel_better(__global float *src, __global float *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float temp = src[i];
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) temp += src[i+j];
		else if(i-j > 0)  temp += src[i-j];
		else              temp += src[i];
	}
	dst[i] = temp;
}

 /******************************************************
  * Vector single-precision load only with loop kernels
  * trying to fight optimization to not kill mem access
  * ***************************************************/

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_load_iter_1024_kernel_better(__global float2 *src, __global float2 *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float2 temp = src[i];
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) temp += src[i+j];
		else if(i-j > 0)  temp += src[i-j];
		else              temp += src[i];
	}
	dst[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_load_iter_1024_kernel_better(__global float4 *src, __global float4 *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float4 temp = src[i];
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) temp += src[i+j];
		else if(i-j > 0)  temp += src[i-j];
		else              temp += src[i];
	}
	dst[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_load_iter_1024_kernel_better(__global float8 *src, __global float8 *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float8 temp = src[i];
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) temp += src[i+j];
		else if(i-j > 0)  temp += src[i-j];
		else              temp += src[i];
	}
	dst[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_load_iter_1024_kernel_better(__global float16 *src, __global float16 *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float16 temp = src[i];
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) temp += src[i+j];
		else if(i-j > 0)  temp += src[i-j];
		else              temp += src[i];
	}
	dst[i] = temp;
}








 /******************************************************
  * Scalar single-precision store only with loop kernels
  * ***************************************************/

__kernel void __attribute__((vec_type_hint(float))) scalar_sp_store_iter_1024_kernel(__global float *src, __global float *dst) {
	int i = get_global_id(0);
	int j;
	float temp = 0.5f;
	for(j = 0; j < 1024; j++)
		src[i] += temp;
}


 /******************************************************
  * Vector single-precision store only with loop kernels
  * ***************************************************/

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_store_iter_1024_kernel(__global float2 *src, __global float2 *dst) {
	int i = get_global_id(0);
	int j;
	float2 temp = (float2) 0.5f;
	for(j = 0; j < 1024; j++)
		src[i] += temp;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_store_iter_1024_kernel(__global float4 *src, __global float4 *dst) {
	int i = get_global_id(0);
	int j;
	float4 temp = (float4) 0.5f;
	for(j = 0; j < 1024; j++)
		src[i] += temp;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_store_iter_1024_kernel(__global float8 *src, __global float8 *dst) {
	int i = get_global_id(0);
	int j;
	float8 temp = (float8) 0.5f;
	for(j = 0; j < 1024; j++)
		src[i] += temp;
}


__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_store_iter_1024_kernel(__global float16 *src, __global float16 *dst) {
	int i = get_global_id(0);
	int j;
	float16 temp = (float16) 0.5f;
	for(j = 0; j < 1024; j++)
		src[i] += temp;
}

 
 
 
 
 
 
 
  /******************************************************
  * Scalar single-precision store only with loop kernels
  * trying to fight optimization to not kill mem access
  * ***************************************************/

__kernel void __attribute__((vec_type_hint(float))) scalar_sp_store_iter_1024_kernel_better(__global float *src, __global float *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float temp = 0.5f;
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) src[i+j] += temp;
		else if(i-j > 0)  src[i-j] += temp;
		else              src[i] += temp;
	}
}

  /******************************************************
  * Vector single-precision store only with loop kernels
  * trying to fight optimization to not kill mem access
  * ***************************************************/

__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_store_iter_1024_kernel_better(__global float2 *src, __global float2 *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float2 temp = (float2) 0.5f;
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) src[i+j] += temp;
		else if(i-j > 0)  src[i-j] += temp;
		else              src[i] += temp;
	}
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_store_iter_1024_kernel_better(__global float4 *src, __global float4 *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float4 temp = (float4) 0.5f;
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) src[i+j] += temp;
		else if(i-j > 0)  src[i-j] += temp;
		else              src[i] += temp;
	}
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_store_iter_1024_kernel_better(__global float8 *src, __global float8 *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float8 temp = (float8) 0.5f;
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) src[i+j] += temp;
		else if(i-j > 0)  src[i-j] += temp;
		else              src[i] += temp;
	}
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_store_iter_1024_kernel_better(__global float16 *src, __global float16 *dst) {
	int i = get_global_id(0);
	int num_groups = get_num_groups(0);
	int group_size = get_global_size(0);
	int max_idx = num_groups*get_global_size(0);
	int j;
	float16 temp = (float16) 0.5f;
	for(j = 0; j < 1024; j++) {
		if(i+j < max_idx) src[i+j] += temp;
		else if(i-j > 0)  src[i-j] += temp;
		else              src[i] += temp;
	}
}









 /******************************************************
  * Scalar single-precision with loop kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(float2))) scalar_sp_load_store_iter_1024_kernel(__global float *src, __global float *dst) {
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
 
 __kernel void __attribute__((vec_type_hint(float))) scalar_dp_load_store_iter_1024_kernel(__global double *src, __global double *dst) {
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




