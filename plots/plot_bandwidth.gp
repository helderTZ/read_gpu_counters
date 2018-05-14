
set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
#set grid ytics lt 0 lc 0 lw 0.500
#set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

#set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128,256,512,1024)
set xtics font "Helvetica,20"
set ytics font "Helvetica,20"

#     Bit     plot        splot
#       1   bottom      bottom left front
#       2   left        bottom left back
#       4   top         bottom right front
#       8   right       bottom right back
#      16   no effect   left vertical
#      32   no effect   back vertical
#      64   no effect   right vertical
#     128   no effect   front vertical
#     256   no effect   top left back
#     512   no effect   top right back
#    1024   no effect   top left front
#    2048   no effect   top right front

set border 3
set tics scale 0
unset grid

if (0) {

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


#set yrange [0.1:1024]
plot 'data/scalar_sp_load_store_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_load_store_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_load_store_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_load_store_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_load_store_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 5

}

set terminal   svg enhanced dashed
set output "plots/compare_vector_bandwidth_gbs.svg"
set title "Vector Comparison - Bandwidth" font "Helvetica,24"
set ylabel "Bandwidth [GB/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
set logscale x 2
set format x '2^{%L}'
#set format y '2^{%L}'
set key top left
#set grid


#set ytics (0,2,4,8,16,32,64,128,256,512)
#set yrange [0.1:600]
plot 'data/scalar_sp_load_store_iter_1024_kernel.csv' using 3:4 title "scalar" with line lt -1 dashtype 1 lc "#00000000", \
	 'data/vect2_sp_load_store_iter_1024_kernel.csv'  using 3:4 title "vect2"  with line lt -1 dashtype 1 lc "#88000000", \
	 'data/vect4_sp_load_store_iter_1024_kernel.csv'  using 3:4 title "vect4"  with line lt -1 dashtype 2 lc "#00000000", \
	 'data/vect8_sp_load_store_iter_1024_kernel.csv'  using 3:4 title "vect8"  with line lt -1 dashtype 2 lc "#88000000", \
	 'data/vect16_sp_load_store_iter_1024_kernel.csv' using 3:4 title "vect16" with line lt -1 dashtype 3 lc "#00000000"


