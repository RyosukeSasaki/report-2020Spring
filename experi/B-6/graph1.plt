set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph3.eps'
#set terminal wxt

set xlabel 'λ / nm'
#set xlabel font "Times New Roman, 20"
#set ylabel font "Times New Roman, 20"
#set y2label font "Times New Roman, 20"
set tmargin 5
set size square
set xrange [610:690]
set yrange [0:5]
set ylabel 'Frequency / times'
set y2range [0:0.25]
set y2tics nomirror
set y2label 'Gaussian'
set boxwidth 5
set arrow from  632.81,0.0 to 632.81,5 nohead lw 2 dt (10,5) lc rgb "red"
bin(x,width)=width*floor(x/width)+width/2.0

sigma = 3.5
mean = 651.6
f(x)=1/sqrt(2*pi*sigma)*exp(-(x-mean)**2/(2*sigma**2))
set label 1 center at 632.81,5.15 "文献値"
#plot "graph1.dat" using 1:2 with boxes title "Frequency", f(x) axis x1y2 title "Gaussian"
plot "graph1.dat" using (bin($5,5)):(1.0) smooth freq with boxes title "Frequency", f(x) axis x1y2 title "Gaussian"

reset