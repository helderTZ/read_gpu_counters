 

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
##                                SP                            ##
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
##                               SP                             ##
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
##                             SP                               ##
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
##                       priv iter 1024                         ##
##                             SP                               ##
##                                                              ##
##################################################################


set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_sp_priv_iter_1024.svg"
set title "SIMD Comparison - Add SP (Priv 1024 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_add_priv_iter_1024_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_add_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_add_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_add_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_add_priv_iter_1024_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"



set terminal   svg enhanced
set output "plots/compare_gflops_simd_sub_sp_priv_iter_1024.svg"
set title "SIMD Comparison - Sub SP (Priv 1024 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_sub_priv_iter_1024_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_sub_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_sub_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_sub_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_sub_priv_iter_1024_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"


	 
set terminal   svg enhanced
set output "plots/compare_gflops_simd_mul_sp_priv_iter_1024.svg"
set title "SIMD Comparison - Mul SP (Priv 1024 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mul_priv_iter_1024_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mul_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_mul_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mul_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_mul_priv_iter_1024_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"




set terminal   svg enhanced
set output "plots/compare_gflops_simd_div_sp_priv_iter_1024.svg"
set title "SIMD Comparison - Div SP (Priv 1024 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_div_priv_iter_1024_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_div_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_div_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_div_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_div_priv_iter_1024_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"



set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_sp_priv_iter_1024.svg"
set title "SIMD Comparison - Mad SP (Priv 1024 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mad_priv_iter_1024_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mad_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_mad_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mad_priv_iter_1024_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_mad_priv_iter_1024_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"







##################################################################
##                                                              ##
##                       priv iter 8192                         ##
##                             SP                               ##
##                                                              ##
##################################################################
 
 
 
set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_sp_priv_iter_8192.svg"
set title "SIMD Comparison - Add SP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_add_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_add_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"



if (0) {
 
set terminal   svg enhanced
set output "plots/compare_gflops_simd_sub_sp_priv_iter_8192.svg"
set title "SIMD Comparison - Sub SP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_sub_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_sub_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_sub_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_sub_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_sub_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"



set terminal   svg enhanced
set output "plots/compare_gflops_simd_mul_sp_priv_iter_8192.svg"
set title "SIMD Comparison - Mul SP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mul_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mul_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_mul_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mul_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_mul_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"




set terminal   svg enhanced
set output "plots/compare_gflops_simd_div_sp_priv_iter_8192.svg"
set title "SIMD Comparison - Div SP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_div_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_div_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_div_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_div_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_div_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"


}



set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_sp_priv_iter_8192.svg"
set title "SIMD Comparison - Mad SP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mad_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_mad_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"





##################################################################
##                                                              ##
##                       priv iter 8192                         ##
##                             DP                               ##
##                                                              ##
##################################################################


set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_dp_priv_iter_8192.svg"
set title "SIMD Comparison - ADD DP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_dp_add_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_dp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_dp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_dp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_dp_add_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"




set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_dp_priv_iter_8192.svg"
set title "SIMD Comparison - MAD DP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key top left font ",20"

set yrange [0:400]
plot 'data/scalar_dp_mad_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_dp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_dp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_dp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_dp_mad_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"








##################################################################
##                                                              ##
##                       priv iter 8192                         ##
##                          SP+DP                               ##
##                                                              ##
##################################################################



set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_sp_dp_priv_iter_8192.svg"
set title "SIMD Comparison - ADD SP+DP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key top horizontal font ",20"
set label "SP" at 2048,250 font ",30"
set label "DP" at 2048,100 font ",30"
show label

set yrange [0:400]
plot 'data/scalar_sp_add_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_add_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black", \
	 'data/scalar_dp_add_priv_iter_8192_kernel_gflops.csv' using 1:4 title "" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_dp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "" with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_dp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "" with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_dp_add_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "" with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_dp_add_priv_iter_8192_kernel_gflops.csv' using 1:4 title "" with line lt -1 dashtype 2 lw 1 lc "black", \



unset label
unset key
set terminal   svg enhanced
set output "plots/compare_gflops_simd_mad_sp_dp_priv_iter_8192.svg"
set title "SIMD Comparison - MAD SP+DP (Priv 8192 kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key center right vertical font ",20"
set label "SP" at 2048,350 font ",30"
set label "DP" at 2048,50 font ",30"
show label

set yrange [0:400]
plot 'data/scalar_sp_mad_priv_iter_8192_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_mad_priv_iter_8192_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black", \
	 'data/scalar_dp_mad_priv_iter_8192_kernel_gflops.csv' using 1:4 title "" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_dp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "" with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_dp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "" with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_dp_mad_priv_iter_8192_kernel_gflops.csv'  using 1:4 title "" with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_dp_mad_priv_iter_8192_kernel_gflops.csv' using 1:4 title "" with line lt -1 dashtype 2 lw 1 lc "black", \







##################################################################
##                                                              ##
##                          power                               ##
##                           SP                                 ##
##                                                              ##
##################################################################


if (0) {



set terminal   svg enhanced
set output "plots/compare_gflops_simd_add_sp_power.svg"
set title "SIMD Comparison - Add SP (Power kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_add_power_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_add_power_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_add_power_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_add_power_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_add_power_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"



set terminal   svg enhanced
set output "plots/compare_gflops_simd_sub_sp_power.svg"
set title "SIMD Comparison - Sub SP (Power kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_sub_power_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_sub_power_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_sub_power_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_sub_power_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_sub_power_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"




set terminal   svg enhanced
set output "plots/compare_gflops_simd_mul_sp_power.svg"
set title "SIMD Comparison - Mul SP (Power kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mul_power_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mul_power_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_mul_power_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mul_power_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_mul_power_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"





set terminal   svg enhanced
set output "plots/compare_gflops_simd_div_sp_power.svg"
set title "SIMD Comparison - Div SP (Power kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_div_power_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_div_power_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_div_power_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_div_power_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_div_power_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"

}



set terminal   svg enhanced 
set output "plots/compare_gflops_simd_mad_sp_power.svg"
set title "SIMD Comparison - MAD SP (Power kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '%3.0f'
set key bottom right font ",20"

set yrange [0:400]
plot 'data/scalar_sp_mad_power_kernel_gflops.csv' using 1:4 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mad_power_kernel_gflops.csv'  using 1:4 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey",  \
	 'data/vect4_sp_mad_power_kernel_gflops.csv'  using 1:4 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mad_power_kernel_gflops.csv'  using 1:4 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey",  \
	 'data/vect16_sp_mad_power_kernel_gflops.csv' using 1:4 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black"

 
