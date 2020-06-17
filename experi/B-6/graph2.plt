set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph2.eps'
#set terminal wxt

set xlabel 'α / mmHg^{-1}'

set size square
set xrange [2:5]
set yrange [0:6]
set ylabel 'Frequency / times'
set y2range [0:1.1]
set y2tics nomirror
set y2label 'Gaussian'
set boxwidth 0.2
bin(x,width)=width*floor(x/width)+width/2.0

sigma = 0.19
mean = 3.37
f(x)=1/sqrt(2*pi*sigma)*exp(-(x-mean)**2/(2*sigma**2))
plot "graph2.dat" using (bin($5,0.2)):(1.0) smooth freq with boxes title "Frequency", f(x) axis x1y2 title "Gaussian"

reset