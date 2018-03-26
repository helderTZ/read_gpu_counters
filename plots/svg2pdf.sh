#| /bin/bash


rsvg-convert -f pdf -o compare_operations.pdf compare_operations_scalar_sp_loop.svg 	\
												compare_operations_vect2_sp_loop.svg	\
												compare_operations_vect4_sp_loop.svg	\
												compare_operations_vect8_sp_loop.svg	\
												compare_operations_vect16_sp_loop.svg	\
												compare_operations_scalar_dp_loop.svg	\
												compare_operations_vect2_dp_loop.svg 	\
												compare_operations_vect4_dp_loop.svg 	\
												compare_operations_vect8_dp_loop.svg	\
												compare_operations_vect16_dp_loop.svg

rsvg-convert -f pdf -o compare_precisions.pdf compare_precisions_scalar_add_loop.svg \
												compare_precisions_scalar_sub_loop.svg	\
												compare_precisions_scalar_mul_loop.svg	\
												compare_precisions_scalar_div_loop.svg	\
												compare_precisions_scalar_mad_loop.svg	\
												compare_precisions_vect2_add_loop.svg	\
												compare_precisions_vect2_sub_loop.svg	\
												compare_precisions_vect2_mul_loop.svg	\
												compare_precisions_vect2_div_loop.svg	\
												compare_precisions_vect2_mad_loop.svg	\
												compare_precisions_vect4_add_loop.svg	\
												compare_precisions_vect4_sub_loop.svg	\
												compare_precisions_vect4_mul_loop.svg	\
												compare_precisions_vect4_div_loop.svg	\
												compare_precisions_vect4_mad_loop.svg	\
												compare_precisions_vect8_add_loop.svg	\
												compare_precisions_vect8_sub_loop.svg	\
												compare_precisions_vect8_mul_loop.svg	\
												compare_precisions_vect8_div_loop.svg	\
												compare_precisions_vect8_mad_loop.svg	\
												compare_precisions_vect16_add_loop.svg	\
												compare_precisions_vect16_sub_loop.svg	\
												compare_precisions_vect16_mul_loop.svg	\
												compare_precisions_vect16_div_loop.svg	\
												compare_precisions_vect16_mad_loop.svg

rsvg-convert -f pdf -o compare_kernels.pdf compare_kernels_scalar_sp_add.svg	\
											compare_kernels_vect2_sp_add.svg	\
											compare_kernels_vect4_sp_add.svg	\
											compare_kernels_vect8_sp_add.svg	\
											compare_kernels_vect16_sp_add.svg	\
											compare_kernels_scalar_sp_sub.svg	\
											compare_kernels_vect2_sp_sub.svg	\
											compare_kernels_vect4_sp_sub.svg	\
											compare_kernels_vect8_sp_sub.svg	\
											compare_kernels_vect16_sp_sub.svg	\
											compare_kernels_scalar_sp_mul.svg	\
											compare_kernels_vect2_sp_mul.svg	\
											compare_kernels_vect4_sp_mul.svg	\
											compare_kernels_vect8_sp_mul.svg	\
											compare_kernels_vect16_sp_mul.svg	\
											compare_kernels_scalar_sp_div.svg	\
											compare_kernels_vect2_sp_div.svg	\
											compare_kernels_vect4_sp_div.svg	\
											compare_kernels_vect8_sp_div.svg	\
											compare_kernels_vect16_sp_div.svg	\
											compare_kernels_scalar_sp_mad.svg	\
											compare_kernels_vect2_sp_mad.svg	\
											compare_kernels_vect4_sp_mad.svg	\
											compare_kernels_vect8_sp_mad.svg	\
											compare_kernels_vect16_sp_mad.svg	\
											compare_kernels_scalar_dp_add.svg	\
											compare_kernels_vect2_dp_add.svg	\
											compare_kernels_vect4_dp_add.svg	\
											compare_kernels_vect8_dp_add.svg	\
											compare_kernels_vect16_dp_add.svg	\
											compare_kernels_scalar_dp_sub.svg	\
											compare_kernels_vect2_dp_sub.svg	\
											compare_kernels_vect4_dp_sub.svg	\
											compare_kernels_vect8_dp_sub.svg	\
											compare_kernels_vect16_dp_sub.svg	\
											compare_kernels_scalar_dp_mul.svg	\
											compare_kernels_vect2_dp_mul.svg	\
											compare_kernels_vect4_dp_mul.svg	\
											compare_kernels_vect8_dp_mul.svg	\
											compare_kernels_vect16_dp_mul.svg	\
											compare_kernels_scalar_dp_div.svg	\
											compare_kernels_vect2_dp_div.svg	\
											compare_kernels_vect4_dp_div.svg	\
											compare_kernels_vect8_dp_div.svg	\
											compare_kernels_vect16_dp_div.svg	\
											compare_kernels_scalar_dp_mad.svg	\
											compare_kernels_vect2_dp_mad.svg	\
											compare_kernels_vect4_dp_mad.svg	\
											compare_kernels_vect8_dp_mad.svg	\
											compare_kernels_vect16_dp_mad.svg
