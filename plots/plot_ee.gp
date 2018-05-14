 

set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set border 3
set tics scale 0 font ",20"
unset grid

if (0) {

set terminal   svg enhanced
set output "plots/compare_gflops_per_watt_mad_sp_priv.svg"
set title "Energy Efficiency - MAD SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom font ",20"

set yrange [0:40]
plot 'data/scalar_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv' using 1:4 every ::30::33 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv'  using 1:4 every ::30::33 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv'  using 1:4 every ::30::33 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv'  using 1:4 every ::30::33 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv' using 1:4 every ::30::33 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 

}



set terminal   svg enhanced
set output "plots/compare_gflops_per_watt_mad_sp_power.svg"
set title "Energy Efficiency - MAD SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of Work Groups" font "Helvetica,20"
set style func linespoint
set format x '%3.0f'
set key bottom right font ",20"

set xtics (1,2,4,8,16,32)
set yrange [0:40]
plot 'data/scalar_sp_mad_power_kernel_energy_efficiency.csv' using 1:4 every ::0::42 title "scalar" with line lt -1 dashtype 1 lw 4 lc "black", \
	 'data/vect2_sp_mad_power_kernel_energy_efficiency.csv'  using 1:4 every ::0::42 title "vect2"  with line lt -1 dashtype 1 lw 3 lc "grey" , \
	 'data/vect4_sp_mad_power_kernel_energy_efficiency.csv'  using 1:4 every ::0::42 title "vect4"  with line lt -1 dashtype 1 lw 2 lc "black", \
	 'data/vect8_sp_mad_power_kernel_energy_efficiency.csv'  using 1:4 every ::0::42 title "vect8"  with line lt -1 dashtype 1 lw 1 lc "grey" , \
	 'data/vect16_sp_mad_power_kernel_energy_efficiency.csv' using 1:4 every ::0::42 title "vect16" with line lt -1 dashtype 2 lw 1 lc "black" 



set terminal   svg enhanced
set output "plots/compare_gflops_per_watt_mad_sp_power_max.svg"
set title "Energy Efficiency - MAD SP (Power kernel)" font "Helvetica,24"
set boxwidth 0.5 relative
 set style fill pattern
set format y '%2.0f'
unset key
set yrange [34:36]
plot 'data/compare_max_ee.csv' using 2:xtic(1) with boxes fill pattern 5 lc "black", '' using 0:2:2 with labels offset 0,1 font ",20"



