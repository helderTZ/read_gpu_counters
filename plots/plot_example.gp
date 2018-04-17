set terminal svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128)



set terminal svg enhanced
set output "plots/scalar_sp_add_ipc.svg"
set title "IPC"
set ylabel "Instructions per second" 
set xlabel "Number of threads"
set style func linespoints
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set key bottom
show grid

set yrange [0.0001:128]
plot 'data/scalar_sp_add_iter_1024_kernel.csv' using 3:4 title "scalar_sp_add_kernel" with line lt -1 dashtype 1
