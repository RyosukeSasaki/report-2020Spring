set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph5.eps'
#set terminal wxt

#set polar
set xlabel 'ひずみ ε'
#set tmargin 5
set size square
set ylabel '応力 σ / Mpa'
#set xtics  100000
set xrange [-0.001:0.01]
set yrange [0:55]
#set yrange [37.9:38.1]
#set xrange [0.0047:0.00482]
set samples 100000

set label "0.2%" at 0.8*10**(-3),1
set label "0.2%耐力 (4.802×10^{-3}, 38.02)" at 0.004802,38.023-1
set label "比例限度" at 0.001223776-0.0016,19.74599524

y(x)=12163*x+3.949
g(x)=12163*x+3.949-12163*0.002
plot "al3.dat" using 2:1 smooth unique notitle,\
"al3.dat" using 2:1 lt 1 notitle,\
y(x) lt 2 dt (10,5) title "y=12163*x+3.949",\
g(x) lt 4 dt (10,5) notitle,\
sprintf("< echo ''%f %f''", 0.004802,38.023) lt 7 notitle,\
sprintf("< echo ''%f %f''", 0.001223776,19.74599524) lt 7 notitle


reset