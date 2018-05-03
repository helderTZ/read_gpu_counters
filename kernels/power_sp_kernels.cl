/******************************************************
  * Scalar single-precision with double loop 
  * for power measurement
  * ***************************************************/
 
 __kernel void scalar_sp_add_power_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] + b[i];
		}
	}
}

__kernel void scalar_sp_sub_power_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] - b[i];
		}
	}
}

__kernel void scalar_sp_mul_power_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i];
		}
	}
}

__kernel void scalar_sp_div_power_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] / b[i];
		}
	}
}

__kernel void scalar_sp_mad_power_kernel(__global float *a, __global float*b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 1024; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i] + b[i];
		}
	}
}

/******************************************************
  * Vector single-precision with double loop 
  * for power measurement
  * ***************************************************/
 
__kernel void vect2_sp_add_power_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] + b[i];
		}
	}
}

__kernel void vect2_sp_sub_power_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] - b[i];
		}
	}
}

__kernel void vect2_sp_mul_power_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i];
		}
	}
}

__kernel void vect2_sp_div_power_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] / b[i];
		}
	}
}

__kernel void vect2_sp_mad_power_kernel(__global float2 *a, __global float2 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 512; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i] + b[i];
		}
	}
}

__kernel void vect4_sp_add_power_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] + b[i];
		}
	}
}

__kernel void vect4_sp_sub_power_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] - b[i];
		}
	}
}

__kernel void vect4_sp_mul_power_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i];
		}
	}
}

__kernel void vect4_sp_div_power_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] / b[i];
		}
	}
}

__kernel void vect4_sp_mad_power_kernel(__global float4 *a, __global float4 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 256; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i] + b[i];
		}
	}
}


__kernel void vect8_sp_add_power_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] + b[i];
		}
	}
}

__kernel void vect8_sp_sub_power_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] - b[i];
		}
	}
}

__kernel void vect8_sp_mul_power_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i];
		}
	}
}

__kernel void vect8_sp_div_power_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] / b[i];
		}
	}
}

__kernel void vect8_sp_mad_power_kernel(__global float8 *a, __global float8 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 128; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i] + b[i];
		}
	}
}


__kernel void vect16_sp_add_power_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] + b[i];
		}
	}
}

__kernel void vect16_sp_sub_power_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] - b[i];
		}
	}
}

__kernel void vect16_sp_mul_power_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i];
		}
	}
}

__kernel void vect16_sp_div_power_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] / b[i];
		}
	}
}

__kernel void vect16_sp_mad_power_kernel(__global float16 *a, __global float16 *b) {
	int i = get_global_id(0);
	int j, k;
	for(k = 0; k < 64; k++) {
		for(j = 0; j < 8192; j++) {
			a[i] = a[i] * b[i] + b[i];
		}
	}
}
 
