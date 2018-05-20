

 /******************************************************
  * Scalar double-precision private mem with loop kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(double))) scalar_dp_add_priv_iter_1024_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double))) scalar_dp_sub_priv_iter_1024_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - 0.5;
	a[i] = temp;
}


__kernel void __attribute__((vec_type_hint(double))) scalar_dp_mul_priv_iter_1024_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double))) scalar_dp_div_priv_iter_1024_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double))) scalar_dp_mad_priv_iter_1024_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * 0.5 + 0.5;
	a[i] = temp;
}


 /******************************************************
  * Vector double-precision private mem with loop kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_add_priv_iter_1024_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + (double2) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_sub_priv_iter_1024_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - (double2) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_mul_priv_iter_1024_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (double2) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_div_priv_iter_1024_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / (double2) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_mad_priv_iter_1024_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (double2) 0.5 + (double2) 0.5;
	a[i] = temp;
}


__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_add_priv_iter_1024_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + (double4) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_sub_priv_iter_1024_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - (double4) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_mul_priv_iter_1024_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (double4) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_div_priv_iter_1024_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / (double4) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_mad_priv_iter_1024_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (double4) 0.5 + (double4) 0.5;
	a[i] = temp;
}



__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_add_priv_iter_1024_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + (double8) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_sub_priv_iter_1024_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - (double8) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_mul_priv_iter_1024_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (double8) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_div_priv_iter_1024_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / (double8) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_mad_priv_iter_1024_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (double8) 0.5 + (double8) 0.5;
	a[i] = temp;
}



__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_add_priv_iter_1024_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp + (double16) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_sub_priv_iter_1024_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp - (double16) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_mul_priv_iter_1024_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (double16) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_div_priv_iter_1024_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp / (double16) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_mad_priv_iter_1024_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 1024; j++)
		temp = temp * (double16) 0.5 + (double16) 0.5;
	a[i] = temp;
}






 /******************************************************
  * Scalar double-precision private mem with loop kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(double))) scalar_dp_add_priv_iter_8192_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp + 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double))) scalar_dp_sub_priv_iter_8192_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp - 0.5;
	a[i] = temp;
}


__kernel void __attribute__((vec_type_hint(double))) scalar_dp_mul_priv_iter_8192_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double))) scalar_dp_div_priv_iter_8192_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp / 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double))) scalar_dp_mad_priv_iter_8192_kernel(__global double *a) {
	int i = get_global_id(0);
	int j;
	double temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * 0.5 + 0.5;
	a[i] = temp;
}


 /******************************************************
  * Vector double-precision private mem with loop kernels
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_add_priv_iter_8192_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp + (double2) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_sub_priv_iter_8192_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp - (double2) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_mul_priv_iter_8192_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * (double2) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_div_priv_iter_8192_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp / (double2) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_mad_priv_iter_8192_kernel(__global double2 *a) {
	int i = get_global_id(0);
	int j;
	double2 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * (double2) 0.5 + (double2) 0.5;
	a[i] = temp;
}


__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_add_priv_iter_8192_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp + (double4) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_sub_priv_iter_8192_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp - (double4) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_mul_priv_iter_8192_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * (double4) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_div_priv_iter_8192_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp / (double4) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_mad_priv_iter_8192_kernel(__global double4 *a) {
	int i = get_global_id(0);
	int j;
	double4 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * (double4) 0.5 + (double4) 0.5;
	a[i] = temp;
}



__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_add_priv_iter_8192_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp + (double8) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_sub_priv_iter_8192_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp - (double8) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_mul_priv_iter_8192_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * (double8) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_div_priv_iter_8192_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp / (double8) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_mad_priv_iter_8192_kernel(__global double8 *a) {
	int i = get_global_id(0);
	int j;
	double8 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * (double8) 0.5 + (double8) 0.5;
	a[i] = temp;
}



__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_add_priv_iter_8192_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp + (double16) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_sub_priv_iter_8192_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp - (double16) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_mul_priv_iter_8192_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * (double16) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_div_priv_iter_8192_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp / (double16) 0.5;
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_mad_priv_iter_8192_kernel(__global double16 *a) {
	int i = get_global_id(0);
	int j;
	double16 temp = a[i];
	for(j = 0; j < 8192; j++)
		temp = temp * (double16) 0.5 + (double16) 0.5;
	a[i] = temp;
}






