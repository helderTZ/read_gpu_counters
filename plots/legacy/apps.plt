##EuroPar Paper

set terminal svg enhanced size 690,360
set output "carm_perf_soa_wrf.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:0.02]
set yrange [0.035:6.8308]
set key center
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.013 0.215519217'" with points lc rgb 'black' pt 1 ps 1.5 title 'wrf\_1',\
		"<echo '0.016 0.269681438'" with points lc rgb "#696969" pt 1 ps 1.5 title 'wrf\_2',\
		"<echo '0.014 0.311091889'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title 'wrf\_3'

set terminal svg enhanced size 690,360
set output "carm_perf_ld_sp_wrf.svg"
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:0.02]
set yrange [0.035:6.8308]
set key center
unset key

B_L1 = 31.83483812
B_L2 = 19.70695894
B_L3 = 12.11905611
B_DRAM = 3.502194719

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.013 0.215519217'" with points lc rgb 'black' pt 1 ps 1.5 title 'wrf\_1',\
		"<echo '0.016 0.269681438'" with points lc rgb "#696969" pt 1 ps 1.5 title 'wrf\_2',\
		"<echo '0.014 0.311091889'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title 'wrf\_3'

set terminal svg enhanced size 690,360
set output "carm_perf_soa_grp3.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.025:0.04]
set yrange [0.18:13.6616]
set key center
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.027297534 0.722102872'" with points lc rgb '#A9A9A9' pt 5 ps 1.5 title 'gamess\_2',\
		"<echo '0.036 1.622585075'" with points lc rgb 'black' pt 6 ps 1.5 title 'calculix'

set terminal svg enhanced size 690,360
set output "carm_perf_2ld_st_dp_grp3.svg"
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.025:0.04]
set yrange [0.18:13.6616]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
unset key
 
B_L1 = 74.56645376
B_L2 = 47.04492193
B_L3 = 30.77550405
B_DRAM = 7.5080482

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.027297534 0.722102872'" with points lc rgb '#A9A9A9' pt 5 ps 1.5 title 'gamess\_2',\
		"<echo '0.036 1.622585075'" with points lc rgb 'black' pt 6 ps 1.5 title 'calculix'

set terminal svg enhanced size 690,360
set output "carm_perf_soa_grp4.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.04:0.15]
set yrange [0.228:51.231]
set key center
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.052 1.275908485'" with points lc rgb 'black' pt 9 ps 1.5 title 'cactusADM',\
		"<echo '0.135 1.520938915'" with points lc rgb 'black' pt 13 ps 1.5 title 'lbm\_1'

		
set terminal svg enhanced size 690,360
set output "carm_perf_ld_dp_grp4.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.04:0.15]
set yrange [0.228:51.231]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
unset key

B_L1 = 63.89814088
B_L2 = 32.02874878
B_L3 = 22.68858035
B_DRAM = 5.70708804

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.052 1.275908485'" with points lc rgb 'black' pt 9 ps 1.5 title 'cactusADM',\
		"<echo '0.135 1.520938915'" with points lc rgb 'black' pt 13 ps 1.5 title 'lbm\_1'

set terminal svg enhanced size 690,360
set output "carm_perf_soa_grp5.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.02:0.05]
set yrange [0.114:17.077]
set key center
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.03 0.487765365'" with points lc rgb "#696969" pt 7 ps 1.5 title 'bwaves\_3',\
		"<echo '0.022 0.5724695'" with points lc rgb 'black' pt 8 ps 1.5 title 'zeusmp\_1',\
		"<echo '0.042 0.665513694'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title 'zeusmp\_2',\
		"<echo '0.03 0.884012065'" with points lc rgb "#696969" pt 8 ps 1.5 title 'zeusmp\_3',\
		"<echo '0.044 0.910500878'" with points lc rgb "#D3D3D3" pt 8 ps 1.5 title 'zeusmp\_4',\
		"<echo '0.037 1.23058769'" with points lc rgb 'black' pt 12 ps 1.5 title 'tonto\_1',\
		"<echo '0.043 1.340793725'" with points lc rgb "#A9A9A9" pt 12 ps 1.5 title 'tonto\_2'

set terminal svg enhanced size 690,360
set output "carm_perf_ld_dp_grp5.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.02:0.05]
set yrange [0.114:17.077]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
unset key

B_L1 = 63.89814088
B_L2 = 32.02874878
B_L3 = 22.68858035
B_DRAM = 5.70708804

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.03 0.487765365'" with points lc rgb "#696969" pt 7 ps 1.5 title 'bwaves\_3',\
		"<echo '0.022 0.5724695'" with points lc rgb 'black' pt 8 ps 1.5 title 'zeusmp\_1',\
		"<echo '0.042 0.665513694'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title 'zeusmp\_2',\
		"<echo '0.03 0.884012065'" with points lc rgb "#696969" pt 8 ps 1.5 title 'zeusmp\_3',\
		"<echo '0.044 0.910500878'" with points lc rgb "#D3D3D3" pt 8 ps 1.5 title 'zeusmp\_4',\
		"<echo '0.037 1.23058769'" with points lc rgb 'black' pt 12 ps 1.5 title 'tonto\_1',\
		"<echo '0.043 1.340793725'" with points lc rgb "#A9A9A9" pt 12 ps 1.5 title 'tonto\_2'

set terminal svg enhanced size 690,360
set output "carm_perf_soa_grp6.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.005:0.015]
set yrange [0.0285:5.1231]
set key center
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.008 0.284556321'" with points lc rgb 'black' pt 5 ps 1.5 title 'gamess\_1',\
		"<echo '0.008 0.119562541'" with points lc rgb 'black' pt 7 ps 1.5 title 'bwaves\_1',\
		"<echo '0.009 0.129913321'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title 'bwaves\_2',\
		"<echo '0.01 0.129715391'" with points lc rgb 'black' pt 10 ps 1.5 title 'gemsFDTD\_1',\
		"<echo '0.01 0.142836301'" with points lc rgb "#A9A9A9" pt 10 ps 1.5 title 'gemsFDTD\_2',\
		"<echo '0.013 0.190953403'" with points lc rgb "#696969" pt 10 ps 1.5 title 'gemsFDTD\_3',\
		"<echo '0.013 0.194075639'" with points lc rgb "#D3D3D3" pt 10 ps 1.5 title 'gemsFDTD\_4',\
		"<echo '0.012 0.240005971'" with points lc rgb 'black' pt 11 ps 1.5 title 'leslie3d\_1',\
		"<echo '0.007 0.127031683'" with points lc rgb "#A9A9A9" pt 11 ps 1.5 title 'leslie3d\_2',\
		"<echo '0.012 0.245456071'" with points lc rgb "#696969" pt 11 ps 1.5 title 'leslie3d\_3',\
		"<echo '0.007 0.120572521'" with points lc rgb "#D3D3D3" pt 11 ps 1.5 title 'leslie3d\_4',\
		"<echo '0.013 0.280210518'" with points lc rgb "#7F7F7F" pt 11 ps 1.5 title 'leslie3d\_5',\
		"<echo '0.007 0.127073697'" with points lc rgb "#2F4F4F" pt 11 ps 1.5 title 'leslie3d\_6',\
		"<echo '0.007 0.327902736'" with points lc rgb "#696969" pt 12 ps 1.5 title 'tonto\_3'

set terminal svg enhanced size 690,360
set output "carm_perf_ld_dp_grp6.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.005:0.015]
set yrange [0.0285:5.1231]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
unset key

B_L1 = 63.89814088
B_L2 = 32.02874878
B_L3 = 22.68858035
B_DRAM = 5.70708804

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.008 0.284556321'" with points lc rgb 'black' pt 5 ps 1.5 title 'gamess\_1',\
		"<echo '0.008 0.119562541'" with points lc rgb 'black' pt 7 ps 1.5 title 'bwaves\_1',\
		"<echo '0.009 0.129913321'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title 'bwaves\_2',\
		"<echo '0.01 0.129715391'" with points lc rgb 'black' pt 10 ps 1.5 title 'gemsFDTD\_1',\
		"<echo '0.01 0.142836301'" with points lc rgb "#A9A9A9" pt 10 ps 1.5 title 'gemsFDTD\_2',\
		"<echo '0.013 0.190953403'" with points lc rgb "#696969" pt 10 ps 1.5 title 'gemsFDTD\_3',\
		"<echo '0.013 0.194075639'" with points lc rgb "#D3D3D3" pt 10 ps 1.5 title 'gemsFDTD\_4',\
		"<echo '0.012 0.240005971'" with points lc rgb 'black' pt 11 ps 1.5 title 'leslie3d\_1',\
		"<echo '0.007 0.127031683'" with points lc rgb "#A9A9A9" pt 11 ps 1.5 title 'leslie3d\_2',\
		"<echo '0.012 0.245456071'" with points lc rgb "#696969" pt 11 ps 1.5 title 'leslie3d\_3',\
		"<echo '0.007 0.120572521'" with points lc rgb "#D3D3D3" pt 11 ps 1.5 title 'leslie3d\_4',\
		"<echo '0.013 0.280210518'" with points lc rgb "#7F7F7F" pt 11 ps 1.5 title 'leslie3d\_5',\
		"<echo '0.007 0.127073697'" with points lc rgb "#2F4F4F" pt 11 ps 1.5 title 'leslie3d\_6',\
		"<echo '0.007 0.327902736'" with points lc rgb "#696969" pt 12 ps 1.5 title 'tonto\_3'
		
set terminal svg enhanced size 690,360
set output "carm_perf_soa_grp2.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.020:0.085]
set yrange [0.05:29.309]
set key center
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.031466173 0.472286442'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 0.342969987'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 1.066740929'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs',\
		"<echo '0.026 0.083119713'" with points lc rgb 'black' pt 4 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 0.123471735'" with points lc rgb "#A9A9A9" pt 4 ps 1.5 title 'soplex\_2'

set terminal svg enhanced size 690,360
set output "carm_perf_2ld_st_dp_grp2.svg"
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.020:0.085]
set yrange [0.05:29.309]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
unset key
 
B_L1 = 74.56645376
B_L2 = 47.04492193
B_L3 = 30.77550405
B_DRAM = 7.5080482

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.031466173 0.472286442'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 0.342969987'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 1.066740929'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs',\
		"<echo '0.026 0.083119713'" with points lc rgb 'black' pt 4 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 0.123471735'" with points lc rgb "#A9A9A9" pt 4 ps 1.5 title 'soplex\_2'		

		
set terminal svg enhanced size 690,360
set output "carm_power_soa_euro.svg" 
unset logscale y
set logscale x 10 
set format x '10^{%L}'
set format y
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/bytes]";
set xrange [0.02:100]
set yrange [11:26]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

pw_L1 = 19.830308
pw_L2 = 18.219828
pw_L3 = 18.843791
pw_DRAM = 16.248606

pw_FMA = 19.293178

constant_pw = 13.71458145

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)


plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.031466173 13.2067'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 12.71945185'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 16.01327399'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs\_1',\
		"<echo '0.026 14.04987133'" with points lc rgb 'black' pt 4 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 12.60302694'" with points lc rgb "#A9A9A9" pt 4 ps 1.5 title 'soplex\_2'		

		
set terminal svg enhanced size 690,360
set output "carm_eff_soa_euro.svg" 
set logscale xy 10 
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.02:10]
set yrange [0.003:4]
set key center
set key top  
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key 
B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

pw_L1 = 19.830308
pw_L2 = 18.219828
pw_L3 = 18.843791
pw_DRAM = 16.248606

pw_FMA = 19.293178
pw_ADD = 18.512763


constant_pw = 13.71458145

#constant_pw_dram = 12.61739316

constant_pw_dram = 13.71458145


fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_ADD(x) =   ((B_L1*x < ADD)?B_L1*x:ADD)/(constant_pw + (pw_L1 - constant_pw)*((1 < ADD/(x*B_L1))?1:ADD/(x*B_L1)) + (pw_ADD - constant_pw)*((1 < x*B_L1/ADD)?1:x*B_L1/ADD))
fL2(x) =  ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw_dram + (pw_DRAM - constant_pw_dram)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw_dram)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.031466173 0.03576112446'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 0.02696421125'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 0.06661604177'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs\_1',\
		"<echo '0.026 0.005916047965'" with points lc rgb 'black' pt 4 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 0.009796990444'" with points lc rgb "#A9A9A9" pt 4 ps 1.5 title 'soplex\_2'		
		
set terminal svg enhanced size 690,360
set output "carm_power_2ld_st_dp_1C_euro.svg" 
unset logscale y
set logscale x 10 
set format x '10^{%L}'
set format y
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/bytes]";
set xrange [0.02:100]
set yrange [11:26]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key
B_L1 = 74.56645376
B_L2 = 47.04492193
B_L3 = 30.77550405
B_DRAM = 7.5080482

pw_L1 = 16.652693
pw_L2 = 16.74356508
pw_L3 = 17.09458751
pw_DRAM = 13.51037528

pw_FMA = 15.053601

constant_pw = 12.61739316

FMA = 15.99823455
ADD = 7.999374642

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)


plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.031466173 13.2067'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 12.71945185'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 16.01327399'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs\_1',\
		"<echo '0.026 14.04987133'" with points lc rgb 'black' pt 4 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 12.60302694'" with points lc rgb "#A9A9A9" pt 4 ps 1.5 title 'soplex\_2'

		
		
set terminal svg enhanced size 690,360
set output "carm_eff_2ld_st_euro.svg" 
set logscale xy 10 
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.02:10]
set yrange [0.003:4]
set key center
set key top  
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key 
B_L1 = 74.56645376
B_L2 = 47.04492193
B_L3 = 30.77550405
B_DRAM = 7.5080482

pw_L1 = 16.652693
pw_L2 = 16.74356508
pw_L3 = 17.09458751
pw_DRAM = 13.51037528

pw_FMA = 15.053601
pw_ADD = 13.57887708

constant_pw = 12.61739316
#constant_pw_dram = 12.61739316

FMA = 15.99823455
ADD = 7.999374642


constant_pw_dram = 11.5

fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_ADD(x) =   ((B_L1*x < ADD)?B_L1*x:ADD)/(constant_pw + (pw_L1 - constant_pw)*((1 < ADD/(x*B_L1))?1:ADD/(x*B_L1)) + (pw_ADD - constant_pw)*((1 < x*B_L1/ADD)?1:x*B_L1/ADD))
fL2(x) =  ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw_dram + (pw_DRAM - constant_pw_dram)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw_dram)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.031466173 0.03576112446'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 0.02696421125'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 0.06661604177'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs\_1',\
		"<echo '0.026 0.005916047965'" with points lc rgb 'black' pt 4 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 0.009796990444'" with points lc rgb "#A9A9A9" pt 4 ps 1.5 title 'soplex\_2'
		
############################
#    SPECS CARM GRAPHICS   #
############################


set style line 1 lc rgb 'black' pt 1 ps 1.5 # plus
set style line 2 lc rgb 'black' pt 2 ps 1.5 # cross
set style line 3 lc rgb 'black' pt 3 ps 1.5 # asterisc
set style line 4 lc rgb 'black' pt 4 ps 1.5 # open square w dot
set style line 5 lc rgb 'black' pt 5 ps 1.5  # square
set style line 6 lc rgb 'black' pt 6 ps 1.5 # open circle w dot
set style line 7 lc rgb 'black' pt 7 ps 1.5 # circle
set style line 8 lc rgb 'black' pt 8 ps 1.5 # open triangle w dot
set style line 9 lc rgb 'black' pt 9 ps 1.5 # triangle
set style line 10 lc rgb 'black' pt 10 ps 1.5 # inverted open triangle w dot
set style line 11 lc rgb 'black' pt 11 ps 1.5 # inverted triangle
set style line 12 lc rgb 'black' pt 12 ps 1.5 # open losangle w dot
set style line 13 lc rgb 'black' pt 13 ps 1.5 # losangle w dot

set terminal svg enhanced size 690,360
set output "carm_perf_ld_dp_1C_1.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.001:10]
set yrange [0.01:64]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	

B_L1 = 63.89814088
B_L2 = 32.02874878
B_L3 = 22.68858035
B_DRAM = 5.70708804

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.008 0.119562541'" with points lc rgb 'black' pt 1 ps 1.5 title 'bwaves\_1',\
		"<echo '0.009 0.129913321'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title 'bwaves\_2',\
		"<echo '0.03 0.487765365'" with points lc rgb "#696969" pt 1 ps 1.5 title 'bwaves\_3',\
		"<echo '0.008 0.284556321'" with points lc rgb 'black' pt 2 ps 1.5 title 'gamess\_1',\
		"<echo '0.022 0.5724695'" with points lc rgb 'black' pt 3 ps 1.5 title 'zeusmp\_1',\
		"<echo '0.042 0.665513694'" with points lc rgb "#A9A9A9" pt 3 ps 1.5 title 'zeusmp\_2',\
		"<echo '0.03 0.884012065'" with points lc rgb "#696969" pt 3 ps 1.5 title 'zeusmp\_3',\
		"<echo '0.044 0.910500878'" with points lc rgb "#D3D3D3" pt 3 ps 1.5 title 'zeusmp\_4',\
		"<echo '0.052 1.275908485'" with points lc rgb 'black' pt 4 ps 1.5 title 'cactusADM\_1',\
		"<echo '0.01 0.129715391'" with points lc rgb 'black' pt 7 ps 1.5 title 'gemsFDTD\_1',\
		"<echo '0.01 0.142836301'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title 'gemsFDTD\_2',\
		"<echo '0.013 0.190953403'" with points lc rgb "#696969" pt 7 ps 1.5 title 'gemsFDTD\_3',\
		"<echo '0.013 0.194075639'" with points lc rgb "#D3D3D3" pt 7 ps 1.5 title 'gemsFDTD\_4'
		
set terminal svg enhanced size 690,360
set output "carm_perf_ld_dp_1C_2.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.005:1.5]
set yrange [0.01:64]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
unset key

B_L1 = 63.89814088
B_L2 = 32.02874878
B_L3 = 22.68858035
B_DRAM = 5.70708804

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.008 0.284556321'" with points lc rgb 'black' pt 2 ps 1.5 title 'gamess\_1',\
		"<echo '0.008 0.119562541'" with points lc rgb 'black' pt 7 ps 1.5 title 'bwaves\_1',\
		"<echo '0.009 0.129913321'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title 'bwaves\_2',\
		"<echo '0.03 0.487765365'" with points lc rgb "#696969" pt 7 ps 1.5 title 'bwaves\_3',\
		"<echo '0.022 0.5724695'" with points lc rgb 'black' pt 8 ps 1.5 title 'zeusmp\_1',\
		"<echo '0.042 0.665513694'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title 'zeusmp\_2',\
		"<echo '0.03 0.884012065'" with points lc rgb "#696969" pt 8 ps 1.5 title 'zeusmp\_3',\
		"<echo '0.044 0.910500878'" with points lc rgb "#D3D3D3" pt 8 ps 1.5 title 'zeusmp\_4',\
		"<echo '0.052 1.275908485'" with points lc rgb 'black' pt 9 ps 1.5 title 'cactusADM',\
		"<echo '0.01 0.129715391'" with points lc rgb 'black' pt 10 ps 1.5 title 'gemsFDTD\_1',\
		"<echo '0.01 0.142836301'" with points lc rgb "#A9A9A9" pt 10 ps 1.5 title 'gemsFDTD\_2',\
		"<echo '0.013 0.190953403'" with points lc rgb "#696969" pt 10 ps 1.5 title 'gemsFDTD\_3',\
		"<echo '0.013 0.194075639'" with points lc rgb "#D3D3D3" pt 10 ps 1.5 title 'gemsFDTD\_4',\
		"<echo '0.012 0.240005971'" with points lc rgb 'black' pt 11 ps 1.5 title 'leslie3d\_1',\
		"<echo '0.007 0.127031683'" with points lc rgb "#A9A9A9" pt 11 ps 1.5 title 'leslie3d\_2',\
		"<echo '0.012 0.245456071'" with points lc rgb "#696969" pt 11 ps 1.5 title 'leslie3d\_3',\
		"<echo '0.007 0.120572521'" with points lc rgb "#D3D3D3" pt 11 ps 1.5 title 'leslie3d\_4',\
		"<echo '0.013 0.280210518'" with points lc rgb "#7F7F7F" pt 11 ps 1.5 title 'leslie3d\_5',\
		"<echo '0.007 0.127073697'" with points lc rgb "#2F4F4F" pt 11 ps 1.5 title 'leslie3d\_6',\
		"<echo '0.037 1.23058769'" with points lc rgb 'black' pt 12 ps 1.5 title 'tonto\_1',\
		"<echo '0.043 1.340793725'" with points lc rgb "#A9A9A9" pt 12 ps 1.5 title 'tonto\_2',\
		"<echo '0.007 0.327902736'" with points lc rgb "#696969" pt 12 ps 1.5 title 'tonto\_3',\
		"<echo '0.135 1.520938915'" with points lc rgb 'black' pt 13 ps 1.5 title 'lbm\_1'
		
set terminal svg enhanced size 690,360
set output "carm_perf_2ld_st_dp_1C.svg"
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.02:1.5]
set yrange [0.01:64]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
unset key
 
B_L1 = 74.56645376
B_L2 = 47.04492193
B_L3 = 30.77550405
B_DRAM = 7.5080482

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.027297534 0.722102872'" with points lc rgb '#A9A9A9' pt 5 ps 1.5 title 'gamess\_2',\
		"<echo '0.036 1.622585075'" with points lc rgb 'black' pt 6 ps 1.5 title 'calculix',\
		"<echo '0.031466173 0.472286442'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 0.342969987'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 1.066740929'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs',\
		"<echo '0.026 0.083119713'" with points lc rgb 'black' pt 4 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 0.123471735'" with points lc rgb "#A9A9A9" pt 4 ps 1.5 title 'soplex\_2'

set terminal svg enhanced size 690,360
set output "carm_perf_ld_sp_1C_adv.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.1:64]
set key center

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.013 0.215519217'" with points lc rgb 'black' pt 1 ps 1.5 title '481.wrf1',\
		"<echo '0.016 0.269681438'" with points lc rgb "#696969" pt 1 ps 1.5 title '481.wrf2',\
		"<echo '0.014 0.311091889'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '481.wrf3'		
		
set terminal svg enhanced size 690,360
set output "carm_perf_ld_sp_1C.svg"
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.005:1.5]
set yrange [0.01:64]
set key center
unset key

B_L1 = 31.83483812
B_L2 = 19.70695894
B_L3 = 12.11905611
B_DRAM = 3.502194719

FMA = 15.99823455
ADD = 7.999374642

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.013 0.215519217'" with points lc rgb 'black' pt 1 ps 1.5 title 'wrf\_1',\
		"<echo '0.016 0.269681438'" with points lc rgb "#696969" pt 1 ps 1.5 title 'wrf\_2',\
		"<echo '0.014 0.311091889'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title 'wrf\_3'
		
##############################
#    SPECS ADVISOR GRAPHIC   #
##############################	
set terminal svg enhanced size 690,360
set output "carm_perf_soa.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.02:1.5]
set yrange [0.01:64]
set key center
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
unset key

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.013 0.215519217'" with points lc rgb 'black' pt 1 ps 1.5 title 'wrf\_1',\
		"<echo '0.016 0.269681438'" with points lc rgb "#696969" pt 1 ps 1.5 title 'wrf\_2',\
		"<echo '0.014 0.311091889'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title 'wrf\_3',\
		"<echo '0.031466173 0.472286442'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 0.342969987'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 1.066740929'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs',\
		"<echo '0.026 0.083119713'" with points lc rgb 'black' pt 4 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 0.123471735'" with points lc rgb "#A9A9A9" pt 4 ps 1.5 title 'soplex\_2',\
		"<echo '0.008 0.284556321'" with points lc rgb 'black' pt 5 ps 1.5 title 'gamess\_1',\
		"<echo '0.027297534 0.722102872'" with points lc rgb '#A9A9A9' pt 5 ps 1.5 title 'gamess\_2',\
		"<echo '0.036 1.622585075'" with points lc rgb 'black' pt 6 ps 1.5 title 'calculix',\
		"<echo '0.008 0.119562541'" with points lc rgb 'black' pt 7 ps 1.5 title 'bwaves\_1',\
		"<echo '0.009 0.129913321'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title 'bwaves\_2',\
		"<echo '0.03 0.487765365'" with points lc rgb "#696969" pt 7 ps 1.5 title 'bwaves\_3',\
		"<echo '0.022 0.5724695'" with points lc rgb 'black' pt 8 ps 1.5 title 'zeusmp\_1',\
		"<echo '0.042 0.665513694'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title 'zeusmp\_2',\
		"<echo '0.03 0.884012065'" with points lc rgb "#696969" pt 8 ps 1.5 title 'zeusmp\_3',\
		"<echo '0.044 0.910500878'" with points lc rgb "#D3D3D3" pt 8 ps 1.5 title 'zeusmp\_4',\
		"<echo '0.052 1.275908485'" with points lc rgb 'black' pt 9 ps 1.5 title 'cactusADM',\
		"<echo '0.01 0.129715391'" with points lc rgb 'black' pt 10 ps 1.5 title 'gemsFDTD\_1',\
		"<echo '0.01 0.142836301'" with points lc rgb "#A9A9A9" pt 10 ps 1.5 title 'gemsFDTD\_2',\
		"<echo '0.013 0.190953403'" with points lc rgb "#696969" pt 10 ps 1.5 title 'gemsFDTD\_3',\
		"<echo '0.013 0.194075639'" with points lc rgb "#D3D3D3" pt 10 ps 1.5 title 'gemsFDTD\_4',\
		"<echo '0.012 0.240005971'" with points lc rgb 'black' pt 11 ps 1.5 title 'leslie3d\_1',\
		"<echo '0.007 0.127031683'" with points lc rgb "#A9A9A9" pt 11 ps 1.5 title 'leslie3d\_2',\
		"<echo '0.012 0.245456071'" with points lc rgb "#696969" pt 11 ps 1.5 title 'leslie3d\_3',\
		"<echo '0.007 0.120572521'" with points lc rgb "#D3D3D3" pt 11 ps 1.5 title 'leslie3d\_4',\
		"<echo '0.013 0.280210518'" with points lc rgb "#7F7F7F" pt 11 ps 1.5 title 'leslie3d\_5',\
		"<echo '0.007 0.127073697'" with points lc rgb "#2F4F4F" pt 11 ps 1.5 title 'leslie3d\_6',\
		"<echo '0.037 1.23058769'" with points lc rgb 'black' pt 12 ps 1.5 title 'tonto\_1',\
		"<echo '0.043 1.340793725'" with points lc rgb "#A9A9A9" pt 12 ps 1.5 title 'tonto\_2',\
		"<echo '0.007 0.327902736'" with points lc rgb "#696969" pt 12 ps 1.5 title 'tonto\_3',\
		"<echo '0.135 1.520938915'" with points lc rgb 'black' pt 13 ps 1.5 title 'lbm\_1'
		
set terminal svg enhanced size 690,360
set output "carm_perf_ld_dp_1C_1_advisor.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.001:10]
set yrange [0.01:64]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.008 0.119562541'" with points lc rgb 'black' pt 1 ps 1.5 title 'bwaves\_1',\
		"<echo '0.009 0.129913321'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title 'bwaves\_2',\
		"<echo '0.03 0.487765365'" with points lc rgb "#696969" pt 1 ps 1.5 title 'bwaves\_3',\
		"<echo '0.008 0.284556321'" with points lc rgb 'black' pt 2 ps 1.5 title 'gamess\_1',\
		"<echo '0.022 0.5724695'" with points lc rgb 'black' pt 3 ps 1.5 title 'zeusmp\_1',\
		"<echo '0.042 0.665513694'" with points lc rgb "#A9A9A9" pt 3 ps 1.5 title 'zeusmp\_2',\
		"<echo '0.03 0.884012065'" with points lc rgb "#696969" pt 3 ps 1.5 title 'zeusmp\_3',\
		"<echo '0.044 0.910500878'" with points lc rgb "#D3D3D3" pt 3 ps 1.5 title 'zeusmp\_4',\
		"<echo '0.052 1.275908485'" with points lc rgb 'black' pt 4 ps 1.5 title 'cactusADM\_1',\
		"<echo '0.01 0.129715391'" with points lc rgb 'black' pt 7 ps 1.5 title 'gemsFDTD\_1',\
		"<echo '0.01 0.142836301'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title 'gemsFDTD\_2',\
		"<echo '0.013 0.190953403'" with points lc rgb "#696969" pt 7 ps 1.5 title 'gemsFDTD\_3',\
		"<echo '0.013 0.194075639'" with points lc rgb "#D3D3D3" pt 7 ps 1.5 title 'gemsFDTD\_4'
		
		
set terminal svg enhanced size 690,360
set output "carm_perf_ld_dp_1C_2_adv.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.001:10]
set yrange [0.01:64]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.012 0.240005971'" with points lc rgb 'black' pt 5 ps 1.5 title 'leslie3d\_1',\
		"<echo '0.007 0.127031683'" with points lc rgb "#A9A9A9" pt 5 ps 1.5 title 'leslie3d\_2',\
		"<echo '0.012 0.245456071'" with points lc rgb "#696969" pt 5 ps 1.5 title 'leslie3d\_3',\
		"<echo '0.007 0.120572521'" with points lc rgb "#D3D3D3" pt 5 ps 1.5 title 'leslie3d\_4',\
		"<echo '0.013 0.280210518'" with points lc rgb "#7F7F7F" pt 5 ps 1.5 title 'leslie3d\_5',\
		"<echo '0.007 0.127073697'" with points lc rgb "#2F4F4F" pt 5 ps 1.5 title 'leslie3d\_6',\
		"<echo '0.037 1.23058769'" with points lc rgb 'black' pt 8 ps 1.5 title 'tonto\_1',\
		"<echo '0.043 1.340793725'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title 'tonto\_2',\
		"<echo '0.007 0.327902736'" with points lc rgb "#696969" pt 8 ps 1.5 title 'tonto\_3',\
		"<echo '0.135 1.520938915'" with points lc rgb 'black' pt 9 ps 1.5 title 'lbm\_1'	
		
set terminal svg enhanced size 690,360
set output "carm_perf_2ld_st_dp_1C_adv.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.01:64]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.027297534 0.722102872'" with points lc rgb 'black' pt 1 ps 1.5 title 'gamess\_2',\
		"<echo '0.031466173 0.472286442'" with points lc rgb 'black' pt 2 ps 1.5 title 'milc\_1',\
		"<echo '0.024363979 0.342969987'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title 'milc\_2',\
		"<echo '0.042024955 1.066740929'" with points lc rgb 'black' pt 3 ps 1.5 title 'gromacs\_1',\
		"<echo '0.026 0.083119713'" with points lc rgb 'black' pt 6 ps 1.5 title 'soplex\_1',\
		"<echo '0.08 0.123471735'" with points lc rgb "#A9A9A9" pt 6 ps 1.5 title 'soplex\_2',\
		"<echo '0.036 1.622585075'" with points lc rgb 'black' pt 7 ps 1.5 title 'calculix\_1'

	
		
		
#########################
#    SPECS POWER CARMS  #
#########################


set style line 1 lc rgb 'black' pt 1 ps 1.5 # plus
set style line 2 lc rgb 'black' pt 2 ps 1.5 # cross
set style line 3 lc rgb 'black' pt 3 ps 1.5 # asterisc
set style line 4 lc rgb 'black' pt 4 ps 1.5 # open square w dot
set style line 5 lc rgb 'black' pt 5 ps 1.5  # square
set style line 6 lc rgb 'black' pt 6 ps 1.5 # open circle w dot
set style line 7 lc rgb 'black' pt 7 ps 1.5 # circle
set style line 8 lc rgb 'black' pt 8 ps 1.5 # open triangle w dot
set style line 9 lc rgb 'black' pt 9 ps 1.5 # triangle
set style line 10 lc rgb 'black' pt 10 ps 1.5 # inverted open triangle w dot
set style line 11 lc rgb 'black' pt 11 ps 1.5 # inverted triangle
set style line 12 lc rgb 'black' pt 12 ps 1.5 # open losangle w dot
set style line 13 lc rgb 'black' pt 13 ps 1.5 # losangle w dot

set terminal svg enhanced size 865,360
set output "carm_power_ld_dp_1C_1.svg" 
unset logscale y  
set format x '2^{%L}'
set ylabel "Performance (GFLOPS/s)" 
set xlabel "FLOPS";
set xrange [0.00098:512]
set yrange [13:20]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 63.89814088
B_L2 = 32.02874878
B_L3 = 22.68858035
B_DRAM = 5.70708804

pw_L1 = 14.371452
pw_L2 = 14.636228
pw_L3 = 14.429709
pw_DRAM = 11.980813

pw_FMA = 14.32034739

constant_pw = 12.78785173

FMA = 15.99823455
ADD = 7.999374642

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.008 15.32872573'" with points lc rgb 'black' pt 1 ps 1.5 title '410.bwaves1',\
		"<echo '0.009 14.27387713'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '410.bwaves2',\
		"<echo '0.03 15.53235403'" with points lc rgb "#696969" pt 1 ps 1.5 title '410.bwaves3',\
		"<echo '0.008 17.03609795'" with points lc rgb 'black' pt 2 ps 1.5 title '416.gamess1',\
		"<echo '0.022 15.13329362'" with points lc rgb 'black' pt 3 ps 1.5 title '434.zeusmp1',\
		"<echo '0.042 16.0913225'" with points lc rgb "#A9A9A9" pt 3 ps 1.5 title '434.zeusmp2',\
		"<echo '0.03 15.51866641'" with points lc rgb "#696969" pt 3 ps 1.5 title '434.zeusmp3',\
		"<echo '0.044 15.7271039'" with points lc rgb "#D3D3D3" pt 3 ps 1.5 title '434.zeusmp4',\
		"<echo '0.052 17.86246245'" with points lc rgb 'black' pt 4 ps 1.5 title '436.cactusADM1',\
		"<echo '0.036 17.20900811'" with points lc rgb 'black' pt 6 ps 1.5 title '454.calculix1',\
		"<echo '0.01 15.02391339'" with points lc rgb 'black' pt 7 ps 1.5 title '459.gemsFDTD1',\
		"<echo '0.01 14.6855925'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title '459.gemsFDTD2',\
		"<echo '0.013 15.27103219'" with points lc rgb "#696969" pt 7 ps 1.5 title '459.gemsFDTD3',\
		"<echo '0.013 15.30846139'" with points lc rgb "#D3D3D3" pt 7 ps 1.5 title '459.gemsFDTD4'

		
		
		
		
set terminal svg enhanced size 690,360
set output "carm_eff_ld_dp_1.svg" 
set logscale xy 10 
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.001:10]
set yrange [0.003:4]
set key center
set key top  
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 63.89814088
B_L2 = 32.02874878
B_L3 = 22.68858035
B_DRAM = 5.70708804

pw_L1 = 14.371452
pw_L2 = 14.636228
pw_L3 = 14.429709
pw_DRAM = 11.980813

pw_FMA = 14.32034739
pw_ADD = 13.57887708

constant_pw = 12.78785173
constant_pw_dram = 11.5
FMA = 15.99823455
ADD = 7.999374642

fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_ADD(x) =   ((B_L1*x < ADD)?B_L1*x:ADD)/(constant_pw + (pw_L1 - constant_pw)*((1 < ADD/(x*B_L1))?1:ADD/(x*B_L1)) + (pw_ADD - constant_pw)*((1 < x*B_L1/ADD)?1:x*B_L1/ADD))
fL2(x) =  ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw_dram + (pw_DRAM - constant_pw_dram)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw_dram)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.008 0.007799901'" with points lc rgb 'black' pt 1 ps 1.5 title '410.bwaves1',\
		"<echo '0.009 0.009101474'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '410.bwaves2',\
		"<echo '0.03 0.031403184'" with points lc rgb "#696969" pt 1 ps 1.5 title '410.bwaves3',\
		"<echo '0.008 0.01670314'" with points lc rgb 'black' pt 2 ps 1.5 title '416.gamess1',\
		"<echo '0.022 0.03782848'" with points lc rgb 'black' pt 3 ps 1.5 title '434.zeusmp1',\
		"<echo '0.042 0.041358546'" with points lc rgb "#A9A9A9" pt 3 ps 1.5 title '434.zeusmp2',\
		"<echo '0.03 0.056964435'" with points lc rgb "#696969" pt 3 ps 1.5 title '434.zeusmp3',\
		"<echo '0.044 0.057893741'" with points lc rgb "#D3D3D3" pt 3 ps 1.5 title '434.zeusmp4',\
		"<echo '0.052 0.071429596'" with points lc rgb 'black' pt 4 ps 1.5 title '436.cactusADM1',\
		"<echo '0.01 0.008633928'" with points lc rgb 'black' pt 7 ps 1.5 title '459.gemsFDTD1',\
		"<echo '0.01 0.009726288'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title '459.gemsFDTD2',\
		"<echo '0.013 0.012504289'" with points lc rgb "#696969" pt 7 ps 1.5 title '459.gemsFDTD3',\
		"<echo '0.013 0.012677671'" with points lc rgb "#D3D3D3" pt 7 ps 1.5 title '459.gemsFDTD4'

		
set terminal svg enhanced size 865,360
set output "carm_power_ld_dp_1C_2.svg" 
unset logscale y
set logscale x 10 
set format x '10^{%L}'
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/bytes]";
set xrange [0.00098:512]
set yrange [13:20]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 63.89814088
B_L2 = 32.02874878
B_L3 = 22.68858035
B_DRAM = 5.70708804

pw_L1 = 14.371452
pw_L2 = 14.636228
pw_L3 = 14.429709
pw_DRAM = 11.980813

pw_FMA = 14.32034739

constant_pw = 12.78785173

FMA = 15.99823455
ADD = 7.999374642

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)


plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.012 15.30471378'" with points lc rgb 'black' pt 5 ps 1.5 title '437.leslie3d1',\
		"<echo '0.007 14.53969882'" with points lc rgb "#A9A9A9" pt 5 ps 1.5 title '437.leslie3d2',\
		"<echo '0.012 15.40919614'" with points lc rgb "#696969" pt 5 ps 1.5 title '437.leslie3d3',\
		"<echo '0.007 14.785194'" with points lc rgb "#D3D3D3" pt 5 ps 1.5 title '437.leslie3d4',\
		"<echo '0.013 15.08995801'" with points lc rgb "#7F7F7F" pt 5 ps 1.5 title '437.leslie3d5',\
		"<echo '0.007 14.70972746'" with points lc rgb "#2F4F4F" pt 5 ps 1.5 title '437.leslie3d6',\
		"<echo '0.037 17.92837745'" with points lc rgb 'black' pt 8 ps 1.5 title '465.tonto1',\
		"<echo '0.043 17.69573556'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title '465.tonto2',\
		"<echo '0.007 20.81428463'" with points lc rgb "#696969" pt 8 ps 1.5 title '465.tonto3',\
		"<echo '0.135 15.75113183'" with points lc rgb 'black' pt 9 ps 1.5 title '470.lbm1',\
		"<echo '0.19 24.2633326'" with points lc rgb 'black' pt 10 ps 1.5 title '482.sphinx1',\
		"<echo '0.029660554 16.55655435'" with points lc rgb "#A9A9A9" pt 10 ps 1.5 title '482.sphinx2'		
				
set terminal svg enhanced size 865,360
set output "carm_power_ld_sp_1C.svg" 
unset logscale y 
set format x '2^{%L}'
set ylabel "Performance (GFLOPS/s)" 
set xlabel "FLOPS";
set xrange [0.00098:512]
set yrange [13:25]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

#B_L1 = 31.83483812
#B_L2 = 19.70695894
#B_L3 = 12.11905611
#B_DRAM = 3.502194719

#pw_L1 = 13.722735
#pw_L2 = 13.283007
#pw_L3 = 14.158076
#pw_DRAM = 11.866947

#pw_FMA = 14.32034739

#constant_pw = 12.9065718

#FMA = 15.99823455
#ADD = 7.999374642

B_L1 = 339.6702599
B_L2 = 104.493594
B_L3 = 55.79294394
B_DRAM = 12.60644755

pw_L1 = 18.446009
pw_L2 = 19.855525
pw_L3 = 20.625069
pw_DRAM = 17.711112

pw_FMA = 18.070184

constant_pw = 13.71458145

FMA = 15.99823455
ADD = 7.999374642

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)


plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.013 15.24775077'" with points lc rgb 'black' pt 1 ps 1.5 title '481.wrf1',\
		"<echo '0.016 15.50611469'" with points lc rgb "#696969" pt 1 ps 1.5 title '481.wrf2',\
		"<echo '0.014 15.46583393'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '481.wrf3'		
		

########################
#   SPECS INST CARMS   #
########################

set terminal svg enhanced size 865,360
set output "carm_perf_ld_inst_model_dp_1C_1.svg" 
set logscale xy 2 
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance (INST/CLK)" 
set xlabel "INST/MOPS";
set xrange [0.25:32]
set yrange [0.5:8]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 1.996816903
B_L2 = 1.000898399
B_L3 = 0.709018136
B_DRAM = 0.178346501

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x < RET1)?B_L1*x:RET1
fL1_RET2(x) = (B_L1*x < RET2)?B_L1*x:RET2
fL1_RET3(x) = (B_L1*x < RET3)?B_L1*x:RET3
fL1(x) =   (B_L1*x < RET4)?B_L1*x:RET4
fL2(x) =   (B_L2*x < RET4)?B_L2*x:RET4
fL3(x) =   (B_L3*x < RET4)?B_L3*x:RET4
fDRAM(x) = (B_DRAM*x < RET4)?B_DRAM*x:RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '3.12877557 2.480543407'" with points lc rgb 'black' pt 1 ps 1.5 title '410.bwaves1',\
		"<echo '3.009654612 2.294299932'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '410.bwaves2',\
		"<echo '3.034113412 2.120467668'" with points lc rgb "#696969" pt 1 ps 1.5 title '410.bwaves3',\
		"<echo '2.574551488 3.403756628'" with points lc rgb 'black' pt 2 ps 1.5 title '416.gamess1',\
		"<echo '3.61390253 2.123675017'" with points lc rgb 'black' pt 3 ps 1.5 title '434.zeusmp1',\
		"<echo '3.645564548 2.138711226'" with points lc rgb "#A9A9A9" pt 3 ps 1.5 title '434.zeusmp2',\
		"<echo '3.324224352 2.441853494'" with points lc rgb "#696969" pt 3 ps 1.5 title '434.zeusmp3',\
		"<echo '3.384260789 2.604542895'" with points lc rgb "#D3D3D3" pt 3 ps 1.5 title '434.zeusmp4',\
		"<echo '2.588965773 2.804935403'" with points lc rgb 'black' pt 4 ps 1.5 title '436.cactusADM1',\
		"<echo '3.484831655 3.656786505'" with points lc rgb 'black' pt 6 ps 1.5 title '454.calculix1',\
		"<echo '3.3425845 2.336800064'" with points lc rgb 'black' pt 7 ps 1.5 title '459.gemsFDTD1',\
		"<echo '3.190914569 2.418432268'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title '459.gemsFDTD2',\
		"<echo '3.331271981 2.241959688'" with points lc rgb "#696969" pt 7 ps 1.5 title '459.gemsFDTD3',\
		"<echo '3.226254588 2.194450829'" with points lc rgb "#D3D3D3" pt 7 ps 1.5 title '459.gemsFDTD4'
		
set terminal svg enhanced size 690,360
set output "carm_perf_ld_inst_model_dp_1C_2.svg" 
set logscale xy 2 
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance (INST/CLK)" 
set xlabel "INST/MOPS";
set xrange [1:32]
set yrange [0.5:8]
set key center
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 1.996816903
B_L2 = 1.000898399
B_L3 = 0.709018136
B_DRAM = 0.178346501

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x < RET1)?B_L1*x:RET1
fL1_RET2(x) = (B_L1*x < RET2)?B_L1*x:RET2
fL1_RET3(x) = (B_L1*x < RET3)?B_L1*x:RET3
fL1(x) =   (B_L1*x < RET4)?B_L1*x:RET4
fL2(x) =   (B_L2*x < RET4)?B_L2*x:RET4
fL3(x) =   (B_L3*x < RET4)?B_L3*x:RET4
fDRAM(x) = (B_DRAM*x < RET4)?B_DRAM*x:RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '2.065267033 2.345738479'" with points lc rgb 'black' pt 8 ps 1.5 title 'tonto\_1',\
		"<echo '2.120450644 2.308200252'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title 'tonto\_2',\
		"<echo '1.846084902 3.005207262'" with points lc rgb "#696969" pt 8 ps 1.5 title 'tonto\_3'

		
		
set terminal svg enhanced size 865,360
set output "carm_perf_2ld_st_inst_model_dp_1C.svg" 
set logscale xy 2 
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance (INST/CLK)" 
set xlabel "INST/MOPS";
set xrange [0.25:32]
set yrange [0.5:8]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 2.330007272
B_L2 = 1.462951738
B_L3 = 0.951695808
B_DRAM = 0.234626506

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x < RET1)?B_L1*x:RET1
fL1_RET2(x) = (B_L1*x < RET2)?B_L1*x:RET2
fL1_RET3(x) = (B_L1*x < RET3)?B_L1*x:RET3
fL1(x) =   (B_L1*x < RET4)?B_L1*x:RET4
fL2(x) =   (B_L2*x < RET4)?B_L2*x:RET4
fL3(x) =   (B_L3*x < RET4)?B_L3*x:RET4
fDRAM(x) = (B_DRAM*x < RET4)?B_DRAM*x:RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '2.427361905 2.831831861'" with points lc rgb 'black' pt 1 ps 1.5 title '416.gamess2',\
		"<echo '1.663713472 1.065722374'" with points lc rgb 'black' pt 2 ps 1.5 title '433.milc1',\
		"<echo '1.509254733 0.796712642'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title '433.milc2',\
		"<echo '1.656314792 1.84982982'" with points lc rgb 'black' pt 3 ps 1.5 title '435.gromacs1',\
		"<echo '1.477453662 1.98972513'" with points lc rgb 'black' pt 4 ps 1.5 title '444.namd1',\
		"<echo '1.56050859 2.270101799'" with points lc rgb 'black' pt 5 ps 1.5 title '447.deall1',\
		"<echo '1.409396444 0.866697489'" with points lc rgb "#A9A9A9" pt 5 ps 1.5 title '447.deall2',\
		"<echo '1.545271193 1.068270073'" with points lc rgb 'black' pt 6 ps 1.5 title '450.soplex1',\
		"<echo '1.486205077 0.667032125'" with points lc rgb "#A9A9A9" pt 6 ps 1.5 title '450.soplex2',\
		"<echo '1.527460167 2.349255496'" with points lc rgb 'black' pt 7 ps 1.5 title '454.calculix2'		
		
set terminal svg enhanced size 865,360
set output "carm_perf_ld_inst_model_sp_1C.svg" 
set logscale xy 2 
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance (INST/CLK)" 
set xlabel "INST/MOPS";
set xrange [0.25:32]
set yrange [0.5:8]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 1.989677382
B_L2 = 1.231684934
B_L3 = 0.757441007
B_DRAM = 0.21888717

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x < RET1)?B_L1*x:RET1
fL1_RET2(x) = (B_L1*x < RET2)?B_L1*x:RET2
fL1_RET3(x) = (B_L1*x < RET3)?B_L1*x:RET3
fL1(x) =   (B_L1*x < RET4)?B_L1*x:RET4
fL2(x) =   (B_L2*x < RET4)?B_L2*x:RET4
fL3(x) =   (B_L3*x < RET4)?B_L3*x:RET4
fDRAM(x) = (B_DRAM*x < RET4)?B_DRAM*x:RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '2.956216104 2.927170194'" with points lc rgb 'black' pt 1 ps 1.5 title '481.wrf1',\
		"<echo '2.86865042 2.968212356'" with points lc rgb "#696969" pt 1 ps 1.5 title '481.wrf2',\
		"<echo '2.755125466 3.010287951'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '481.wrf3'		
		
set terminal svg enhanced size 690,360
set output "carm_perf_ld_inst_model_sp_1C_inst.svg" 
unset logscale y
unset logscale x 
set format x 
set format y
set ylabel "Performance (INST/CLK)" 
set xlabel "COMPS/MOPS";
set xrange [0:20]
set yrange [0:5]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 1.989677382
B_L2 = 1.231684934
B_L3 = 0.757441007
B_DRAM = 0.21888717

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x + B_L1 < RET1)?(B_L1*x + B_L1):RET1
fL1_RET2(x) = (B_L1*x + B_L1 < RET2)?(B_L1*x + B_L1):RET2
fL1_RET3(x) = (B_L1*x + B_L1 < RET3)?(B_L1*x + B_L1):RET3
fL1(x) =   (B_L1*x + B_L1 < RET4)?(B_L1*x + B_L1):RET4
fL2(x) =   (B_L2*x + B_L2 < RET4)?(B_L2*x + B_L2):RET4
fL3(x) =   (B_L3*x + B_L3 < RET4)?(B_L3*x + B_L3):RET4
fDRAM(x) = (B_DRAM*x + B_DRAM < RET4)?(B_DRAM*x + B_DRAM):RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '1.956216104 2.927170194'" with points lc rgb 'black' pt 1 ps 1.5 title 'wrf\_1',\
		"<echo '1.86865042 2.968212356'" with points lc rgb "#696969" pt 1 ps 1.5 title 'wrf\_2',\
		"<echo '1.755125466 3.010287951'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title 'wrf\_3'	

set terminal svg enhanced size 865,360
set output "carm_perf_2ld_st_inst_model_dp_1C_inst.svg" 
unset logscale y
unset logscale x 
set format x 
set format y
set ylabel "Performance (INST/CLK)"  
set xlabel "COMPS/MOPS";
set xrange [0:20]
set yrange [0:5]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 2.330007272
B_L2 = 1.462951738
B_L3 = 0.951695808
B_DRAM = 0.234626506

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x + B_L1 < RET1)?(B_L1*x + B_L1):RET1
fL1_RET2(x) = (B_L1*x + B_L1 < RET2)?(B_L1*x + B_L1):RET2
fL1_RET3(x) = (B_L1*x + B_L1 < RET3)?(B_L1*x + B_L1):RET3
fL1(x) =   (B_L1*x + B_L1 < RET4)?(B_L1*x + B_L1):RET4
fL2(x) =   (B_L2*x + B_L2 < RET4)?(B_L2*x + B_L2):RET4
fL3(x) =   (B_L3*x + B_L3 < RET4)?(B_L3*x + B_L3):RET4
fDRAM(x) = (B_DRAM*x + B_DRAM < RET4)?(B_DRAM*x + B_DRAM):RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '1.427361905 2.831831861'" with points lc rgb 'black' pt 1 ps 1.5 title '416.gamess2',\
		"<echo '0.663713472 1.065722374'" with points lc rgb 'black' pt 2 ps 1.5 title '433.milc1',\
		"<echo '0.509254733 0.796712642'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title '433.milc2',\
		"<echo '0.656314792 1.84982982'" with points lc rgb 'black' pt 3 ps 1.5 title '435.gromacs1',\
		"<echo '0.477453662 1.98972513'" with points lc rgb 'black' pt 4 ps 1.5 title '444.namd1',\
		"<echo '0.56050859 2.270101799'" with points lc rgb 'black' pt 5 ps 1.5 title '447.deall1',\
		"<echo '0.409396444 0.866697489'" with points lc rgb "#A9A9A9" pt 5 ps 1.5 title '447.deall2',\
		"<echo '0.545271193 1.068270073'" with points lc rgb 'black' pt 6 ps 1.5 title '450.soplex1',\
		"<echo '0.486205077 0.667032125'" with points lc rgb "#A9A9A9" pt 6 ps 1.5 title '450.soplex2',\
		"<echo '0.527460167 2.349255496'" with points lc rgb 'black' pt 7 ps 1.5 title '454.calculix2'			
		
set terminal svg enhanced size 865,360
set output "carm_perf_ld_inst_model_dp_1C_2_inst.svg" 
unset logscale y
unset logscale x 
set format x 
set format y
set ylabel "Performance (INST/CLK)" 
set xlabel "COMPS/MOPS";
set xrange [0:20]
set yrange [0:5]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 1.996816903
B_L2 = 1.000898399
B_L3 = 0.709018136
B_DRAM = 0.178346501

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x + B_L1 < RET1)?(B_L1*x + B_L1):RET1
fL1_RET2(x) = (B_L1*x + B_L1 < RET2)?(B_L1*x + B_L1):RET2
fL1_RET3(x) = (B_L1*x + B_L1 < RET3)?(B_L1*x + B_L1):RET3
fL1(x) =   (B_L1*x + B_L1 < RET4)?(B_L1*x + B_L1):RET4
fL2(x) =   (B_L2*x + B_L2 < RET4)?(B_L2*x + B_L2):RET4
fL3(x) =   (B_L3*x + B_L3 < RET4)?(B_L3*x + B_L3):RET4
fDRAM(x) = (B_DRAM*x + B_DRAM < RET4)?(B_DRAM*x + B_DRAM):RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '2.383313073 2.401160755'" with points lc rgb 'black' pt 5 ps 1.5 title '437.leslie3d1',\
		"<echo '3.070547692 2.513369019'" with points lc rgb "#A9A9A9" pt 5 ps 1.5 title '437.leslie3d2',\
		"<echo '2.378222082 2.441061791'" with points lc rgb "#696969" pt 5 ps 1.5 title '437.leslie3d3',\
		"<echo '3.07267465 2.371595633'" with points lc rgb "#D3D3D3" pt 5 ps 1.5 title '437.leslie3d4',\
		"<echo '2.331574006 2.537318832'" with points lc rgb "#7F7F7F" pt 5 ps 1.5 title '437.leslie3d5',\
		"<echo '2.909657867 2.539198358'" with points lc rgb "#2F4F4F" pt 5 ps 1.5 title '437.leslie3d6',\
		"<echo '1.065267033 2.345738479'" with points lc rgb 'black' pt 8 ps 1.5 title '465.tonto1',\
		"<echo '1.120450644 2.308200252'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title '465.tonto2',\
		"<echo '0.846084902 3.005207262'" with points lc rgb "#696969" pt 8 ps 1.5 title '465.tonto3',\
		"<echo '1.0373595 1.610850791'" with points lc rgb 'black' pt 9 ps 1.5 title '470.lbm1',\
		"<echo '0.825162715 2.352936698'" with points lc rgb 'black' pt 10 ps 1.5 title '482.sphinx1',\
		"<echo '0.793714636 1.822706688'" with points lc rgb "#A9A9A9" pt 10 ps 1.5 title '482.sphinx2'		

		
set terminal svg enhanced size 865,360
set output "carm_perf_ld_inst_model_dp_1C_1_inst.svg" 
unset logscale y
unset logscale x 
set format x 
set format y
set ylabel "Performance (INST/CLK)" 
set xlabel "COMPS/MOPS";
set xrange [0:20]
set yrange [0:5]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 1.996816903
B_L2 = 1.000898399
B_L3 = 0.709018136
B_DRAM = 0.178346501

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x + B_L1 < RET1)?(B_L1*x + B_L1):RET1
fL1_RET2(x) = (B_L1*x + B_L1 < RET2)?(B_L1*x + B_L1):RET2
fL1_RET3(x) = (B_L1*x + B_L1 < RET3)?(B_L1*x + B_L1):RET3
fL1(x) =   (B_L1*x + B_L1 < RET4)?(B_L1*x + B_L1):RET4
fL2(x) =   (B_L2*x + B_L2 < RET4)?(B_L2*x + B_L2):RET4
fL3(x) =   (B_L3*x + B_L3 < RET4)?(B_L3*x + B_L3):RET4
fDRAM(x) = (B_DRAM*x + B_DRAM < RET4)?(B_DRAM*x + B_DRAM):RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '2.12877557 2.480543407'" with points lc rgb 'black' pt 1 ps 1.5 title '410.bwaves1',\
		"<echo '2.009654612 2.294299932'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '410.bwaves2',\
		"<echo '2.034113412 2.120467668'" with points lc rgb "#696969" pt 1 ps 1.5 title '410.bwaves3',\
		"<echo '1.574551488 3.403756628'" with points lc rgb 'black' pt 2 ps 1.5 title '416.gamess1',\
		"<echo '2.61390253 2.123675017'" with points lc rgb 'black' pt 3 ps 1.5 title '434.zeusmp1',\
		"<echo '2.645564548 2.138711226'" with points lc rgb "#A9A9A9" pt 3 ps 1.5 title '434.zeusmp2',\
		"<echo '2.324224352 2.441853494'" with points lc rgb "#696969" pt 3 ps 1.5 title '434.zeusmp3',\
		"<echo '2.384260789 2.604542895'" with points lc rgb "#D3D3D3" pt 3 ps 1.5 title '434.zeusmp4',\
		"<echo '1.588965773 2.804935403'" with points lc rgb 'black' pt 4 ps 1.5 title '436.cactusADM1',\
		"<echo '2.484831655 3.656786505'" with points lc rgb 'black' pt 6 ps 1.5 title '454.calculix1',\
		"<echo '2.3425845 2.336800064'" with points lc rgb 'black' pt 7 ps 1.5 title '459.gemsFDTD1',\
		"<echo '2.190914569 2.418432268'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title '459.gemsFDTD2',\
		"<echo '2.331271981 2.241959688'" with points lc rgb "#696969" pt 7 ps 1.5 title '459.gemsFDTD3',\
		"<echo '2.226254588 2.194450829'" with points lc rgb "#D3D3D3" pt 7 ps 1.5 title '459.gemsFDTD4'		
		
set terminal svg enhanced size 690,360
set output "carm_perf_ld_inst_model_sp_1C_comps.svg"
unset logscale y
unset logscale x 
set format x 
set format y
set ylabel "Performance (COMPS/CLK)" 
set xlabel "COMPS/MOPS";
set xrange [0:20]
set yrange [0:5]
set key center
set key horizontal
set key inside
set key top
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000 

B_L1 = 1.989677382
B_L2 = 1.231684934
B_L3 = 0.757441007
B_DRAM = 0.21888717

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x + B_L1 < RET1)?(B_L1*x + B_L1):RET1
fL1_RET2(x) = (B_L1*x + B_L1 < RET2)?(B_L1*x + B_L1):RET2
fL1_RET3(x) = (B_L1*x + B_L1 < RET3)?(B_L1*x + B_L1):RET3
fL1(x) =   (B_L1*x + B_L1 < RET4)?(B_L1*x + B_L1):RET4
fL2(x) =   (B_L2*x + B_L2 < RET4)?(B_L2*x + B_L2):RET4
fL3(x) =   (B_L3*x + B_L3 < RET4)?(B_L3*x + B_L3):RET4
fDRAM(x) = (B_DRAM*x + B_DRAM < RET4)?(B_DRAM*x + B_DRAM):RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '1.956216104 1.936995562'" with points lc rgb 'black' pt 1 ps 1.5 title '481.wrf1',\
		"<echo '1.86865042 1.933505465'" with points lc rgb "#696969" pt 1 ps 1.5 title '481.wrf2',\
		"<echo '1.755125466 1.917674207'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '481.wrf3'	

set terminal svg enhanced size 865,360
set output "carm_perf_2ld_st_inst_model_dp_1C_comps.svg" 
unset logscale y
unset logscale x 
set format x 
set format y
set ylabel "Performance (COMPS/CLK)" 
set xlabel "COMPS/MOPS";
set xrange [0:5]
set yrange [0:2]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 2.330007272
B_L2 = 1.462951738
B_L3 = 0.951695808
B_DRAM = 0.234626506

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x + B_L1 < RET1)?(B_L1*x + B_L1):RET1
fL1_RET2(x) = (B_L1*x + B_L1 < RET2)?(B_L1*x + B_L1):RET2
fL1_RET3(x) = (B_L1*x + B_L1 < RET3)?(B_L1*x + B_L1):RET3
fL1(x) =   (B_L1*x + B_L1 < RET4)?(B_L1*x + B_L1):RET4
fL2(x) =   (B_L2*x + B_L2 < RET4)?(B_L2*x + B_L2):RET4
fL3(x) =   (B_L3*x + B_L3 < RET4)?(B_L3*x + B_L3):RET4
fDRAM(x) = (B_DRAM*x + B_DRAM < RET4)?(B_DRAM*x + B_DRAM):RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '1.427361905 1.66520242'" with points lc rgb 'black' pt 1 ps 1.5 title '416.gamess2',\
		"<echo '0.663713472 0.425153916'" with points lc rgb 'black' pt 2 ps 1.5 title '433.milc1',\
		"<echo '0.509254733 0.268827836'" with points lc rgb "#A9A9A9" pt 2 ps 1.5 title '433.milc2',\
		"<echo '0.656314792 0.732995128'" with points lc rgb 'black' pt 3 ps 1.5 title '435.gromacs1',\
		"<echo '0.477453662 0.642999219'" with points lc rgb 'black' pt 4 ps 1.5 title '444.namd1',\
		"<echo '0.56050859 0.815382604'" with points lc rgb 'black' pt 5 ps 1.5 title '447.deall1',\
		"<echo '0.409396444 0.25175519'" with points lc rgb "#A9A9A9" pt 5 ps 1.5 title '447.deall2',\
		"<echo '0.545271193 0.376954479'" with points lc rgb 'black' pt 6 ps 1.5 title '450.soplex1',\
		"<echo '0.486205077 0.218216456'" with points lc rgb "#A9A9A9" pt 6 ps 1.5 title '450.soplex2',\
		"<echo '0.527460167 0.811241251'" with points lc rgb 'black' pt 7 ps 1.5 title '454.calculix2'			
		
set terminal svg enhanced size 865,360
set output "carm_perf_ld_inst_model_dp_1C_2_comps.svg" 
unset logscale y
unset logscale x 
set format x 
set format y
set ylabel "Performance (COMPS/CLK)" 
set xlabel "COMPS/MOPS";
set xrange [0:20]
set yrange [0:5]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 1.996816903
B_L2 = 1.000898399
B_L3 = 0.709018136
B_DRAM = 0.178346501

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x + B_L1 < RET1)?(B_L1*x + B_L1):RET1
fL1_RET2(x) = (B_L1*x + B_L1 < RET2)?(B_L1*x + B_L1):RET2
fL1_RET3(x) = (B_L1*x + B_L1 < RET3)?(B_L1*x + B_L1):RET3
fL1(x) =   (B_L1*x + B_L1 < RET4)?(B_L1*x + B_L1):RET4
fL2(x) =   (B_L2*x + B_L2 < RET4)?(B_L2*x + B_L2):RET4
fL3(x) =   (B_L3*x + B_L3 < RET4)?(B_L3*x + B_L3):RET4
fDRAM(x) = (B_DRAM*x + B_DRAM < RET4)?(B_DRAM*x + B_DRAM):RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '2.383313073 1.691453819'" with points lc rgb 'black' pt 5 ps 1.5 title '437.leslie3d1',\
		"<echo '3.070547692 1.895916723'" with points lc rgb "#A9A9A9" pt 5 ps 1.5 title '437.leslie3d2',\
		"<echo '2.378222082 1.718474072'" with points lc rgb "#696969" pt 5 ps 1.5 title '437.leslie3d3',\
		"<echo '3.07267465 1.789276681'" with points lc rgb "#D3D3D3" pt 5 ps 1.5 title '437.leslie3d4',\
		"<echo '2.331574006 1.775721213'" with points lc rgb "#7F7F7F" pt 5 ps 1.5 title '437.leslie3d5',\
		"<echo '2.909657867 1.889730184'" with points lc rgb "#2F4F4F" pt 5 ps 1.5 title '437.leslie3d6',\
		"<echo '1.065267033 1.209934517'" with points lc rgb 'black' pt 8 ps 1.5 title '465.tonto1',\
		"<echo '1.120450644 1.219657938'" with points lc rgb "#A9A9A9" pt 8 ps 1.5 title '465.tonto2',\
		"<echo '0.846084902 1.377325869'" with points lc rgb "#696969" pt 8 ps 1.5 title '465.tonto3',\
		"<echo '1.0373595 0.820194654'" with points lc rgb 'black' pt 9 ps 1.5 title '470.lbm1',\
		"<echo '0.825162715 1.063771256'" with points lc rgb 'black' pt 10 ps 1.5 title '482.sphinx1',\
		"<echo '0.793714636 0.806543553'" with points lc rgb "#A9A9A9" pt 10 ps 1.5 title '482.sphinx2'		

		
set terminal svg enhanced size 865,360
set output "carm_perf_ld_inst_model_dp_1C_1_comps.svg" 
unset logscale y
unset logscale x 
set format x 
set format y
set ylabel "Performance (COMPS/CLK)" 
set xlabel "COMPS/MOPS";
set xrange [0:20]
set yrange [0:5]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 1.996816903
B_L2 = 1.000898399
B_L3 = 0.709018136
B_DRAM = 0.178346501

RET4 = 4
RET3 = 3
RET2 = 2
RET1 = 1

fL1_RET1(x) = (B_L1*x + B_L1 < RET1)?(B_L1*x + B_L1):RET1
fL1_RET2(x) = (B_L1*x + B_L1 < RET2)?(B_L1*x + B_L1):RET2
fL1_RET3(x) = (B_L1*x + B_L1 < RET3)?(B_L1*x + B_L1):RET3
fL1(x) =   (B_L1*x + B_L1 < RET4)?(B_L1*x + B_L1):RET4
fL2(x) =   (B_L2*x + B_L2 < RET4)?(B_L2*x + B_L2):RET4
fL3(x) =   (B_L3*x + B_L3 < RET4)?(B_L3*x + B_L3):RET4
fDRAM(x) = (B_DRAM*x + B_DRAM < RET4)?(B_DRAM*x + B_DRAM):RET4

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_RET1(x) notitle with lines lt -1 lw 1, \
		fL1_RET2(x) notitle with lines lt -1 lw 1, \
		fL1_RET3(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '2.12877557 1.687727383'" with points lc rgb 'black' pt 1 ps 1.5 title '410.bwaves1',\
		"<echo '2.009654612 1.531986568'" with points lc rgb "#A9A9A9" pt 1 ps 1.5 title '410.bwaves2',\
		"<echo '2.034113412 1.421592122'" with points lc rgb "#696969" pt 1 ps 1.5 title '410.bwaves3',\
		"<echo '1.574551488 1.427361905'" with points lc rgb 'black' pt 2 ps 1.5 title '416.gamess1',\
		"<echo '2.61390253 1.536034648'" with points lc rgb 'black' pt 3 ps 1.5 title '434.zeusmp1',\
		"<echo '2.645564548 1.552050039'" with points lc rgb "#A9A9A9" pt 3 ps 1.5 title '434.zeusmp2',\
		"<echo '2.324224352 1.707290108'" with points lc rgb "#696969" pt 3 ps 1.5 title '434.zeusmp3',\
		"<echo '2.384260789 1.834938229'" with points lc rgb "#D3D3D3" pt 3 ps 1.5 title '434.zeusmp4',\
		"<echo '1.588965773 1.721516135'" with points lc rgb 'black' pt 4 ps 1.5 title '436.cactusADM1',\
		"<echo '2.484831655 2.607442701'" with points lc rgb 'black' pt 6 ps 1.5 title '454.calculix1',\
		"<echo '2.3425845 1.637700291'" with points lc rgb 'black' pt 7 ps 1.5 title '459.gemsFDTD1',\
		"<echo '2.190914569 1.660520323'" with points lc rgb "#A9A9A9" pt 7 ps 1.5 title '459.gemsFDTD2',\
		"<echo '2.331271981 1.568955592'" with points lc rgb "#696969" pt 7 ps 1.5 title '459.gemsFDTD3',\
		"<echo '2.226254588 1.514265565'" with points lc rgb "#D3D3D3" pt 7 ps 1.5 title '459.gemsFDTD4'
		
######################################
#   TOYPUSH ORIGINAL CARM GRAPHICS   #
######################################

set terminal svg enhanced size 690,360
set output "carm_perf_toypush_adv.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.1:64]
set key center
set key horizontal
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 341.54
B_L2 = 127.96
B_L3 = 63.42
B_DRAM = 15.83

FMA = 64
ADD = 32
ADD_SC = 8

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1_ADD_SC(x) = (B_L1*x < ADD_SC)?B_L1*x:ADD_SC
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL1_ADD_SC(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.114 0.95'" with points lc rgb 'black' pt 5 ps 1 title 'Toypush - b\_interpol (kernel 1)',\
		"<echo '0.265 6.182'" with points lc rgb 'black' pt 9 ps 1 title 'Toypush - e\_interpol (kernel 2)',\
		"<echo '0.331 11.248'" with points lc rgb 'black' pt 7 ps 1 title 'Toypush - eom\_val (kernel 3)'

set terminal svg enhanced size 690,360
set output "carm_perf_toypush_e_interpol_dbl_2ld_st.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.1:32]
set key center
set key horizontal
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

ADD = 7.998826866
FMA = 15.99927354

B_L1 = 74.56645376
B_L2 = 41.41926923
B_L3 = 30.43728076
B_DRAM = 7.449042444

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.265 6.182'" with points lc rgb 'black' pt 9 ps 1 title 'Toypush - e\_interpol (kernel 2)'

set terminal svg enhanced size 690,360
set output "carm_perf_toypush_b_interpol_sse_st.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.1:32]
set key center
set key horizontal
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

ADD = 15.99963928
FMA = 31.99937668

B_L1 = 63.99947831
B_L2 = 51.17532444
B_L3 = 43.09429645
B_DRAM = 12.75993221

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.114 0.95'" with points lc rgb 'black' pt 5 ps 1 title 'Toypush - b\_interpol (kernel 1)'

set terminal svg enhanced size 690,360
set output "carm_perf_toypush_eom_eval_sse_2ld_st.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.1:32]
set key center
set key horizontal
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

ADD = 15.99963928
FMA = 31.99937668

B_L1 = 138.6639088
B_L2 = 80.31456751
B_L3 = 51.3625937
B_DRAM = 12.23089703

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.331 11.248'" with points lc rgb 'black' pt 7 ps 1 title 'Toypush - eom\_val'
		
###################################
#   TOYPUSH POWER CARM GRAPHICS   #
###################################	

set terminal svg enhanced size 865,360
set output "carm_power_toypush_e_interpol_dbl_2ld_st.svg" 
unset logscale y 
set format y
set format x '10^{%L}'
set ylabel "Performance (GFLOPS/s)" 
set xlabel "FLOPS";
set xrange [0.00098:512]
set yrange [13:25]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000


ADD = 7.998826866
FMA = 15.99927354

B_L1 = 74.56645376
B_L2 = 41.41926923
B_L3 = 30.43728076
B_DRAM = 7.449042444

pw_L1 = 15.55875294
pw_L2 = 15.92165634
pw_L3 = 17.01916682 
pw_DRAM = 13.51037528

pw_FMA = 14.32034739

constant_pw = 12.61739316

FMA = 15.99823455
ADD = 7.999374642

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)


plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.265 20.46327902'" with points lc rgb 'black' pt 9 ps 1 title 'Toypush - e_interpol'	

set terminal svg enhanced size 865,360
set output "carm_power_toypush_b_interpol_sse_st.svg" 
unset logscale y 
set format y
set format x '10^{%L}'
set ylabel "Performance (GFLOPS/s)" 
set xlabel "FLOPS";
set xrange [0.00098:512]
set yrange [13:25]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000


ADD = 15.99963928
FMA = 31.99937668

B_L1 = 63.99947831
B_L2 = 51.17532444
B_L3 = 43.09429645
B_DRAM = 12.75993221

pw_L1 = 13.38212911
pw_L2 = 14.99146292
pw_L3 = 18.33506232 
pw_DRAM = 14.88428439

pw_FMA = 14.76362596

constant_pw = 12.61739316

FMA = 15.99823455
ADD = 7.999374642

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)


plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.114 17.53200096'" with points lc rgb 'black' pt 5 ps 1 title 'Toypush - b_interpol'	

		
set terminal svg enhanced size 865,360
set output "carm_power_toypush_eom_eval_sse_2ld_st.svg" 
unset logscale y 
set format y
set format x '10^{%L}'
set ylabel "Performance (GFLOPS/s)" 
set xlabel "FLOPS";
set xrange [0.00098:512]
set yrange [13:25]
set key rmargin
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000


ADD = 15.99963928
FMA = 31.99937668

B_L1 = 138.6639088
B_L2 = 80.31456751
B_L3 = 51.3625937
B_DRAM = 12.23089703

pw_L1 = 15.54015639
pw_L2 = 16.75289918
pw_L3 = 18.33506232 
pw_DRAM = 14.88428439

pw_FMA = 14.76362596

constant_pw = 12.61739316

FMA = 15.99823455
ADD = 7.999374642

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)


plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.331 20.01241721'" with points lc rgb 'black' pt 7 ps 1 title 'Toypush - eom_val'		
		
###########################################
#   TOYPUSH OPTIMIZATIONS CARM GRAPHICS   #
###########################################	

set terminal svg enhanced size 690,360
set output "carm_perf_toypush_b_interpol_avx_st.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.1:64]
set key center
set key horizontal
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000

B_L1 = 128.0040961
B_L2 = 65.02585086
B_L3 = 51.57723226
B_DRAM = 12.50136946

FMA = 63.99988364
ADD = 31.99992847

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.114 0.95'" with points lc rgb "#696969" pt 5 ps 1 title 'Toypush - b\_interpol (kernel 1)',\
		"<echo '0.105 2.667'" with points lc rgb 'black' pt 5 ps 1 title 'b\_interpol\_opt (kernel 1)'	
		
set terminal svg enhanced size 690,360
set output "carm_perf_toypush_eom_eval_avx_2ld_st.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.1:64]
set key center
set key horizontal
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000
		
B_L1 = 339.3405254
B_L2 = 104.9075784
B_L3 = 58.38831549
B_DRAM = 12.7645054

FMA = 63.99988364
ADD = 31.99992847

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.331 11.248'" with points lc rgb "#696969" pt 7 ps 1 title 'Toypush - eom\_val (kernel 3)',\
		"<echo '0.392 27.307'" with points lc rgb 'black' pt 7 ps 1 title 'Toypush - eom\_eval\_opt (kernel 3)'

set terminal svg enhanced size 690,360
set output "carm_perf_toypush_e_interpol_avx_2ld_st.svg" 
set logscale xy 10
set format x '10^{%L}'
set format y '10^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.01:10]
set yrange [0.1:64]
set key center
set key horizontal
set key top
set key inside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000		
		
B_L1 = 339.3405254
B_L2 = 104.9075784
B_L3 = 58.38831549
B_DRAM = 12.7645054

FMA = 63.99988364
ADD = 31.99992847

fL1_ADD(x) = (B_L1*x < ADD)?B_L1*x:ADD
fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1(x) notitle with lines lt -1 lw 1, \
		fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1, \
		"<echo '0.265 6.182'" with points lc rgb "#696969" pt 9 ps 1 title 'Toypush - e\_interpol (kernel 2)', \
		"<echo '0.265 46.456'" with points lc rgb 'black' pt 9 ps 1 title 'Toypush - e\_interpol\_opt (kernel 2)'
