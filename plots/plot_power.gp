set terminal  svg enhanced


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
##                         Power kernels                        ##
##                                                              ##
##################################################################


set terminal svg enhanced
set output "plots/compare_power_mad_power.svg"
set title "Power Comparison - SP MAD" font "Helvetica,24"
set ylabel "Power [W]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set format x '%3.0f'
set key bottom right font ",20"

set xtics (1,2,4,8,16,32)
set yrange [0:20]
plot './data/scalar_sp_mad_power_kernel_power.csv' using 1:4 every ::0::42 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 './data/vect2_sp_mad_power_kernel_power.csv'  using 1:4 every ::0::42 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 './data/vect4_sp_mad_power_kernel_power.csv'  using 1:4 every ::0::42 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 './data/vect8_sp_mad_power_kernel_power.csv'  using 1:4 every ::0::42 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 './data/vect16_sp_mad_power_kernel_power.csv' using 1:4 every ::0::42 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 




set terminal   svg enhanced
set output "plots/compare_power_mad_sp_power_max_power_kernels.svg"
set title "Power - MAD SP (Power kernel)" font "Helvetica,24"
set boxwidth 0.5 relative
 set style fill pattern
set format y '%2.0f'
unset key
set yrange [11:12]
plot 'data/compare_max_power_power.csv' using 2:xtic(1) with boxes fill pattern 5 lc "black", '' using 0:2:2 with labels offset 0,1 font ",20"

set terminal   svg enhanced
set output "plots/compare_power_mad_sp_power_max_priv_iter_8192_kernels.svg"
set title "Power - MAD SP (Priv 8192 kernel)" font "Helvetica,24"
set boxwidth 0.5 relative
 set style fill pattern
set format y '%2.0f'
unset key
set yrange [12:13]
plot 'data/compare_max_power_priv_iter_8192.csv' using 2:xtic(1) with boxes fill pattern 5 lc "black", '' using 0:2:2 with labels offset 0,1 font ",20"
