set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph9.eps'
#set terminal wxt

set xlabel 'φ / degree'
#set tmargin 5
set size square
set xrange [-10:55]
set yrange [0:20]
set ylabel 'a, b / √{μA}'

E=15.937
o(x)=x*pi/180
Ex(x)=E*cos(o(x))
Ey(x)=E*sin(o(x))

plot "res5.dat" using 1:2 lt 1 title "a_{実験値}","res5.dat" using 1:3 lt 2 title "b_{実験値}", Ex(x) lt 1 title "a_{理論}", Ey(x) lt 2 title "b_{理論}"

reset