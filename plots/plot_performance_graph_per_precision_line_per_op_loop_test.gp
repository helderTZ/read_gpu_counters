
set terminal svg enhanced


set datafile separator '\t'
#set decimalsign ','
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red


set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128)

##################################################################
##                                                              ##
##                            Scalar                            ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_precisions_scalar_add_loop.svg"
set title "Precision Comparison - Scalar Add (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/scalar_sp_add_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/scalar_dp_add_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_scalar_sub_loop.svg"
set title "Precision Comparison - Scalar Sub (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/scalar_sp_sub_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/scalar_dp_sub_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_scalar_mul_loop.svg"
set title "Precision Comparison - Scalar Mul (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/scalar_sp_mul_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/scalar_dp_mul_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_scalar_div_loop.svg"
set title "Precision Comparison - Scalar Div (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/scalar_sp_div_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/scalar_dp_div_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_scalar_mad_loop.svg"
set title "Precision Comparison - Scalar Mad (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/scalar_sp_mad_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/scalar_dp_mad_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



##################################################################
##                                                              ##
##                            Vect2                             ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_precisions_vect2_add_loop.svg"
set title "Precision Comparison - Vect2 Add (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect2_sp_add_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect2_dp_add_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect2_sub_loop.svg"
set title "Precision Comparison - Vect2 Sub (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect2_sp_sub_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect2_dp_sub_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect2_mul_loop.svg"
set title "Precision Comparison - Vect2 Mul (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect2_sp_mul_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect2_dp_mul_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect2_div_loop.svg"
set title "Precision Comparison - Vect2 Div (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect2_sp_div_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect2_dp_div_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect2_mad_loop.svg"
set title "Precision Comparison - Vect2 Mad (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect2_sp_mad_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect2_dp_mad_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



##################################################################
##                                                              ##
##                            Vect4                             ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_precisions_vect4_add_loop.svg"
set title "Precision Comparison - Vect4 Add (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect4_sp_add_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect4_dp_add_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect4_sub_loop.svg"
set title "Precision Comparison - Vect4 Sub (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect4_sp_sub_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect4_dp_sub_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect4_mul_loop.svg"
set title "Precision Comparison - Vect4 Mul (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect4_sp_mul_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect4_dp_mul_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect4_div_loop.svg"
set title "Precision Comparison - Vect4 Div (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect4_sp_div_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect4_dp_div_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect4_mad_loop.svg"
set title "Precision Comparison - Vect4 Mad (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect4_sp_mad_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect4_dp_mad_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



##################################################################
##                                                              ##
##                            Vect8                             ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_precisions_vect8_add_loop.svg"
set title "Precision Comparison - Vect8 Add (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect8_sp_add_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect8_dp_add_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect8_sub_loop.svg"
set title "Precision Comparison - Vect8 Sub (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect8_sp_sub_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect8_dp_sub_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect8_mul_loop.svg"
set title "Precision Comparison - Vect8 Mul (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect8_sp_mul_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect8_dp_mul_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect8_div_loop.svg"
set title "Precision Comparison - Vect8 Div (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect8_sp_div_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect8_dp_div_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect8_mad_loop.svg"
set title "Precision Comparison - Vect8 Mad (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect8_sp_mad_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect8_dp_mad_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



##################################################################
##                                                              ##
##                            Vect16                            ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_precisions_vect16_add_loop.svg"
set title "Precision Comparison - Vect16 Add (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect16_sp_add_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect16_dp_add_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect16_sub_loop.svg"
set title "Precision Comparison - Vect16 Sub (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect16_sp_sub_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect16_dp_sub_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect16_mul_loop.svg"
set title "Precision Comparison - Vect16 Mul (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect16_sp_mul_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect16_dp_mul_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect16_div_loop.svg"
set title "Precision Comparison - Vect16 Div (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect16_sp_div_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect16_dp_div_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



set terminal   svg enhanced
set output "plots/compare_precisions_vect16_mad_loop.svg"
set title "Precision Comparison - Vect16 Mad (Loop kernel)"
set ylabel "Performance [Instructions/cycle]" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
set grid ytics
set grid xtics
show grid

set yrange [0.0001:128]
plot 'data/vect16_sp_mad_iter_1024_kernel.csv' using 3:4 title "single" with line lt -1 dashtype 1, \
	 'data/vect16_dp_mad_iter_1024_kernel.csv' using 3:4 title "double" with line lt -1 dashtype 2



