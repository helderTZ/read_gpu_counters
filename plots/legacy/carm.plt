#############################
#	CARM CONSTRUCTION SKL	#
#############################

#################
#	FMA VS ADD	#	
#################

set terminal svg enhanced size 865,360
set output "carm_perf_const_2ld_st_add_mul_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:512]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	

B_L1 = 1358.434906
B_L2 = 417.7112011
B_L3 = 214.3445344
B_DRAM = 18.58988789

FMA = 254.6727153
ADD = 127.3391364

fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL1_ADD(x) =   (B_L1*x < ADD)?B_L1*x:ADD
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1_ADD(x) notitle with lines lt -1 lw 1, \
		fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1
		
set terminal svg enhanced size 865,360
set output "carm_pw_const_2ld_st_add_mul_skl.svg" 
set logscale xy 2
unset logscale y
set format x '2^{%L}'
set format y 
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [35:100]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1 = 1358.434906
B_L2 = 417.7112011
B_L3 = 214.3445344
B_DRAM = 18.58988789

FMA = 254.6727153
ADD = 127.3391364

pw_L1 = 62.992685
pw_L2 = 58.705905
pw_L3 = 61.440385
pw_DRAM = 41.250745

pw_FMA = 61.02715
pw_ADD = 58.096756

constant_pw = 30.64116878

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL1_ADD(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < ADD/(x*B_L1))?1:ADD/(x*B_L1)) + (pw_ADD - constant_pw)*((1 < x*B_L1/ADD)?1:x*B_L1/ADD)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)

plot 	fL1_ADD(x) title "L1 ADD" with lines lt -1 lw 1, \
		fL1(x) title "L1 FMA" with lines lt -1 lw 1, \
		fL2(x) title "L2 FMA" with lines lt -1 lw 1, \
		fL3(x) title "L3 FMA" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM FMA" with lines lt -1 lw 1		
		
set terminal svg enhanced size 865,360
set output "carm_eff_const_2ld_st_add_mul_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Energy-Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:8]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1 = 1358.434906
B_L2 = 417.7112011
B_L3 = 214.3445344
B_DRAM = 18.58988789

FMA = 254.6727153
ADD = 127.3391364

pw_L1 = 62.992685
pw_L2 = 58.705905
pw_L3 = 61.440385
pw_DRAM = 41.250745

pw_FMA = 61.02715
pw_ADD = 58.096756

constant_pw = 30.64116878

fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_ADD(x) =    ((B_L1*x < ADD)?B_L1*x:ADD)/(constant_pw + (pw_L1 - constant_pw)*((1 < ADD/(x*B_L1))?1:ADD/(x*B_L1)) + (pw_ADD - constant_pw)*((1 < x*B_L1/ADD)?1:x*B_L1/ADD))
fL2(x) =   ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1_ADD(x) title "L1 ADD" with lines lt -1 lw 1, \
		fL1(x) title "L1 FMA" with lines lt -1 lw 1, \
		fL2(x) title "L2 FMA" with lines lt -1 lw 1, \
		fL3(x) title "L3 FMA" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM FMA" with lines lt -1 lw 1			
		
#####################
#	LD VS 2LD_ST	#	
#####################		

set terminal svg enhanced size 865,360
set output "carm_perf_const_ld_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:512]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	

B_L1_2LD_ST = 1358.434906
B_L1 = 1018.881682
B_L2 = 509.4886923
B_L3 = 241.1945715
B_DRAM = 30.83127697

FMA = 254.6727153

fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL1_2LD_ST(x) =   (B_L1_2LD_ST*x < FMA)?B_L1_2LD_ST*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1_2LD_ST(x) notitle with lines lt -1 lw 1, \
		fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1
		
set terminal svg enhanced size 865,360
set output "carm_pw_const_ld_skl.svg" 
set logscale xy 2
unset logscale y
set format x '2^{%L}'
set format y 
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [35:100]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_2LD_ST = 1358.434906
B_L1 = 1018.881682
B_L2 = 509.4886923
B_L3 = 241.1945715
B_DRAM = 30.83127697

FMA = 254.6727153

pw_L1_2LD_ST = 62.992685

pw_L1 = 50.973676
pw_L2 = 52.96785
pw_L3 = 54.293461
pw_DRAM = 41.641105

pw_FMA = 61.02715
pw_ADD = 58.096756

constant_pw = 30.64116878

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL1_2LD_ST(x) =   constant_pw + (pw_L1_2LD_ST - constant_pw)*((1 < FMA/(x*B_L1_2LD_ST))?1:FMA/(x*B_L1_2LD_ST)) + (pw_FMA - constant_pw)*((1 < x*B_L1_2LD_ST/FMA)?1:x*B_L1_2LD_ST/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)

plot 	fL1_2LD_ST(x) title "L1 2LD_ST" with lines lt -1 lw 1, \
		fL1(x) title "L1 LD" with lines lt -1 lw 1, \
		fL2(x) title "L2 LD" with lines lt -1 lw 1, \
		fL3(x) title "L3 LD" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM LD" with lines lt -1 lw 1		
		
set terminal svg enhanced size 865,360
set output "carm_eff_const_ld_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Energy-Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:8]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_2LD_ST = 1358.434906
B_L1 = 1018.881682
B_L2 = 509.4886923
B_L3 = 241.1945715
B_DRAM = 30.83127697

FMA = 254.6727153

pw_L1_2LD_ST = 62.992685

pw_L1 = 50.973676
pw_L2 = 52.96785
pw_L3 = 54.293461
pw_DRAM = 41.641105

pw_FMA = 61.02715
pw_ADD = 58.096756

constant_pw = 30.64116878

fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_2LD_ST(x) =    ((B_L1_2LD_ST*x < FMA)?B_L1_2LD_ST*x:FMA)/(constant_pw + (pw_L1_2LD_ST - constant_pw)*((1 < FMA/(x*B_L1_2LD_ST))?1:FMA/(x*B_L1_2LD_ST)) + (pw_FMA - constant_pw)*((1 < x*B_L1_2LD_ST/FMA)?1:x*B_L1_2LD_ST/FMA))
fL2(x) =   ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1_2LD_ST(x) title "L1 2LD_ST" with lines lt -1 lw 1, \
		fL1(x) title "L1 LD" with lines lt -1 lw 1, \
		fL2(x) title "L2 LD" with lines lt -1 lw 1, \
		fL3(x) title "L3 LD" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM LD" with lines lt -1 lw 1	

#####################
#	ST VS 2LD_ST	#	
#####################		

set terminal svg enhanced size 865,360
set output "carm_perf_const_st_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:512]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	

B_L1_2LD_ST = 1358.434906
B_L1 = 509.5555684
B_L2 =339.5421343
B_L3 = 194.765502
B_DRAM = 15.35551926

FMA = 254.6727153

fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL1_2LD_ST(x) =   (B_L1_2LD_ST*x < FMA)?B_L1_2LD_ST*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1_2LD_ST(x) notitle with lines lt -1 lw 1, \
		fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1
		
set terminal svg enhanced size 865,360
set output "carm_pw_const_st_skl.svg" 
set logscale xy 2
unset logscale y
set format x '2^{%L}'
set format y 
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [35:100]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_2LD_ST = 1358.434906
B_L1 = 509.5555684
B_L2 =339.5421343
B_L3 = 194.765502
B_DRAM = 15.35551926

FMA = 254.6727153

pw_L1_2LD_ST = 62.992685

pw_L1 = 46.860344
pw_L2 = 53.399376
pw_L3 = 59.925592
pw_DRAM = 39.836596

pw_FMA = 61.02715
pw_ADD = 58.096756

constant_pw = 30.64116878

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL1_2LD_ST(x) =   constant_pw + (pw_L1_2LD_ST - constant_pw)*((1 < FMA/(x*B_L1_2LD_ST))?1:FMA/(x*B_L1_2LD_ST)) + (pw_FMA - constant_pw)*((1 < x*B_L1_2LD_ST/FMA)?1:x*B_L1_2LD_ST/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)

plot 	fL1_2LD_ST(x) title "L1 2LD_ST" with lines lt -1 lw 1, \
		fL1(x) title "L1 LD" with lines lt -1 lw 1, \
		fL2(x) title "L2 LD" with lines lt -1 lw 1, \
		fL3(x) title "L3 LD" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM LD" with lines lt -1 lw 1		
		
set terminal svg enhanced size 865,360
set output "carm_eff_const_st_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Energy-Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:8]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_2LD_ST = 1358.434906
B_L1 = 509.5555684
B_L2 =339.5421343
B_L3 = 194.765502
B_DRAM = 15.35551926

FMA = 254.6727153

pw_L1_2LD_ST = 62.992685

pw_L1 = 46.860344
pw_L2 = 53.399376
pw_L3 = 59.925592
pw_DRAM = 39.836596

pw_FMA = 61.02715
pw_ADD = 58.096756

constant_pw = 30.64116878

fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_2LD_ST(x) =    ((B_L1_2LD_ST*x < FMA)?B_L1_2LD_ST*x:FMA)/(constant_pw + (pw_L1_2LD_ST - constant_pw)*((1 < FMA/(x*B_L1_2LD_ST))?1:FMA/(x*B_L1_2LD_ST)) + (pw_FMA - constant_pw)*((1 < x*B_L1_2LD_ST/FMA)?1:x*B_L1_2LD_ST/FMA))
fL2(x) =   ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1_2LD_ST(x) title "L1 2LD_ST" with lines lt -1 lw 1, \
		fL1(x) title "L1 LD" with lines lt -1 lw 1, \
		fL2(x) title "L2 LD" with lines lt -1 lw 1, \
		fL3(x) title "L3 LD" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM LD" with lines lt -1 lw 1

#####################
#	LD_ST VS 2LD_ST	#	
#####################		

set terminal svg enhanced size 865,360
set output "carm_perf_const_ld_st_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:512]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	

B_L1_2LD_ST = 1358.434906
B_L1 = 1018.889569
B_L2 = 313.0704588
B_L3 = 200.2297169
B_DRAM = 14.69965665

FMA = 254.6727153

fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL1_2LD_ST(x) =   (B_L1_2LD_ST*x < FMA)?B_L1_2LD_ST*x:FMA
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1_2LD_ST(x) notitle with lines lt -1 lw 1, \
		fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1
		
set terminal svg enhanced size 865,360
set output "carm_pw_const_ld_st_skl.svg" 
set logscale xy 2
unset logscale y
set format x '2^{%L}'
set format y 
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [35:100]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_2LD_ST = 1358.434906
B_L1 = 1018.889569
B_L2 = 313.0704588
B_L3 = 200.2297169
B_DRAM = 14.69965665

FMA = 254.6727153

pw_L1_2LD_ST = 62.992685

pw_L1 = 56.630648
pw_L2 = 54.703322
pw_L3 = 61.087752
pw_DRAM = 39.38489

pw_FMA = 61.02715
pw_ADD = 58.096756

constant_pw = 30.64116878

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL1_2LD_ST(x) =   constant_pw + (pw_L1_2LD_ST - constant_pw)*((1 < FMA/(x*B_L1_2LD_ST))?1:FMA/(x*B_L1_2LD_ST)) + (pw_FMA - constant_pw)*((1 < x*B_L1_2LD_ST/FMA)?1:x*B_L1_2LD_ST/FMA)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)

plot 	fL1_2LD_ST(x) title "L1 2LD_ST" with lines lt -1 lw 1, \
		fL1(x) title "L1 LD/ST" with lines lt -1 lw 1, \
		fL2(x) title "L2 LD/ST" with lines lt -1 lw 1, \
		fL3(x) title "L3 LD/ST" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM LD/ST" with lines lt -1 lw 1		
		
set terminal svg enhanced size 865,360
set output "carm_eff_const_ld_st_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Energy-Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:8]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_2LD_ST = 1358.434906
B_L1 = 1018.889569
B_L2 = 313.0704588
B_L3 = 200.2297169
B_DRAM = 14.69965665

FMA = 254.6727153

pw_L1_2LD_ST = 62.992685

pw_L1 = 56.630648
pw_L2 = 54.703322
pw_L3 = 61.087752
pw_DRAM = 39.38489

pw_FMA = 61.02715
pw_ADD = 58.096756

constant_pw = 30.64116878

fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_2LD_ST(x) =    ((B_L1_2LD_ST*x < FMA)?B_L1_2LD_ST*x:FMA)/(constant_pw + (pw_L1_2LD_ST - constant_pw)*((1 < FMA/(x*B_L1_2LD_ST))?1:FMA/(x*B_L1_2LD_ST)) + (pw_FMA - constant_pw)*((1 < x*B_L1_2LD_ST/FMA)?1:x*B_L1_2LD_ST/FMA))
fL2(x) =   ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1_2LD_ST(x) title "L1 2LD_ST" with lines lt -1 lw 1, \
		fL1(x) title "L1 LD" with lines lt -1 lw 1, \
		fL2(x) title "L2 LD" with lines lt -1 lw 1, \
		fL3(x) title "L3 LD" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM LD" with lines lt -1 lw 1		
		
#####################
#	SSE VS AVX		#	
#####################		

set terminal svg enhanced size 865,360
set output "carm_perf_const_sse_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:512]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	

B_L1_AVX = 1358.434906
B_L1 = 552.956875
B_L2 = 449.958831
B_L3 = 197.0798185
B_DRAM = 15.30882546

FMA_AVX = 254.6727153

FMA = 127.3372253

fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL1_AVX(x) =   (B_L1_AVX*x < FMA_AVX)?B_L1_AVX*x:FMA_AVX
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1_AVX(x) notitle with lines lt -1 lw 1, \
		fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1
		
set terminal svg enhanced size 865,360
set output "carm_pw_const_sse_skl.svg" 
set logscale xy 2
unset logscale y
set format x '2^{%L}'
set format y 
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [34:100]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_AVX = 1358.434906
B_L1 = 552.956875
B_L2 = 449.958831
B_L3 = 197.0798185
B_DRAM = 15.30882546

FMA_AVX = 254.6727153

FMA = 127.3372253

pw_L1_AVX = 62.992685

pw_L1 = 47.139123
pw_L2 = 52.121788
pw_L3 = 55.107142
pw_DRAM = 34.967802

pw_FMA_AVX = 61.02715
pw_FMA = 45.357029

constant_pw = 30.64116878

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL1_AVX(x) =   constant_pw + (pw_L1_AVX - constant_pw)*((1 < FMA_AVX/(x*B_L1_AVX))?1:FMA_AVX/(x*B_L1_AVX)) + (pw_FMA - constant_pw)*((1 < x*B_L1_AVX/FMA_AVX)?1:x*B_L1_AVX/FMA_AVX)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)

plot 	fL1_AVX(x) title "L1 AVX" with lines lt -1 lw 1, \
		fL1(x) title "L1 SSE" with lines lt -1 lw 1, \
		fL2(x) title "L2 SSE" with lines lt -1 lw 1, \
		fL3(x) title "L3 SSE" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM SSE" with lines lt -1 lw 1		
		
set terminal svg enhanced size 865,360
set output "carm_eff_const_sse_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Energy-Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:8]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_AVX = 1358.434906
B_L1 = 552.956875
B_L2 = 449.958831
B_L3 = 197.0798185
B_DRAM = 15.30882546

FMA_AVX = 254.6727153

FMA = 127.3372253

pw_L1_AVX = 62.992685

pw_L1 = 47.139123
pw_L2 = 52.121788
pw_L3 = 55.107142
pw_DRAM = 34.967802

pw_FMA_AVX = 61.02715
pw_FMA = 45.357029

constant_pw = 30.64116878

fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_AVX(x) =    ((B_L1_AVX*x < FMA_AVX)?B_L1_AVX*x:FMA_AVX)/(constant_pw + (pw_L1_AVX - constant_pw)*((1 < FMA_AVX/(x*B_L1_AVX))?1:FMA_AVX/(x*B_L1_AVX)) + (pw_FMA_AVX - constant_pw)*((1 < x*B_L1_AVX/FMA_AVX)?1:x*B_L1_AVX/FMA_AVX))
fL2(x) =   ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1_AVX(x) title "L1 AVX" with lines lt -1 lw 1, \
		fL1(x) title "L1 SSE" with lines lt -1 lw 1, \
		fL2(x) title "L2 SSE" with lines lt -1 lw 1, \
		fL3(x) title "L3 SSE" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM SSE" with lines lt -1 lw 1		

#####################
#	SSE VS AVX		#	
#####################		

set terminal svg enhanced size 865,360
set output "carm_perf_const_dbl_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Performance [GFLOPS/s]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:512]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	

B_L1_AVX = 1358.434906
B_L1_SSE = 552.956875

B_L1 = 297.6054928
B_L2 = 187.314984
B_L3 = 119.8751688
B_DRAM = 14.86509751

FMA_AVX = 254.6727153
FMA_SSE = 127.3372253

FMA = 63.83793146

fL1(x) =   (B_L1*x < FMA)?B_L1*x:FMA
fL1_AVX(x) =   (B_L1_AVX*x < FMA_AVX)?B_L1_AVX*x:FMA_AVX
fL1_SSE(x) =   (B_L1_SSE*x < FMA_SSE)?B_L1_SSE*x:FMA_SSE
fL2(x) =   (B_L2*x < FMA)?B_L2*x:FMA
fL3(x) =   (B_L3*x < FMA)?B_L3*x:FMA
fDRAM(x) = (B_DRAM*x < FMA)?B_DRAM*x:FMA

plot 	fL1_AVX(x) notitle with lines lt -1 lw 1, \
		fL1_SSE(x) notitle with lines lt -1 lw 1, \
		fL1(x) notitle with lines lt -1 lw 1, \
		fL2(x) notitle with lines lt -1 lw 1, \
		fL3(x) notitle with lines lt -1 lw 1, \
		fDRAM(x) notitle with lines lt -1 lw 1
		
set terminal svg enhanced size 865,360
set output "carm_pw_const_dbl_skl.svg" 
set logscale xy 2
unset logscale y
set format x '2^{%L}'
set format y 
set ylabel "Power Consumption [W]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [25:100]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_AVX = 1358.434906
B_L1_SSE = 552.956875

B_L1 = 297.6054928
B_L2 = 187.314984
B_L3 = 119.8751688
B_DRAM = 14.86509751

FMA_AVX = 254.6727153
FMA_SSE = 127.3372253

FMA = 63.83793146

pw_L1_AVX = 62.992685
pw_L1_SSE = 47.139123

pw_L1 = 47.14747
pw_L2 = 49.276816
pw_L3 = 52.372299
pw_DRAM = 32.972784 

pw_FMA_AVX = 61.02715
pw_FMA_SSE = 45.357029
pw_FMA = 29.8879

constant_pw = 30.64116878

fL1(x) =   constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA)
fL1_AVX(x) =   constant_pw + (pw_L1_AVX - constant_pw)*((1 < FMA_AVX/(x*B_L1_AVX))?1:FMA_AVX/(x*B_L1_AVX)) + (pw_FMA_AVX - constant_pw)*((1 < x*B_L1_AVX/FMA_AVX)?1:x*B_L1_AVX/FMA_AVX)
fL1_SSE(x) =   constant_pw + (pw_L1_SSE - constant_pw)*((1 < FMA_SSE/(x*B_L1_SSE))?1:FMA_SSE/(x*B_L1_SSE)) + (pw_FMA_SSE - constant_pw)*((1 < x*B_L1_SSE/FMA_SSE)?1:x*B_L1_SSE/FMA_SSE)
fL2(x) =   constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA)
fL3(x) =   constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA)
fDRAM(x) = constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA)

plot 	fL1_AVX(x) title "L1 AVX" with lines lt -1 lw 1, \
		fL1_SSE(x) title "L1 SSE" with lines lt -1 lw 1, \
		fL1(x) title "L1 DBL" with lines lt -1 lw 1, \
		fL2(x) title "L2 DBL" with lines lt -1 lw 1, \
		fL3(x) title "L3 DBL" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM DBL" with lines lt -1 lw 1		
		
set terminal svg enhanced size 865,360
set output "carm_eff_const_dbl_skl.svg" 
set logscale xy 2
set format x '2^{%L}'
set format y '2^{%L}'
set ylabel "Energy-Efficiency [GFLOPS/J]" 
set xlabel "Arithmetic Intensity [flops/byte]";
set xrange [0.00098:512]
set yrange [0.008125:8]
set datafile separator ","
set key center
set key horizontal
set key top
set key outside
set xtics nomirror
set ytics nomirror
set border 3
set samples 5000	
set mytics 2

B_L1_AVX = 1358.434906
B_L1_SSE = 552.956875

B_L1 = 297.6054928
B_L2 = 187.314984
B_L3 = 119.8751688
B_DRAM = 14.86509751

FMA_AVX = 254.6727153
FMA_SSE = 127.3372253

FMA = 63.83793146

pw_L1_AVX = 62.992685
pw_L1_SSE = 47.139123

pw_L1 = 47.14747
pw_L2 = 49.276816
pw_L3 = 52.372299
pw_DRAM = 32.972784 

pw_FMA_AVX = 61.02715
pw_FMA_SSE = 45.357029
pw_FMA = 29.8879

constant_pw = 30.64116878

fL1(x) =   ((B_L1*x < FMA)?B_L1*x:FMA)/(constant_pw + (pw_L1 - constant_pw)*((1 < FMA/(x*B_L1))?1:FMA/(x*B_L1)) + (pw_FMA - constant_pw)*((1 < x*B_L1/FMA)?1:x*B_L1/FMA))
fL1_AVX(x) =    ((B_L1_AVX*x < FMA_AVX)?B_L1_AVX*x:FMA_AVX)/(constant_pw + (pw_L1_AVX - constant_pw)*((1 < FMA_AVX/(x*B_L1_AVX))?1:FMA_AVX/(x*B_L1_AVX)) + (pw_FMA_AVX - constant_pw)*((1 < x*B_L1_AVX/FMA_AVX)?1:x*B_L1_AVX/FMA_AVX))
fL1_SSE(x) =    ((B_L1_SSE*x < FMA_SSE)?B_L1_SSE*x:FMA_SSE)/(constant_pw + (pw_L1_SSE - constant_pw)*((1 < FMA_SSE/(x*B_L1_SSE))?1:FMA_SSE/(x*B_L1_SSE)) + (pw_FMA_SSE - constant_pw)*((1 < x*B_L1_SSE/FMA_SSE)?1:x*B_L1_SSE/FMA_SSE))
fL2(x) =   ((B_L2*x < FMA)?B_L2*x:FMA)/(constant_pw + (pw_L2 - constant_pw)*((1 < FMA/(x*B_L2))?1:FMA/(x*B_L2)) + (pw_FMA - constant_pw)*((1 < x*B_L2/FMA)?1:x*B_L2/FMA))
fL3(x) =   ((B_L3*x < FMA)?B_L3*x:FMA)/(constant_pw + (pw_L3 - constant_pw)*((1 < FMA/(x*B_L3))?1:FMA/(x*B_L3)) + (pw_FMA - constant_pw)*((1 < x*B_L3/FMA)?1:x*B_L3/FMA))
fDRAM(x) = ((B_DRAM*x < FMA)?B_DRAM*x:FMA)/(constant_pw + (pw_DRAM - constant_pw)*((1 < FMA/(x*B_DRAM))?1:FMA/(x*B_DRAM)) + (pw_FMA - constant_pw)*((1 < x*B_DRAM/FMA)?1:x*B_DRAM/FMA))

plot 	fL1_AVX(x) title "L1 AVX" with lines lt -1 lw 1, \
		fL1_SSE(x) title "L1 SSE" with lines lt -1 lw 1, \
		fL1(x) title "L1 DBL" with lines lt -1 lw 1, \
		fL2(x) title "L2 DBL" with lines lt -1 lw 1, \
		fL3(x) title "L3 DBL" with lines lt -1 lw 1, \
		fDRAM(x) title "DRAM DBL" with lines lt -1 lw 1				