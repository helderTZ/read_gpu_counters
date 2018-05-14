 

set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

#set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128,256,512)
#set xtics (1,2,4,8,16,32,64,128,256,512,768,1024,1280,2048,4096,8192,16384,32768,65536,131072,262144,524288,1048576,2097152)


set border 3
set tics scale 0 font ",20"
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

if (0) {


set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_sp_simple.svg"
set title "SIMD Comparison - Add SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_add_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_add_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_add_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_add_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_add_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



set terminal   svg enhanced
set output "plots/compare_gflops_simd_sub_sp_simple.svg"
set title "SIMD Comparison - Sub SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_sub_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_sub_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_sub_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_sub_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


	 
set terminal   svg enhanced
set output "plots/compare_gflops_simd_mul_sp_simple.svg"
set title "SIMD Comparison - Mul SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mul_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mul_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mul_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5




set terminal   svg enhanced
set output "plots/compare_gflops_simd_div_sp_simple.svg"
set title "SIMD Comparison - Div SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_div_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_div_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_div_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_sp_simple.svg"
set title "SIMD Comparison - Mad SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mad_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mad_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mad_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5

}

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

if (0) {


set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_sp_loop.svg"
set title "SIMD Comparison - Add SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_add_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_add_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_add_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_add_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_add_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



set terminal   svg enhanced
set output "plots/compare_gflops_simd_sub_sp_loop.svg"
set title "SIMD Comparison - Sub SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_sub_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_sub_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_sub_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_sub_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


	 
set terminal   svg enhanced
set output "plots/compare_gflops_simd_mul_sp_loop.svg"
set title "SIMD Comparison - Mul SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mul_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mul_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mul_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5




set terminal   svg enhanced
set output "plots/compare_gflops_simd_div_sp_loop.svg"
set title "SIMD Comparison - Div SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_div_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_div_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_div_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_sp_loop.svg"
set title "SIMD Comparison - Mad SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mad_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mad_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mad_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


}

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

if (0) {


set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_sp_unroll.svg"
set title "SIMD Comparison - Add SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_add_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_add_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_add_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



set terminal   svg enhanced
set output "plots/compare_gflops_simd_sub_sp_unroll.svg"
set title "SIMD Comparison - Sub SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_sub_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_sub_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


	 
set terminal   svg enhanced
set output "plots/compare_gflops_simd_mul_sp_unroll.svg"
set title "SIMD Comparison - Mul SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mul_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5




set terminal   svg enhanced
set output "plots/compare_gflops_simd_div_sp_unroll.svg"
set title "SIMD Comparison - Div SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_div_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_div_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_div_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_sp_unroll.svg"
set title "SIMD Comparison - Mad SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0.01:512]
plot 'data/scalar_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mad_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


}


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
set output "plots/compare_gflops_simd_add_sp_priv.svg"
set title "SIMD Comparison - Add SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1 lc "#00000000", \
	 'data/vect2_sp_add_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 1 lc "#88000000", \
	 'data/vect4_sp_add_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 2 lc "#00000000", \
	 'data/vect8_sp_add_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 2 lc "#88000000", \
	 'data/vect16_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 3 lc "#00000000"



set terminal   svg enhanced
set output "plots/compare_gflops_simd_sub_sp_priv.svg"
set title "SIMD Comparison - Sub SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1 lc "#00000000", \
	 'data/vect2_sp_sub_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 1 lc "#88000000", \
	 'data/vect4_sp_sub_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 2 lc "#00000000", \
	 'data/vect8_sp_sub_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 2 lc "#88000000", \
	 'data/vect16_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 3 lc "#00000000"


	 
set terminal   svg enhanced
set output "plots/compare_gflops_simd_mul_sp_priv.svg"
set title "SIMD Comparison - Mul SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1 lc "#00000000", \
	 'data/vect2_sp_mul_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 1 lc "#88000000", \
	 'data/vect4_sp_mul_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 2 lc "#00000000", \
	 'data/vect8_sp_mul_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 2 lc "#88000000", \
	 'data/vect16_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 3 lc "#00000000"




set terminal   svg enhanced
set output "plots/compare_gflops_simd_div_sp_priv.svg"
set title "SIMD Comparison - Div SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1 lc "#00000000", \
	 'data/vect2_sp_div_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 1 lc "#88000000", \
	 'data/vect4_sp_div_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 2 lc "#00000000", \
	 'data/vect8_sp_div_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 2 lc "#88000000", \
	 'data/vect16_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 3 lc "#00000000"



set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_sp_priv.svg"
set title "SIMD Comparison - Mad SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1 lc "#00000000", \
	 'data/vect2_sp_mad_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 1 lc "#88000000", \
	 'data/vect4_sp_mad_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 2 lc "#00000000", \
	 'data/vect8_sp_mad_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 2 lc "#88000000", \
	 'data/vect16_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 3 lc "#00000000"

 

 
 
 
 
##################################################################
##                                                              ##
##                           iter 8192                          ##
##                                                              ##
##################################################################
 
 
 
set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_sp_priv_iter_8192.svg"
set title "SIMD Comparison - Add SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
#set logscale x 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_sp_add_priv_iter_8192_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1 lc "#00000000", \
	 'data/vect2_sp_add_priv_iter_8192_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 1 lc "#88000000", \
	 'data/vect4_sp_add_priv_iter_8192_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 2 lc "#00000000", \
	 'data/vect8_sp_add_priv_iter_8192_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 2 lc "#88000000", \
	 'data/vect16_sp_add_priv_iter_8192_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 3 lc "#00000000"



set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_sp_priv_iter_8192.svg"
set title "SIMD Comparison - Mad SP (Simple kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
#set logscale x 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mad_priv_iter_8192_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1 lc "#00000000", \
	 'data/vect2_sp_mad_priv_iter_8192_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 1 lc "#88000000", \
	 'data/vect4_sp_mad_priv_iter_8192_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 2 lc "#00000000", \
	 'data/vect8_sp_mad_priv_iter_8192_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 2 lc "#88000000", \
	 'data/vect16_sp_mad_priv_iter_8192_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 3 lc "#00000000"

 
