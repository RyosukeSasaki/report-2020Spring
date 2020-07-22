set terminal wxt
#set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
#set output 'graph2.eps'

set xlabel 'f / Hz'
set ylabel 'ゲイン / dB'
set size square
set samples 100000
#set logscale x


set xrange [0:100000]
#set yrange [-40:0]

R=10*10**3
C=0.01*10**(-6)
g(x)=1/(R*C*(2*pi*x))
h(x)=2*R*C*pi*x
f(x)=20*log10(x)

plot f(g(x)) title "積分器",\
f(h(x)) title "微分器"

reset
