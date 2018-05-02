/******************************************************
 * Pointer-chasing kernels
 * ***************************************************/
__kernel void pointer_chasing_kernel(__global float *a) {
	int i, j, result = 0;
		for(i = 0; i < 1638400; i+=16)
			result = a[result];
}
