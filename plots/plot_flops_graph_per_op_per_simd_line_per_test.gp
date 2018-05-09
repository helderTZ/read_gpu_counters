
set terminal svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red


set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128, 256, 512)

set border 3
set tics scale 0
unset grid

##################################################################
##                                                              ##
##                              SP                              ##
##                                                              ##
##################################################################



######################
##                  ##
##        ADD       ##
##                  ##
######################




set terminal svg enhanced
set output "plots/compare_gflops_kernels_scalar_sp_add.svg"
set title "Kernel Comparison - Scalar Add SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
#set xtics rotate 90

set yrange [0.01:512]
plot 'data/scalar_sp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_add_iter_1024_kernel.csv'  		using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/scalar_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/scalar_sp_add_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect2_sp_add.svg"
set title "Kernel Comparison - Vect2 Add SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect2_sp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_add_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect2_sp_add_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect2_sp_add_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect4_sp_add.svg"
set title "Kernel Comparison - Vect4 Add SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.0001:512]
plot 'data/vect4_sp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_add_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect4_sp_add_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect4_sp_add_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect8_sp_add.svg"
set title "Kernel Comparison - Vect8 Add SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.0001:512]
plot 'data/vect8_sp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_add_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect8_sp_add_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_add_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect16_sp_add.svg"
set title "Kernel Comparison - Vect16 Add SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.0001:512]
plot 'data/vect16_sp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_add_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect16_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect16_sp_add_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4




######################
##                  ##
##        SUB       ##
##                  ##
######################




set terminal svg enhanced
set output "plots/compare_gflops_kernels_scalar_sp_sub.svg"
set title "Kernel Comparison - Scalar Sub SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
#set xtics rotate 90

set yrange [0.01:512]
plot 'data/scalar_sp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_sub_iter_1024_kernel.csv'  		using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/scalar_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/scalar_sp_sub_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect2_sp_sub.svg"
set title "Kernel Comparison - Vect2 Sub SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect2_sp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect2_sp_sub_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect2_sp_sub_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect4_sp_sub.svg"
set title "Kernel Comparison - Vect4 Sub SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.0001:512]
plot 'data/vect4_sp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_sub_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect4_sp_sub_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect4_sp_sub_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect8_sp_sub.svg"
set title "Kernel Comparison - Vect8 Sub SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.0001:512]
plot 'data/vect8_sp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_sub_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect8_sp_sub_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_sub_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect16_sp_sub.svg"
set title "Kernel Comparison - Vect16 Sub SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.0001:512]
plot 'data/vect16_sp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_sub_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect16_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect16_sp_sub_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4



######################
##                  ##
##        MUL       ##
##                  ##
######################




set terminal svg enhanced
set output "plots/compare_gflops_kernels_scalar_sp_mul.svg"
set title "Kernel Comparison - Scalar Mul SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
#set xtics rotate 90

set yrange [0.01:512]
plot 'data/scalar_sp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_mul_iter_1024_kernel.csv'  		using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/scalar_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/scalar_sp_mul_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect2_sp_mul.svg"
set title "Kernel Comparison - Vect2 Mul SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect2_sp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect2_sp_mul_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect2_sp_mul_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect4_sp_mul.svg"
set title "Kernel Comparison - Vect4 Mul SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect4_sp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_mul_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect4_sp_mul_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect8_sp_mul.svg"
set title "Kernel Comparison - Vect8 Mul SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect8_sp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_mul_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect8_sp_mul_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mul_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect16_sp_mul.svg"
set title "Kernel Comparison - Vect16 Mul SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect16_sp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_mul_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect16_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect16_sp_mul_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4



######################
##                  ##
##        DIV       ##
##                  ##
######################




set terminal svg enhanced
set output "plots/compare_gflops_kernels_scalar_sp_div.svg"
set title "Kernel Comparison - Scalar Div SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
#set xtics rotate 90

set yrange [0.01:512]
plot 'data/scalar_sp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_div_iter_1024_kernel.csv'  		using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/scalar_sp_div_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/scalar_sp_div_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect2_sp_div.svg"
set title "Kernel Comparison - Vect2 Div SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect2_sp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect2_sp_div_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect2_sp_div_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect4_sp_div.svg"
set title "Kernel Comparison - Vect4 Div SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect4_sp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_div_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect4_sp_div_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect4_sp_div_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect8_sp_div.svg"
set title "Kernel Comparison - Vect8 Div SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect8_sp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_div_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect8_sp_div_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect16_sp_div.svg"
set title "Kernel Comparison - Vect16 Div SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect16_sp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_div_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect16_sp_div_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect16_sp_div_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4

	 

######################
##                  ##
##        MAD       ##
##                  ##
######################




set terminal svg enhanced
set output "plots/compare_gflops_kernels_scalar_sp_mad.svg"
set title "Kernel Comparison - Scalar Mad SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
#set xtics rotate 90

set yrange [0.01:512]
plot 'data/scalar_sp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_mad_iter_1024_kernel.csv'  		using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/scalar_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/scalar_sp_mad_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect2_sp_mad.svg"
set title "Kernel Comparison - Vect2 Mad SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect2_sp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect2_sp_mad_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect2_sp_mad_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect4_sp_mad.svg"
set title "Kernel Comparison - Vect4 Mad SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect4_sp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_mad_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect4_sp_mad_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect4_sp_mad_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect8_sp_mad.svg"
set title "Kernel Comparison - Vect8 Mad SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect8_sp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_mad_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect8_sp_mad_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_priv_iter_1024_kernel.csv' 		using 3:4 title "priv"    with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_gflops_kernels_vect16_sp_mad.svg"
set title "Kernel Comparison - Vect16 Mad SP" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom

set yrange [0.01:512]
plot 'data/vect16_sp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_mad_priv_iter_1024_kernel.csv'  	using 3:4 title "loop"    with line lt -1 dashtype 2, \
	 'data/vect16_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "unroll"  with line lt -1 dashtype 3, \
	 'data/vect16_sp_mad_priv_iter_1024_kernel.csv' 	using 3:4 title "priv"    with line lt -1 dashtype 4



##################################################################
##                                                              ##
##                              DP                              ##
##                                                              ##
##################################################################


 
