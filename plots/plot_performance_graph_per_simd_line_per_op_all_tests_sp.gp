
set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128)


set border 3
set tics scale 0
unset grid

##################################################################
##                                                              ##
##                              Simple                          ##
##                                                              ##
##################################################################

##################################################################
##                                                              ##
##                              SP                              ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_operations_scalar_sp_simple.svg"
set title "Operation Comparison - Scalar SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/scalar_sp_add_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/scalar_sp_sub_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/scalar_sp_mul_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/scalar_sp_mad_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_operations_vect2_sp_simple.svg"
set title "Operation Comparison - Vect2 SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect2_sp_add_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect2_sp_mul_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect2_sp_mad_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_operations_vect4_sp_simple.svg"
set title "Operation Comparison - Vect4 SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect4_sp_add_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect4_sp_sub_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect4_sp_mad_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect8_sp_simple.svg"
set title "Operation Comparison - Vect8 SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect8_sp_add_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect8_sp_sub_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect8_sp_mul_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect16_sp_simple.svg"
set title "Operation Comparison - Vect16 SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect16_sp_add_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect16_sp_sub_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect16_sp_mul_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect16_sp_mad_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 

##################################################################
##                                                              ##
##                              Loop                            ##
##                                                              ##
##################################################################

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
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/scalar_sp_add_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/scalar_sp_sub_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/scalar_sp_mul_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/scalar_sp_mad_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_operations_vect2_sp_loop.svg"
set title "Operation Comparison - Vect2 SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect2_sp_add_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect2_sp_mul_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect2_sp_mad_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_operations_vect4_sp_loop.svg"
set title "Operation Comparison - Vect4 SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect4_sp_add_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect4_sp_sub_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect4_sp_mad_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect8_sp_loop.svg"
set title "Operation Comparison - Vect8 SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect8_sp_add_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect8_sp_sub_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect8_sp_mul_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect16_sp_loop.svg"
set title "Operation Comparison - Vect16 SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect16_sp_add_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect16_sp_sub_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect16_sp_mul_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect16_sp_mad_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 

##################################################################
##                                                              ##
##                       Loop with unroll                       ##
##                                                              ##
##################################################################

##################################################################
##                                                              ##
##                              SP                              ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_operations_scalar_sp_unroll.svg"
set title "Operation Comparison - Scalar SP (Unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/scalar_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/scalar_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/scalar_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/scalar_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_operations_vect2_sp_unroll.svg"
set title "Operation Comparison - Vect2 SP (Unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect2_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect2_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect2_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_operations_vect4_sp_unroll.svg"
set title "Operation Comparison - Vect4 SP (Unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect4_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect4_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect4_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect8_sp_unroll.svg"
set title "Operation Comparison - Vect8 SP (Unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect8_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect8_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect8_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect16_sp_unroll.svg"
set title "Operation Comparison - Vect16 SP (Unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect16_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect16_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect16_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect16_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 


##################################################################
##                                                              ##
##                             Priv                             ##
##                                                              ##
##################################################################

##################################################################
##                                                              ##
##                              SP                              ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_operations_scalar_sp_priv.svg"
set title "Operation Comparison - Scalar SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/scalar_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/scalar_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/scalar_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/scalar_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4


set terminal   svg enhanced
set output "plots/compare_operations_vect2_sp_priv.svg"
set title "Operation Comparison - Vect2 SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect2_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect2_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect2_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 

set terminal   svg enhanced
set output "plots/compare_operations_vect4_sp_priv.svg"
set title "Operation Comparison - Vect4 SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect4_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect4_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect4_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect8_sp_priv.svg"
set title "Operation Comparison - Vect8 SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect8_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect8_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect8_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 
	 
set terminal   svg enhanced
set output "plots/compare_operations_vect16_sp_priv.svg"
set title "Operation Comparison - Vect16 SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.01:1024]
plot 'data/vect16_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
	 'data/vect16_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
	 'data/vect16_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
	 'data/vect16_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 4
	 

