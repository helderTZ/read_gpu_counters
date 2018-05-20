/******************************************************
 * Pointer-chasing kernels
 * ***************************************************/
__kernel void pointer_chasing_kernel(__global float *a) {
	int i, j, result = 0;
		for(i = 0; i < 1638400; i+=16)
			result = a[result];
}


/******************************************************
 * Memory traversal kernels
 * ***************************************************/

__kernel void mem_travel_1_ld_st(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	
	a[i] = b[i];
	
}

__kernel void mem_travel_2_ld_st(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	
	a[i] += b[i];
	a[i] += b[i];
	
}
__kernel void mem_travel_4_ld_st(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	
}

__kernel void mem_travel_8_ld_st(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	
}

__kernel void mem_travel_16_ld_st(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	a[i] += b[i];
	
}

__kernel void mem_travel_32_ld_st(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i];
	
}

__kernel void mem_travel_64_ld_st(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	a[i] += b[i]; a[i] += b[i]; a[i] += b[i]; a[i] += b[i];
	
}



/******************************************************
 * Experiments
 * ***************************************************/

__kernel void mem_experiment(__global float *a, __global float *b) {
	
	int i = get_global_id(0);
	
	if (i%4 < i<<2) 			a[i%4] += b[i%4];
	else if ((i+1)%4 < i<<2) 	a[(i+1)%4] += b[(i+1)%4];
	else if ((i+2)%4 < i<<2) 	a[(i+2)%4] += b[(i+2)%4];
	else if ((i+3)%4 < i<<2) 	a[(i+3)%4] += b[(i+3)%4];
	
}


__kernel void mem_experiment2(__global float *dst, __global float *src) {
	
	int i;
	// 512 KB / 4 = 131072 floats
	// 1 MB / 4 = 262144 floats
	for(i=0; i<262144; i++)
		dst[i] = src[i];
	
}

__kernel void mem_experiment3(__global float *dst, __global float *src) {
	
	int size = get_global_size(0);
	int j;
	for(j=0; j<size; j++) {
		dst[j] = src[j];
		dst[size-(j+1)] = src[size-(j+1)];
	}
	
}

__kernel void mem_experiment4(__global float *dst, __global float *src) {
	
	int size = get_global_size(0);
	int j;
	for(j=0; j<size; j++) {
		dst[j] = src[j];
	}
	for(j=size-1; j>=0; j--) {
		dst[j] = src[j];
	}
	
}

__kernel void mem_experiment5(__global float *dst, __global float *src) {
	
	int size = get_global_size(0)*64;
	int j;
	int i = get_global_id(0);
	volatile int k;
	float x;
	for(k=0; k<=8192; k++) {
		for(j=0; j<size; j+=16*3) {
			if(i%2) x = src[j+i]; 
			else 	 dst[j+i] = 2.0f;
			/*dst[j+i] = src[j+i];   dst[j+1] = src[j+1];
			dst[j+i] = src[j+i];   dst[j+3] = src[j+3];
			dst[j+i] = src[j+i];   dst[j+5] = src[j+5];
			dst[j+i] = src[j+6];   dst[j+7] = src[j+7];
			dst[j+i] = src[j+8];   dst[j+9] = src[j+9];
			dst[j+i] = src[j+10]; dst[j+11] = src[j+11];
			dst[j+i] = src[j+12]; dst[j+13] = src[j+13];
			dst[j+i] = src[j+14]; dst[j+15] = src[j+15];*/
			//dst[size-(j+1)] = src[size-(j+1)];
		}
	}	
}

__kernel void mem_experiment6_warmup(__global float *dst, __global float *src) {
	
	int size = get_global_size(0);
	int j;
	
	// warmup (get the data in the GPU L3 cache)
	for(j=0; j<size; j++) {
		dst[j] = src[j];
	}
}

__kernel void mem_experiment6_workload(__global float *dst, __global float *src) {
	
	int size = get_global_size(0);
	int j;
	volatile int k;
	
	
	for(k=0; k<1024; k++) {
		for(j=0; j<size; j++) {
			dst[j] = src[j];
		}
	}
}

__kernel void mem_experiment7(__global float *dst, __global float *src) {
	
	int size = get_global_size(0);
	int j;
	volatile int k;
	
	// warmup
	for(j=0; j<size; j++) {
		dst[j] = src[j];
	}
	
	
	for(k=0; k<1024; k++) {
		for(j=0; j<size; j++) {
			dst[j] = src[j];
		}
	}
}

__kernel void mem_experiment8(__global const float *data, __global float *output, int size) {
	
	int gid = get_global_id(0), num_thr = get_global_size(0), grpid=get_group_id(0), j = 0;
    float sum = 0;
    int tid=get_local_id(0), localSize=get_local_size(0), litems=8192/localSize, goffset=localSize*grpid+tid*litems;
    int s = tid;
    __local float lbuf[8192];
    for ( ; j<litems && j<(size-goffset) ; ++j)
       lbuf[tid*litems+j] = data[goffset+j];
    for (int i=0 ; j<litems ; ++j,++i)
       lbuf[tid*litems+j] = data[i];
    barrier(CLK_LOCAL_MEM_FENCE);
    for (j=0 ; j<3000 ; ++j) {
       float a0 = lbuf[(s+0)&(8191)];
       float a1 = lbuf[(s+1)&(8191)];
       float a2 = lbuf[(s+2)&(8191)];
       float a3 = lbuf[(s+3)&(8191)];
       float a4 = lbuf[(s+4)&(8191)];
       float a5 = lbuf[(s+5)&(8191)];
       float a6 = lbuf[(s+6)&(8191)];
       float a7 = lbuf[(s+7)&(8191)];
       float a8 = lbuf[(s+8)&(8191)];
       float a9 = lbuf[(s+9)&(8191)];
       float a10 = lbuf[(s+10)&(8191)];
       float a11 = lbuf[(s+11)&(8191)];
       float a12 = lbuf[(s+12)&(8191)];
       float a13 = lbuf[(s+13)&(8191)];
       float a14 = lbuf[(s+14)&(8191)];
       float a15 = lbuf[(s+15)&(8191)];
       sum += a0+a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15;
       s = (s+16)&(8191);
    }
    output[gid] = sum;
}
