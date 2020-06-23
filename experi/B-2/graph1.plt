set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
#set term tikz standalone
set output 'graph1.eps'
#set terminal wxt

#set polar
set xlabel 'θ / degree'
#set tmargin 5
set size square
set xrange [-110:110]
set yrange [0:270]
set ylabel 'I / μA'
f(x) = A*(cos(b*x))**2
A=250
b=3.1/180

fit f(x) "res1.dat" using 1:3 via A,b
plot "res1.dat" using 1:3 title "実験値", f(x) title "最尤曲線"

reset