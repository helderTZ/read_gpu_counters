

set terminal svg enhanced
set output "timers.svg" 

#set logscale y 2
#set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
#set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red
set style func linespoints


#plot 'timers.csv' using 3:4 with linespoints ls 1, 'timers.csv' using 3:6 with linespoints ls 2 
plot 'timers.csv' using 3:4 with line lt -1, 'timers.csv' using 3:6 with line lt -1 lw 2
