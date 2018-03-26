__kernel void scalar_sp_mad_iter_1024_regs_only_kernel() {
	int i = get_global_id(0);
	int j;
	float a = 2.0f;
	float b = 2.0f;
	for(j = 0; j < 1024; j++)
		a = a * b + b; 
}
