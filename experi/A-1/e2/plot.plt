set terminal wxt
set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph2.eps'

set xlabel 'f / Hz'
set ylabel 'ゲイン / dB'
set size square
set samples 100000
set logscale x


#set xrange [1400:2000]
set yrange [-40:0]


#set arrow from  100,-3 to 100000,-3 nohead lw 1 dt (10,6) lc rgb "red"
#set arrow from  1480,0 to 1480,-40 nohead lw 1 dt (10,6) lc rgb "red"
#set label 1 at 78,-3 "-3"
#set label 2 at 1200,-42.6 "1480"

plot "data.dat" u 1:4 title '実験値',\
"data.dat" u 1:5 title '理論値' with lines

reset
