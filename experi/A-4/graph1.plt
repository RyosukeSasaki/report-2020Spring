set terminal wxt
set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph2.eps'

set xlabel 'レイノルズ数Re'
set ylabel 'u_{rms}/U_c'
set size square

#set xrange [1000:7000]
#set yrange [1.3:1.8]

plot "data.dat" u 1:6 notitle ps 2 pt 4 lc 'blue'

reset
