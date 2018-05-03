
set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128,256,512,1024)

set border 3
set tics scale 0
unset grid


##################################################################
##                                                              ##
##                              SP                              ##
##                                                              ##
##################################################################


##################################################################
##                                                              ##
##                              LOOP                            ##
##                                                              ##
##################################################################


######################
##                  ##
##        ADD       ##
##                  ##
######################


set terminal   svg enhanced
set output "plots/compare_vector_add_sp_loop.svg"
set title "Vector Comparison - Add SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_add_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_add_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_add_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_add_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_add_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



######################
##                  ##
##        SUB       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_vector_sub_sp_loop.svg"
set title "Vector Comparison - Sub SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_sub_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_sub_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_sub_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_sub_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



######################
##                  ##
##        MUL       ##
##                  ##
######################
	 


set terminal   svg enhanced
set output "plots/compare_vector_mul_sp_loop.svg"
set title "Vector Comparison - Mul SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_mul_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mul_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mul_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


	 
######################
##                  ##
##        DIV       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_vector_div_sp_loop.svg"
set title "Vector Comparison - Div SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_div_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_div_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_div_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


######################
##                  ##
##        MAD       ##
##                  ##
######################
	 
	 

set terminal   svg enhanced
set output "plots/compare_vector_mad_sp_loop.svg"
set title "Vector Comparison - Mad SP (Loop kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_mad_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mad_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mad_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



##################################################################
##                                                              ##
##                         LOOP WITH UNROLL                     ##
##                                                              ##
##################################################################


######################
##                  ##
##        ADD       ##
##                  ##
######################


set terminal   svg enhanced
set output "plots/compare_vector_add_sp_loop_unroll.svg"
set title "Vector Comparison - Add SP (Loop unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_add_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_add_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_add_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_add_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



######################
##                  ##
##        SUB       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_vector_sub_sp_loop_unroll.svg"
set title "Vector Comparison - Sub SP (Loop unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_sub_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_sub_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_sub_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



######################
##                  ##
##        MUL       ##
##                  ##
######################
	 


set terminal   svg enhanced
set output "plots/compare_vector_mul_sp_loop_unroll.svg"
set title "Vector Comparison - Mul SP (Loop unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mul_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mul_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


	 
######################
##                  ##
##        DIV       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_vector_div_sp_loop_unroll.svg"
set title "Vector Comparison - Div SP (Loop unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_div_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_div_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_div_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


######################
##                  ##
##        MAD       ##
##                  ##
######################
	 
	 

set terminal   svg enhanced
set output "plots/compare_vector_mad_sp_loop_unroll.svg"
set title "Vector Comparison - Mad SP (Loop unroll kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mad_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_iter_128_unroll_64_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mad_iter_128_unroll_64_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5








##################################################################
##                                                              ##
##                           PRIV LOOP                          ##
##                                                              ##
##################################################################


######################
##                  ##
##        ADD       ##
##                  ##
######################


set terminal   svg enhanced
set output "plots/compare_vector_add_sp_priv.svg"
set title "Vector Comparison - Add SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_add_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_add_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_add_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_add_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



######################
##                  ##
##        SUB       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_vector_sub_sp_priv.svg"
set title "Vector Comparison - Sub SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_sub_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_sub_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_sub_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5



######################
##                  ##
##        MUL       ##
##                  ##
######################
	 


set terminal   svg enhanced
set output "plots/compare_vector_mul_sp_priv.svg"
set title "Vector Comparison - Mul SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mul_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mul_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


	 
######################
##                  ##
##        DIV       ##
##                  ##
######################



set terminal   svg enhanced
set output "plots/compare_vector_div_sp_priv.svg"
set title "Vector Comparison - Div SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_div_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_div_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


######################
##                  ##
##        MAD       ##
##                  ##
######################
	 
	 

set terminal   svg enhanced
set output "plots/compare_vector_mad_sp_priv.svg"
set title "Vector Comparison - Mad SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [Instructions/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom

set yrange [0.0001:128]
plot 'data/scalar_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_priv_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mad_priv_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_priv_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mad_priv_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5

