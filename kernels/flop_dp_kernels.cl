 /******************************************************
  * Scalar double-precision kernels
  * ***************************************************/
 
 __kernel void scalar_dp_add_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void scalar_dp_sub_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void scalar_dp_mul_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void scalar_dp_div_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void scalar_dp_mad_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}

 /******************************************************
  * Vector double-precision kernels
  * ***************************************************/
 
 __kernel void vect2_dp_add_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void vect2_dp_sub_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void vect2_dp_mul_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void vect2_dp_div_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void vect2_dp_mad_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}

__kernel void vect4_dp_add_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void vect4_dp_sub_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void vect4_dp_mul_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void vect4_dp_div_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void vect4_dp_mad_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}

__kernel void vect8_dp_add_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void vect8_dp_sub_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void vect8_dp_mul_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void vect8_dp_div_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void vect8_dp_mad_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}

__kernel void vect16_dp_add_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] + b[i];
}

__kernel void vect16_dp_sub_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] - b[i];
}

__kernel void vect16_dp_mul_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i];
}

__kernel void vect16_dp_div_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] / b[i];
}

__kernel void vect16_dp_mad_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	a[i] = a[i] * b[i] + b[i];
}


 /******************************************************
  * Scalar double-precision with loop kernels
  * ***************************************************/
 
 __kernel void scalar_dp_add_iter_8192_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] + b[i];
}

__kernel void scalar_dp_sub_iter_8192_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] - b[i];
}

__kernel void scalar_dp_mul_iter_8192_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i];
}

__kernel void scalar_dp_div_iter_8192_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] / b[i];
}

__kernel void scalar_dp_mad_iter_8192_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i] + b[i];
}

/******************************************************
  * Vector double-precision with loop kernels
  * ***************************************************/
 
 __kernel void vect2_dp_add_iter_8192_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] + b[i];
}

__kernel void vect2_dp_sub_iter_8192_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] - b[i];
}

__kernel void vect2_dp_mul_iter_8192_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i];
}

__kernel void vect2_dp_div_iter_8192_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] / b[i];
}

__kernel void vect2_dp_mad_iter_8192_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void vect4_dp_add_iter_8192_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] + b[i];
}

__kernel void vect4_dp_sub_iter_8192_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] - b[i];
}

__kernel void vect4_dp_mul_iter_8192_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i];
}

__kernel void vect4_dp_div_iter_8192_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] / b[i];
}

__kernel void vect4_dp_mad_iter_8192_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void vect8_dp_add_iter_8192_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] + b[i];
}

__kernel void vect8_dp_sub_iter_8192_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] - b[i];
}

__kernel void vect8_dp_mul_iter_8192_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i];
}

__kernel void vect8_dp_div_iter_8192_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] / b[i];
}

__kernel void vect8_dp_mad_iter_8192_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void vect16_dp_add_iter_8192_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] + b[i];
}

__kernel void vect16_dp_sub_iter_8192_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] - b[i];
}

__kernel void vect16_dp_mul_iter_8192_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i];
}

__kernel void vect16_dp_div_iter_8192_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] / b[i];
}

__kernel void vect16_dp_mad_iter_8192_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 8192; j++)
		a[i] = a[i] * b[i] + b[i];
}


 /******************************************************
  * Scalar double-precision with loop kernels
  * ***************************************************/
 
 __kernel void scalar_dp_add_iter_1024_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void scalar_dp_sub_iter_1024_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void scalar_dp_mul_iter_1024_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void scalar_dp_div_iter_1024_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void scalar_dp_mad_iter_1024_kernel(__global double *a, __global double *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}

/******************************************************
  * Vector double-precision with loop kernels
  * ***************************************************/
 
 __kernel void vect2_dp_add_iter_1024_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void vect2_dp_sub_iter_1024_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void vect2_dp_mul_iter_1024_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void vect2_dp_div_iter_1024_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void vect2_dp_mad_iter_1024_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void vect4_dp_add_iter_1024_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void vect4_dp_sub_iter_1024_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void vect4_dp_mul_iter_1024_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void vect4_dp_div_iter_1024_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void vect4_dp_mad_iter_1024_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void vect8_dp_add_iter_1024_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void vect8_dp_sub_iter_1024_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void vect8_dp_mul_iter_1024_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void vect8_dp_div_iter_1024_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void vect8_dp_mad_iter_1024_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}

__kernel void vect16_dp_add_iter_1024_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] + b[i];
}

__kernel void vect16_dp_sub_iter_1024_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] - b[i];
}

__kernel void vect16_dp_mul_iter_1024_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i];
}

__kernel void vect16_dp_div_iter_1024_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] / b[i];
}

__kernel void vect16_dp_mad_iter_1024_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 1024; j++)
		a[i] = a[i] * b[i] + b[i];
}




