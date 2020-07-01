set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph4.eps'
#set terminal wxt

#set polar
set xlabel 'ひずみ ε'
#set tmargin 5
set size square
set ylabel '応力 σ / Mpa'
#set xtics  100000
set xrange [-0.01:0.5]
set yrange [0:75]

set label "破断強さ" at 0.4707769-0.07,1.81769+1
set label "引張強さ" at 0.231009-0.03,68.9464+2

y(x)=12163*x
g(x)=12163*x-0.0130*0.002*10**6
plot "al3.dat" using 2:1 with lines notitle,\
"al3.dat" using 2:1 lt 1 notitle,\
sprintf("< echo ''%f %f''", 0.231009,68.9464) lt 7 notitle,\
sprintf("< echo ''%f %f''", 0.4707769,1.81769) lt 7 notitle


reset