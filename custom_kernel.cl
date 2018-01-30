__kernel void custom(__global float *a, __global float *b) {
	int i = get_global_id(0);
	int j;
	for(j = 0; j < 10000; j+=4) {
		a[i+0] = b[i+0] * 2.0f + 1.0f;
		//a[i+1] = b[i+1] * 2.0f + 1.0f;
		//a[i+2] = b[i+2] * 2.0f + 1.0f;
		//a[i+3] = b[i+3] * 2.0f + 1.0f;
	}
}
