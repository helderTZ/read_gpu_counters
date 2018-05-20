/******************************************************
* Scalar single-precision with double loop 
* for power measurement
* ***************************************************/
 
 __kernel void __attribute__((vec_type_hint(double))) scalar_dp_add_power_kernel(__global double *a, __global double*b) {
	int i = get_global_id(0);
	int j, k;
	double temp = a[i];
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + 0.5;
		}
	}
	a[i] = temp;
}


 __kernel void __attribute__((vec_type_hint(double))) scalar_dp_mad_power_kernel(__global double *a, __global double*b) {
	int i = get_global_id(0);
	int j, k;
	double temp = a[i];
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * 0.5 + 1.0;
		}
	}
	a[i] = temp;
}


/******************************************************
* Vector single-precision with double loop 
* for power measurement
* ***************************************************/
 
__kernel void __attribute__((vec_type_hint(double2))) vect2_dp_add_power_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j, k;
	double2 temp = a[i];
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + (double2) 0.5;
		}
	}
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double4))) vect4_dp_add_power_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j, k;
	double4 temp = a[i];
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + (double4) 0.5;
		}
	}
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double8))) vect8_dp_add_power_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j, k;
	double8 temp = a[i];
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + (double8) 0.5;
		}
	}
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(double16))) vect16_dp_add_power_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j, k;
	double16 temp = a[i];
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + (double16) 0.5;
		}
	}
	a[i] = temp;
}


 __kernel void __attribute__((vec_type_hint(double2))) vect2_dp_mad_power_kernel(__global double2 *a, __global double2 *b) {
	int i = get_global_id(0);
	int j, k;
	double2 temp = a[i];
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * (double2) 0.5 + (double2) 1.0;
		}
	}
	a[i] = temp;
}

 __kernel void __attribute__((vec_type_hint(double4))) vect4_dp_mad_power_kernel(__global double4 *a, __global double4 *b) {
	int i = get_global_id(0);
	int j, k;
	double4 temp = a[i];
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * (double4) 0.5 + (double4) 1.0;
		}
	}
	a[i] = temp;
}

 __kernel void __attribute__((vec_type_hint(double8))) vect8_dp_mad_power_kernel(__global double8 *a, __global double8 *b) {
	int i = get_global_id(0);
	int j, k;
	double8 temp = a[i];
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * (double8) 0.5 + (double8) 1.0;
		}
	}
	a[i] = temp;
}

 __kernel void __attribute__((vec_type_hint(double16))) vect16_dp_mad_power_kernel(__global double16 *a, __global double16 *b) {
	int i = get_global_id(0);
	int j, k;
	double16 temp = a[i];
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * (double16) 0.5 + (double16) 1.0;
		}
	}
	a[i] = temp;
}






