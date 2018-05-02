
set terminal svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red


set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128)

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
set output "plots/compare_kernels_scalar_sp_add.svg"
set title "Kernel Comparison - Scalar Add SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_sp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_sp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
#'data/scalar_sp_add_kernel.csv' using 3:4:xtic(3) title "simple"  with line lt -1 dashtype 1, \
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_sp_add.svg"
set title "Kernel Comparison - Vect2 Add SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_sp_add_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_sp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_sp_add.svg"
set title "Kernel Comparison - Vect4 Add SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_sp_add_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_sp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_sp_add.svg"
set title "Kernel Comparison - Vect8 Add SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_sp_add_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_sp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_sp_add.svg"
set title "Kernel Comparison - Vect16 Add SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_sp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_sp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3




######################
##                  ##
##        SUB       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_kernels_scalar_sp_sub.svg"
set title "Kernel Comparison - Scalar Sub SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_sp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_sp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_sp_sub.svg"
set title "Kernel Comparison - Vect2 Sub SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_sp_sub_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_sp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_sp_sub.svg"
set title "Kernel Comparison - Vect4 Sub SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_sp_sub_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_sp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_sp_sub.svg"
set title "Kernel Comparison - Vect8 Sub SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_sp_sub_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_sp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_sp_sub.svg"
set title "Kernel Comparison - Vect16 Sub SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_sp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_sp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3




######################
##                  ##
##        MUL       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_kernels_scalar_sp_mul.svg"
set title "Kernel Comparison - Scalar Mul SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_sp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_sp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_sp_mul.svg"
set title "Kernel Comparison - Vect2 Mul SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_sp_mul_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_sp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_sp_mul.svg"
set title "Kernel Comparison - Vect4 Mul SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_sp_mul_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_sp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_sp_mul.svg"
set title "Kernel Comparison - Vect8 Mul SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_sp_mul_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_sp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_sp_mul.svg"
set title "Kernel Comparison - Vect16 Mul SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_sp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_sp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 



######################
##                  ##
##        DIV       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_kernels_scalar_sp_div.svg"
set title "Kernel Comparison - Scalar Div SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_sp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_sp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_sp_div.svg"
set title "Kernel Comparison - Vect2 Div SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_sp_div_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_sp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_sp_div.svg"
set title "Kernel Comparison - Vect4 Div SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_sp_div_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_sp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_sp_div.svg"
set title "Kernel Comparison - Vect8 Div SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_sp_div_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_sp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_sp_div.svg"
set title "Kernel Comparison - Vect16 Div SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_sp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_sp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

	 

######################
##                  ##
##        MAD       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_kernels_scalar_sp_mad.svg"
set title "Kernel Comparison - Scalar Mad SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_sp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_sp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_sp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_sp_mad.svg"
set title "Kernel Comparison - Vect2 Mad SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_sp_mad_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_sp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_sp_mad.svg"
set title "Kernel Comparison - Vect4 Mad SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_sp_mad_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_sp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_sp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_sp_mad.svg"
set title "Kernel Comparison - Vect8 Mad SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_sp_mad_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_sp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_sp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_sp_mad.svg"
set title "Kernel Comparison - Vect16 Mad SP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_sp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_sp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_sp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 



##################################################################
##                                                              ##
##                              DP                              ##
##                                                              ##
##################################################################




######################
##                  ##
##        ADD       ##
##                  ##
######################




set terminal   svg enhanced
set output "plots/compare_kernels_scalar_dp_add.svg"
set title "Kernel Comparison - Scalar Add DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_dp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_dp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_dp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_dp_add.svg"
set title "Kernel Comparison - Vect2 Add DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_dp_add_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_dp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_dp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_dp_add.svg"
set title "Kernel Comparison - Vect4 Add DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_dp_add_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_dp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_dp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_dp_add.svg"
set title "Kernel Comparison - Vect8 Add DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_dp_add_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_dp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_dp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_dp_add.svg"
set title "Kernel Comparison - Vect16 Add DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_dp_add_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_dp_add_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_dp_add_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3




######################
##                  ##
##        SUB       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_kernels_scalar_dp_sub.svg"
set title "Kernel Comparison - Scalar Sub DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_dp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_dp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_dp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_dp_sub.svg"
set title "Kernel Comparison - Vect2 Sub DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_dp_sub_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_dp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_dp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_dp_sub.svg"
set title "Kernel Comparison - Vect4 Sub DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_dp_sub_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_dp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_dp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_dp_sub.svg"
set title "Kernel Comparison - Vect8 Sub DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_dp_sub_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_dp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_dp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_dp_sub.svg"
set title "Kernel Comparison - Vect16 Sub DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_dp_sub_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_dp_sub_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_dp_sub_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3




######################
##                  ##
##        MUL       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_kernels_scalar_dp_mul.svg"
set title "Kernel Comparison - Scalar Mul DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_dp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_dp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_dp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_dp_mul.svg"
set title "Kernel Comparison - Vect2 Mul DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_dp_mul_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_dp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_dp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_dp_mul.svg"
set title "Kernel Comparison - Vect4 Mul DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_dp_mul_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_dp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_dp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_dp_mul.svg"
set title "Kernel Comparison - Vect8 Mul DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_dp_mul_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_dp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_dp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_dp_mul.svg"
set title "Kernel Comparison - Vect16 Mul DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_dp_mul_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_dp_mul_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_dp_mul_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 



######################
##                  ##
##        DIV       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_kernels_scalar_dp_div.svg"
set title "Kernel Comparison - Scalar Div DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_dp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_dp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_dp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_dp_div.svg"
set title "Kernel Comparison - Vect2 Div DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_dp_div_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_dp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_dp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_dp_div.svg"
set title "Kernel Comparison - Vect4 Div DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_dp_div_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_dp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_dp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_dp_div.svg"
set title "Kernel Comparison - Vect8 Div DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_dp_div_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_dp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_dp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_dp_div.svg"
set title "Kernel Comparison - Vect16 Div DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_dp_div_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_dp_div_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_dp_div_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

	 

######################
##                  ##
##        MAD       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_kernels_scalar_dp_mad.svg"
set title "Kernel Comparison - Scalar Mad DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid
#set xtics rotate 90

set yrange [0.01:64]
plot 'data/scalar_dp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/scalar_dp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/scalar_dp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

set terminal   svg enhanced
set output "plots/compare_kernels_vect2_dp_mad.svg"
set title "Kernel Comparison - Vect2 Mad DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.01:64]
plot 'data/vect2_dp_mad_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect2_dp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect2_dp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect4_dp_mad.svg"
set title "Kernel Comparison - Vect4 Mad DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect4_dp_mad_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect4_dp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect4_dp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect8_dp_mad.svg"
set title "Kernel Comparison - Vect8 Mad DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect8_dp_mad_kernel.csv' 						using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect8_dp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect8_dp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3


set terminal   svg enhanced
set output "plots/compare_kernels_vect16_dp_mad.svg"
set title "Kernel Comparison - Vect16 Mad DP" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:64]
plot 'data/vect16_dp_mad_kernel.csv' 					using 3:4 title "simple"  with line lt -1 dashtype 1, \
	 'data/vect16_dp_mad_priv_iter_1024_kernel.csv'  			using 3:4 title "loop"    with line lt -1 dashtype 2
	 #'data/vect16_dp_mad_priv_iter_128_unroll_64_kernel.csv' 	using 3:4 title "unroll"  with line lt -1 dashtype 3
	 

