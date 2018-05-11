 

set terminal   svg enhanced


set datafile separator '\t'
#set decimalsign ','
set grid ytics lt 0 lc 0 lw 0.500
set grid xtics lt 0 lc 0 lw 0.500
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red

#set ytics (-1,0,0.0625,0.125,0.25,0.5,1,2,4,8,16,32,64,128,256,512)
set xtics (512,1024,2048,4096)


set border 3
set tics scale 0 font ",20"
unset grid


#every ::30::33


set terminal   svg enhanced
set output "plots/compare_gflops_per_watt_add_sp_priv.svg"
set title "Energy Efficiency - Add SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style histogram clustered
#set logscale xy 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key top font ",20"

set yrange [0:40]
plot newhistogram "hello", "data/scalar_sp_add_priv_iter_1024_kernel_energy_efficiency.csv" every ::46::49 using 4, \
	 newhistogram "hello", "data/vect2_sp_add_priv_iter_1024_kernel_energy_efficiency.csv"  every ::46::49 using 4, \
	 newhistogram "hello", "data/vect4_sp_add_priv_iter_1024_kernel_energy_efficiency.csv"  every ::46::49 using 4, \
	 newhistogram "hello", "data/vect8_sp_add_priv_iter_1024_kernel_energy_efficiency.csv"  every ::46::49 using 4, \
	 newhistogram "hello", "data/vect16_sp_add_priv_iter_1024_kernel_energy_efficiency.csv" every ::46::49 using 4



set terminal   svg enhanced
set output "plots/compare_gflops_per_watt_sub_sp_priv.svg"
set title "Energy Efficiency - Mad SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom font ",20"

set yrange [0:40]
plot 'data/scalar_sp_sub_priv_iter_1024_kernel_energy_efficiency.csv' every ::30::33 using 1:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_sub_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_sub_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_sub_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_sub_priv_iter_1024_kernel_energy_efficiency.csv' every ::30::33 using 1:4 title "vect16" with line lt -1 dashtype 5




set terminal   svg enhanced
set output "plots/compare_gflops_per_watt_mul_sp_priv.svg"
set title "Energy Efficiency - Mad SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom font ",20"

set yrange [0:40]
plot 'data/scalar_sp_mul_priv_iter_1024_kernel_energy_efficiency.csv' every ::30::33 using 1:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mul_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mul_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mul_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mul_priv_iter_1024_kernel_energy_efficiency.csv' every ::30::33 using 1:4 title "vect16" with line lt -1 dashtype 5




set terminal   svg enhanced
set output "plots/compare_gflops_per_watt_div_sp_priv.svg"
set title "Energy Efficiency - Mad SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom font ",20"

set yrange [0:40]
plot 'data/scalar_sp_div_priv_iter_1024_kernel_energy_efficiency.csv' every ::30::33 using 1:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_div_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_div_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_div_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_div_priv_iter_1024_kernel_energy_efficiency.csv' every ::30::33 using 1:4 title "vect16" with line lt -1 dashtype 5




set terminal   svg enhanced
set output "plots/compare_gflops_per_watt_mad_sp_priv.svg"
set title "Energy Efficiency - Mad SP (Priv kernel)" font "Helvetica,24"
set ylabel "Performance [GFLOP/s]" font "Helvetica,20"
set xlabel "Number of threads" font "Helvetica,20"
set style func linespoints
#set logscale xy 2
#set format x '2^{%L}'
#set format y '2^{%L}'
set key bottom font ",20"

set yrange [0:40]
plot 'data/scalar_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv' every ::30::33 using 1:4 title "scalar" with line lt -1 dashtype 1, \
	 'data/vect2_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect2"  with line lt -1 dashtype 2, \
	 'data/vect4_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect4"  with line lt -1 dashtype 3, \
	 'data/vect8_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv'  every ::30::33 using 1:4 title "vect8"  with line lt -1 dashtype 4, \
	 'data/vect16_sp_mad_priv_iter_1024_kernel_energy_efficiency.csv' every ::30::33 using 1:4 title "vect16" with line lt -1 dashtype 5

