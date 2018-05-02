
set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

#set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128)


##################################################################
##                                                              ##
##                     COMPARE SIMD FIXED OPS                   ##
##                                                              ##
##################################################################


set terminal svg enhanced
set output "plots/compare_power_add.svg"
set title "Power Comparison - SP Add" font "Helvetica,24"
set ylabel "Power [W]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,24"
set key bottom
show grid

set yrange [0:20]
plot './data/scalar_sp_add_power_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 './data/vect2_sp_add_power_kernel.csv' using 3:4 title "vect2" with line lt -1 dashtype 2, \
	 './data/vect4_sp_add_power_kernel.csv' using 3:4 title "vect4" with line lt -1 dashtype 3, \
	 './data/vect8_sp_add_power_kernel.csv' using 3:4 title "vect8" with line lt -1 dashtype 4, \
	 './data/vect16_sp_add_power_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


#set terminal   svg enhanced
#set output "compare_power_sub.svg"
#set title "Power Comparison - SP Sub"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'scalar_sp_sub_power_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
#	 'vect2_sp_sub_power_kernel.csv' using 3:4 title "vect2" with line lt -1 dashtype 2, \
#	 'vect4_sp_sub_power_kernel.csv' using 3:4 title "vect4" with line lt -1 dashtype 3, \
#	 'vect8_sp_sub_power_kernel.csv' using 3:4 title "vect8" with line lt -1 dashtype 4, \
#	 'vect16_sp_sub_power_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5
#	 
#
#set terminal   svg enhanced
#set output "compare_power_mul.svg"
#set title "Power Comparison - SP Mul"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'scalar_sp_mul_power_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
#	 'vect2_sp_mul_power_kernel.csv' using 3:4 title "vect2" with line lt -1 dashtype 2, \
#	 'vect4_sp_mul_power_kernel.csv' using 3:4 title "vect4" with line lt -1 dashtype 3, \
#	 'vect8_sp_mul_power_kernel.csv' using 3:4 title "vect8" with line lt -1 dashtype 4, \
#	 'vect16_sp_mul_power_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5
#	 
#	 
#set terminal   svg enhanced
#set output "compare_power_div.svg"
#set title "Power Comparison - SP Div"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'scalar_sp_div_power_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
#	 'vect2_sp_div_power_kernel.csv' using 3:4 title "vect2" with line lt -1 dashtype 2, \
#	 'vect4_sp_div_power_kernel.csv' using 3:4 title "vect4" with line lt -1 dashtype 3, \
#	 'vect8_sp_div_power_kernel.csv' using 3:4 title "vect8" with line lt -1 dashtype 4, \
#	 'vect16_sp_div_power_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5
#	 
#	 
#set terminal   svg enhanced
#set output "compare_power_mad.svg"
#set title "Power Comparison - SP Add"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'scalar_sp_mad_power_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
#	 'vect2_sp_mad_power_kernel.csv' using 3:4 title "vect2" with line lt -1 dashtype 2, \
#	 'vect4_sp_mad_power_kernel.csv' using 3:4 title "vect4" with line lt -1 dashtype 3, \
#	 'vect8_sp_mad_power_kernel.csv' using 3:4 title "vect8" with line lt -1 dashtype 4, \
#	 'vect16_sp_mad_power_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5
#	 

##################################################################
##                                                              ##
##                     COMPARE OPS FIXED SIMD                   ##
##                                                              ##
##################################################################



#set terminal   svg enhanced
#set output "compare_power_scalar.svg"
#set title "Power Comparison - SP Scalar"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'scalar_sp_add_power_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
#	 'scalar_sp_sub_power_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
#	 'scalar_sp_mul_power_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
#	 'scalar_sp_div_power_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
#	 'scalar_sp_mad_power_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
#
#
#set terminal   svg enhanced
#set output "compare_power_vect2.svg"
#set title "Power Comparison - SP Vect2"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'vect2_sp_add_power_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
#	 'vect2_sp_sub_power_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
#	 'vect2_sp_mul_power_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
#	 'vect2_sp_div_power_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
#	 'vect2_sp_mad_power_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
#	 
#
#set terminal   svg enhanced
#set output "compare_power_vect4.svg"
#set title "Power Comparison - SP Vect4"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'vect4_sp_add_power_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
#	 'vect4_sp_sub_power_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
#	 'vect4_sp_mul_power_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
#	 'vect4_sp_div_power_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
#	 'vect4_sp_mad_power_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
#	 
#	 
#set terminal   svg enhanced
#set output "compare_power_vect8.svg"
#set title "Power Comparison - SP Vect8"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'vect8_sp_add_power_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
#	 'vect8_sp_sub_power_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
#	 'vect8_sp_mul_power_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
#	 'vect8_sp_div_power_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
#	 'vect8_sp_mad_power_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
#	 
#	 
#set terminal   svg enhanced
#set output "compare_power_vect16.svg"
#set title "Power Comparison - SP Vect16"
#set ylabel "Power [W]" 
#set xlabel "Number of threads"
#set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
##set format y '2^{%L}'
#set key bottom
#show grid
#
#set yrange [0.0001:128]
#plot 'vect16_sp_add_power_kernel.csv' using 3:4 title "add" with line lt -1 dashtype 1, \
#	 'vect16_sp_sub_power_kernel.csv' using 3:4 title "sub" with line lt -1 dashtype 2, \
#	 'vect16_sp_mul_power_kernel.csv' using 3:4 title "mul" with line lt -1 dashtype 3, \
#	 'vect16_sp_div_power_kernel.csv' using 3:4 title "div" with line lt -1 dashtype 4, \
#	 'vect16_sp_mad_power_kernel.csv' using 3:4 title "mad" with line lt -1 dashtype 5
#
