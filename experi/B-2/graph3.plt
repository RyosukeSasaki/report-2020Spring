#set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
#set output 'graph3.eps'
set terminal wxt

#set polar
set xlabel 'φ / degree'
#set tmargin 5
set size square
set xrange [-20:110]
set yrange [0:280]
set ylabel 'I / μA'
set key right top

o(x)=x*pi/180
f(x) = A**2*(1-((sin(2*o(x)))**2)*(sin(a/2))**2)
A=15
a=3.14/2

h(x) = B**2*((sin(2*o(x)))**2/2)*(1-cos(b))
B=16
b=3.14/2

fit f(x) "res2.dat" using 1:2 via A,a
fit h(x) "res2.dat" using 1:3 via B,b
#plot "res1.dat" using 2:3 title "実験値", f(x) title "最尤曲線"
plot "res2.dat" using 1:2 title "θ=0°","res2.dat" using 1:3 title "θ=90°",f(x) notitle lt 1,h(x) notitle lt 2

reset