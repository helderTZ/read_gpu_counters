
set terminal   svg enhanced


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




set terminal   svg enhanced
set output "plots/compare_operations_scalar_sp_loop.svg"
set title "Operation Comparison - Scalar SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/scalar_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/scalar_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/scalar_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/scalar_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/scalar_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5


set terminal   svg enhanced
set output "plots/compare_operations_vect2_sp_loop.svg"
set title "Operation Comparison - Vect2 SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/vect2_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect2_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect2_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/vect2_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
	 

set terminal   svg enhanced
set output "plots/compare_operations_vect4_sp_loop.svg"
set title "Operation Comparison - Vect4 SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/vect4_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect4_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect4_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/vect4_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect8_sp_loop.svg"
set title "Operation Comparison - Vect8 SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/vect8_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect8_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect8_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/vect8_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect16_sp_loop.svg"
set title "Operation Comparison - Vect16 SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/vect16_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect16_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect16_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect16_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/vect16_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
	 



##################################################################
##                                                              ##
##                              DP                              ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_operations_scalar_dp_loop.svg"
set title "Operation Comparison - Scalar DP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/scalar_dp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/scalar_dp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/scalar_dp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/scalar_dp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/scalar_dp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5


set terminal   svg enhanced
set output "plots/compare_operations_vect2_dp_loop.svg"
set title "Operation Comparison - Vect2 DP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/vect2_dp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect2_dp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect2_dp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect2_dp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/vect2_dp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
	 

set terminal   svg enhanced
set output "plots/compare_operations_vect4_dp_loop.svg"
set title "Operation Comparison - Vect4 DP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/vect4_dp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect4_dp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect4_dp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect4_dp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/vect4_dp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect8_dp_loop.svg"
set title "Operation Comparison - Vect8 DP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/vect8_dp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect8_dp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect8_dp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect8_dp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/vect8_dp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect16_dp_loop.svg"
set title "Operation Comparison - Vect16 DP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/vect16_dp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect16_dp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect16_dp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect16_dp_div_priv_iter_1024_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
	 'data/vect16_dp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
	 
