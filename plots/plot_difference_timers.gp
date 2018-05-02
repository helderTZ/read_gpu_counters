set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

#set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128)



set terminal   svg noenhanced
set output "plots/compare_timers.svg"
set title "Timer Comparison" font "Helvetica,24"
set ylabel "Seconds [s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom
show grid

#set yrange [0.0001:128]
plot 'data/scalar_sp_add_power_kernel_timers.csv' using 3:4 title "OCL\_TIMER" with line lt -1 dashtype 1, \
	 'data/scalar_sp_add_power_kernel_timers.csv' using 3:5 title "TIME\_STAMP" with line lt -1 dashtype 2, \
	 'data/scalar_sp_add_power_kernel_timers.csv' using 3:6 title "GPU\_TICKS" with line lt -1 dashtype 3
