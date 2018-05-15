 

set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red




set border 3
set tics scale 0 font ",20"
unset grid

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

##################################################################
##                                                              ##
##                              FLOP/cy                         ##
##                                                              ##
##################################################################



set terminal   svg enhanced
set output "plots/compare_flops_per_cycle_simd_add_sp_priv.svg"
set title "SIMD Comparison - Add SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_add_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_add_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_add_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_add_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_add_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 


if (0) {

set terminal   svg enhanced
set output "plots/compare_flops_per_cycle_simd_sub_sp_priv.svg"
set title "SIMD Comparison - Sub SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_sub_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_sub_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_sub_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_sub_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_sub_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 


	 
set terminal   svg enhanced
set output "plots/compare_flops_per_cycle_simd_mul_sp_priv.svg"
set title "SIMD Comparison - Mul SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mul_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mul_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_mul_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mul_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_mul_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 




set terminal   svg enhanced
set output "plots/compare_flops_per_cycle_simd_div_sp_priv.svg"
set title "SIMD Comparison - Div SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_div_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_div_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_div_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_div_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_div_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 


}



set terminal   svg enhanced
set output "plots/compare_flops_per_cycle_simd_mad_sp_priv.svg"
set title "SIMD Comparison - Mad SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mad_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mad_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_mad_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mad_priv_iter_1024_kernel_flops_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_mad_priv_iter_1024_kernel_flops_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 

 
 


##################################################################
##                                                              ##
##                              Ins/cy                          ##
##                                                              ##
##################################################################




set terminal   svg enhanced
set output "plots/compare_ins_per_cycle_simd_add_sp_priv.svg"
set title "SIMD Comparison - Add SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_add_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_add_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_add_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_add_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_add_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 


if (0) {

set terminal   svg enhanced
set output "plots/compare_ins_per_cycle_simd_sub_sp_priv.svg"
set title "SIMD Comparison - Sub SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_sub_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_sub_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_sub_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_sub_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_sub_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 


	 
set terminal   svg enhanced
set output "plots/compare_ins_per_cycle_simd_mul_sp_priv.svg"
set title "SIMD Comparison - Mul SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mul_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mul_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_mul_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mul_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_mul_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 




set terminal   svg enhanced
set output "plots/compare_ins_per_cycle_simd_div_sp_priv.svg"
set title "SIMD Comparison - Div SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_div_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_div_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_div_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_div_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_div_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 


}



set terminal   svg enhanced
set output "plots/compare_ins_per_cycle_simd_mad_sp_priv.svg"
set title "SIMD Comparison - Mad SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format y '2^{%L}'
set key bottom font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mad_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mad_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_mad_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mad_priv_iter_1024_kernel_ins_per_cycle.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_mad_priv_iter_1024_kernel_ins_per_cycle.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 
