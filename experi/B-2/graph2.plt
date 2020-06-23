set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
#set term tikz standalone
set output 'graph2.eps'
#set terminal wxt

#set polar
set xlabel 'cos^2θ / degree'
#set tmargin 5
set size square
set xrange [-0.1:1.1]
set yrange [0:270]
set ylabel 'I / μA'
set key right bottom

f(x) = a*x+b
a=250
b=0

fit f(x) "res1.dat" using 2:3 via a,b
plot "res1.dat" using 2:3 title "実験値", f(x) title "最尤曲線"

reset