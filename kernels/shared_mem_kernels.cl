
 /******************************************************
  * Scalar single-precision shared memory kernels
  * ***************************************************/
 
__kernel void scalar_sp_load_store_shm_kernel(__global float *a, __global float *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float bufferA[256];
	__local float bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	bufferA[255-i] = bufferB[255-i];
}

 /******************************************************
  * Vector single-precision shared memory kernels
  * ***************************************************/
 
__kernel void vect2_sp_load_store_shm_kernel(__global float2 *a, __global float2 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float2 bufferA[256];
	__local float2 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	bufferA[255-i] = bufferB[255-i];
}

__kernel void vect4_sp_load_store_shm_kernel(__global float4 *a, __global float4 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float4 bufferA[256];
	__local float4 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	bufferA[255-i] = bufferB[255-i];
}
__kernel void vect8_sp_load_store_shm_kernel(__global float8 *a, __global float8 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float8 bufferA[256];
	__local float8 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	bufferA[255-i] = bufferB[255-i];
}

__kernel void vect16_sp_load_store_shm_kernel(__global float16 *a, __global float16 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float16 bufferA[256];
	__local float16 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	bufferA[255-i] = bufferB[255-i];
}


 /******************************************************
  * Scalar single-precision shared memory kernels
  * ***************************************************/
 
__kernel void scalar_sp_load_store_shm_iter_1024_kernel(__global float *a, __global float *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float bufferA[256];
	__local float bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	//barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 1024; j++)
		bufferA[255-i] += bufferB[255-i];
	
	a[i] = bufferA[i];
}

 /******************************************************
  * Vector single-precision shard memory kernels
  * ***************************************************/
 
__kernel void vect2_sp_load_store_shm_iter_1024_kernel(__global float2 *a, __global float2 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float2 bufferA[256];
	__local float2 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	//barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 1024; j++)
		bufferA[255-i] += bufferB[255-i];
	
	a[i] = bufferA[i];
}

__kernel void vect4_sp_load_store_shm_iter_1024_kernel(__global float4 *a, __global float4 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float4 bufferA[256];
	__local float4 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	//barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 1024; j++)
		bufferA[255-i] += bufferB[255-i];
	
	a[i] = bufferA[i];
}

__kernel void vect8_sp_load_store_shm_iter_1024_kernel(__global float8 *a, __global float8 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float8 bufferA[256];
	__local float8 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	//barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 1024; j++)
		bufferA[255-i] += bufferB[255-i];
	
	a[i] = bufferA[i];
}


__kernel void vect16_sp_load_store_shm_iter_1024_kernel(__global float16 *a, __global float16 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float16 bufferA[256];
	__local float16 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	//barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 1024; j++)
		bufferA[255-i] += bufferB[255-i];
	
	a[i] = bufferA[i];
}




 /******************************************************
  * Scalar single-precision shared memory kernels
  * ***************************************************/
 
__kernel void scalar_sp_load_store_shm_iter_81920_kernel(__global float *a, __global float *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float bufferA[256];
	__local float bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 81920; j++)
		bufferA[255-i] = bufferB[255-i];
}

 /******************************************************
  * Vector single-precision shard memory kernels
  * ***************************************************/
 
__kernel void vect2_sp_load_store_shm_iter_81920_kernel(__global float2 *a, __global float2 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float2 bufferA[256];
	__local float2 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 81920; j++)
		bufferA[255-i] = bufferB[255-i];
}

__kernel void vect4_sp_load_store_shm_iter_81920_kernel(__global float4 *a, __global float4 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float4 bufferA[256];
	__local float4 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 81920; j++)
		bufferA[255-i] = bufferB[255-i];
}

__kernel void vect8_sp_load_store_shm_iter_81920_kernel(__global float8 *a, __global float8 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float8 bufferA[256];
	__local float8 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 81920; j++)
		bufferA[255-i] = bufferB[255-i];
}


__kernel void vect16_sp_load_store_shm_iter_81920_kernel(__global float16 *a, __global float16 *b) {
	  
	int i = get_local_id(0);
	int j = get_global_offset(0);
	__local float16 bufferA[256];
	__local float16 bufferB[256];
	
	// copy to local mem
	bufferA[i] = a[i+j];
	bufferB[i] = b[i+j];
	
	barrier(CLK_LOCAL_MEM_FENCE);
	
	// calc
	for(j = 0; j < 81920; j++)
		bufferA[255-i] = bufferB[255-i];
}
