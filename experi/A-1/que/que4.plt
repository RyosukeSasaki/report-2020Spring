set terminal wxt
set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph5.eps'

set xlabel 'f / Hz'
set ylabel 'ゲイン / dB'
set size square
#set samples 100000
set logscale x

set arrow from  100,-3 to 100000,-3 nohead lw 1 dt (10,6) lc rgb "red"
set arrow from  1590,0 to 1590,-40 nohead lw 1 dt (10,6) lc rgb "red"

set xrange [100:100000]
set yrange [-40:0]

R=10*10**3
r_=10*10**3
C=0.01*10**(-6)

h(x)=(r_/R) / sqrt(1+(2*pi*x*r_*C)**2)
j(x)=1/(2*pi*R*x*C)
#i(x)=(r/R_) / sqrt(1+(2*pi*x*r*C)**2)
#g(x)=(r/R) / sqrt(1+(2*pi*x*r*C)**2)
#g_(x)=(0.5) / sqrt(1+(2*pi*x*r_*C)**2)
f(x)=20*log10(x)

plot f(h(x)) notitle,\
f(j(x)) dt (10,5)


reset
