/******************************************************
  * Scalar single-precision with double loop 
  * for power measurement
  * ***************************************************/
 
 __kernel void __attribute__((vec_type_hint(float))) scalar_sp_add_power_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j, k;
	float temp = a[i];
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + 0.5;
		}
	}
	a[i] = temp;
}

 __kernel void __attribute__((vec_type_hint(float))) scalar_sp_mad_power_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j, k;
	float temp = a[i];
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * 0.5f + 1.0f;
		}
	}
	a[i] = temp;
}


/******************************************************
  * Vector single-precision with double loop 
  * for power measurement
  * ***************************************************/
 
__kernel void __attribute__((vec_type_hint(float2))) vect2_sp_add_power_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j, k;
	float2 temp = a[i];
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + (float2) 0.5f;
		}
	}
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float4))) vect4_sp_add_power_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j, k;
	float4 temp = a[i];
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + (float4) 0.5f;
		}
	}
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float8))) vect8_sp_add_power_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j, k;
	float8 temp = a[i];
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + (float8) 0.5f;
		}
	}
	a[i] = temp;
}

__kernel void __attribute__((vec_type_hint(float16))) vect16_sp_add_power_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j, k;
	float16 temp = a[i];
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp + (float16) 0.5f;
		}
	}
	a[i] = temp;
}


 __kernel void __attribute__((vec_type_hint(float2))) vect2_sp_mad_power_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j, k;
	float2 temp = a[i];
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * (float2) 0.5f + (float2) 1.0f;
		}
	}
	a[i] = temp;
}

 __kernel void __attribute__((vec_type_hint(float4))) vect4_sp_mad_power_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j, k;
	float4 temp = a[i];
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * (float4) 0.5f + (float4) 1.0f;
		}
	}
	a[i] = temp;
}

 __kernel void __attribute__((vec_type_hint(float8))) vect8_sp_mad_power_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j, k;
	float8 temp = a[i];
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * (float8) 0.5f + (float8) 1.0f;
		}
	}
	a[i] = temp;
}

 __kernel void __attribute__((vec_type_hint(float16))) vect16_sp_mad_power_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j, k;
	float16 temp = a[i];
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			temp = temp * (float16) 0.5f + (float16) 1.0f;
		}
	}
	a[i] = temp;
}






