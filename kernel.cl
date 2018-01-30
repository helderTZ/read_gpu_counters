 
 
__kernel void single_flop(__global float* a) {
//__kernel void single_flop() {
     //int i = get_global_id(0);
     //a[i] = a[i] *2.0;
     //a[0] = a[0]+2.0;
     //a[0] = a[1];
    a[0] = 2.0f*2.0f;
    a[1] = 2.0f*2.0f;
    //a[2] = 2.0f*2.0f;
    //a[3] = 2.0f*2.0f;
 }
 
 /** flops_light
  * lightweight computational kernel
  * just for testing
  */
 __kernel void flops_light(__global float* a, 
                        __global float* b, 
                        __global float* c) {
	
	int i = get_global_id(0);
	int j;
	
	for(j = 0; j < 1; j++) {
		a[i] = a[i] * 2.0 + 1.0;
		b[i] = b[i] * 2.0 + 1.0;
		c[i] = c[i] * 2.0 + 1.0;
	}
}

/** flops_max
 * uses all registers in EUs and uses all EUs to perform 
 * floating point computations (MAD in this case)
 */
__kernel void flops_max(__global float* a, 
					__global float* b, 
					__global float* c,
					__global float* d, 
					__global float* e, 
					__global float* f, 
					__global float* g) {
	
	int i = get_global_id(0);
	int j;
	
	for(j = 0; j < 10000000; j++) {
		a[i] = a[i] * 2.0 + 1.0;
		b[i] = b[i] * 2.0 + 1.0;
		c[i] = c[i] * 2.0 + 1.0;
		d[i] = d[i] * 2.0 + 1.0;
		e[i] = e[i] * 2.0 + 1.0;
		f[i] = f[i] * 2.0 + 1.0;
		g[i] = g[i] * 2.0 + 1.0;
	}
}

/** load_store
 * loads from global memory and stores to global memory
 */
__kernel void load_store(__global char *src, __global char *dst) {

	int i = get_global_id(0);
	int j;

	// two registers for i and j, leaves 5 registers per thread ( 128 GPR available per EU)
	for(j = 0; j < 1000000; j+=5) {
		dst[i+0] = src[i+0];
		dst[i+1] = src[i+1];
		dst[i+2] = src[i+2];
		dst[i+3] = src[i+3];
		dst[i+4] = src[i+4];
	}
}

/** ternary kernel
 * comprised of ternary operations
 */
__kernel void ternary(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	int j;
	
	for(j = 0; j < 100000; j++) {
		a[i] = b[i] > 0 ? 1.0f : -1.0f;
	}
}
