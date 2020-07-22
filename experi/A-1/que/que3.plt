set terminal wxt
set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph4.eps'

set xlabel 'f / Hz'
set ylabel 'ゲイン / dB'
set size square
#set samples 100000
set logscale x


set xrange [100:100000]
set yrange [-40:10]

R=10*10**3
r=20*10**3
R_=20*10**3
r_=10*10**3
C=0.01*10**(-6)

h(x)=(r_/R) / sqrt(1+(2*pi*x*r_*C)**2)
i(x)=(r/R_) / sqrt(1+(2*pi*x*r*C)**2)
g(x)=(r/R) / sqrt(1+(2*pi*x*r*C)**2)
g_(x)=(0.5) / sqrt(1+(2*pi*x*r_*C)**2)
f(x)=20*log10(x)

plot f(g(x)) title "場合1",\
f(g_(x)) title "場合2"
#f(h(x)) title "実験2" dt (10,5),\
#f(i(x)) title "追加実験" dt (10,5)

reset
