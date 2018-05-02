
set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

#set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128,256,512,1024)
set xtics font "Helvetica,20"
set ytics font "Helvetica,20"


set terminal   svg enhanced
set output "plots/compare_vector_bandwidth_cycles.svg"
set title "Vector Comparison - Bandwidth" font "Helvetica,24"
set ylabel "Bandwidth [Bytes/cycle]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

#set yrange [0.1:1024]
plot 'data/scalar_sp_load_store_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_load_store_iter_1024_kernel.csv' using 3:4 title "vect2" with line lt -1 dashtype 2, \
	 'data/vect4_sp_load_store_iter_1024_kernel.csv' using 3:4 title "vect4" with line lt -1 dashtype 3, \
	 'data/vect8_sp_load_store_iter_1024_kernel.csv' using 3:4 title "vect8" with line lt -1 dashtype 4, \
	 'data/vect16_sp_load_store_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5


set terminal   svg enhanced
set output "plots/compare_vector_bandwidth_gbs.svg"
set title "Vector Comparison - Bandwidth" font "Helvetica,24"
set ylabel "Bandwidth [GB/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom
show grid

#set ytics (0,20,40,60,80)
set yrange [0.1:1024]
plot 'data/scalar_sp_load_store_iter_1024_kernel.csv' using 3:5 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_load_store_iter_1024_kernel.csv' using 3:5 title "vect2" with line lt -1 dashtype 2, \
	 'data/vect4_sp_load_store_iter_1024_kernel.csv' using 3:5 title "vect4" with line lt -1 dashtype 3, \
	 'data/vect8_sp_load_store_iter_1024_kernel.csv' using 3:5 title "vect8" with line lt -1 dashtype 4, \
	 'data/vect16_sp_load_store_iter_1024_kernel.csv' using 3:5 title "vect16" with line lt -1 dashtype 5


