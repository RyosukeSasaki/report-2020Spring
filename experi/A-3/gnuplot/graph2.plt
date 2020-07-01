set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph2.eps'
#set terminal wxt

#set polar
set xlabel 'ひずみ ε'
#set tmargin 5
set size square
set ylabel '応力 σ / Mpa'
#set xtics  100000
#set xrange [0:500000]
set yrange [0:450]

set label "比例限度" at 0.006789+0.005, 119
set label "引張強さ" at 0.27957-0.03,412.6+12
set label "上降伏点" at 0.033175237-0.03,328.2570701+12
set label "下降伏点" at 0.03330005,234.7535411-12
set label "破断強さ" at 0.480121817-0.05,252.076363-12

y(x)=17909*x
plot "ste3.dat" using 2:1 with lines notitle,\
"ste3.dat" using 2:1 lt 1 notitle,\
y(x) lt 2  dt (10,5) notitle,\
sprintf("< echo ''%f %f''", 0.006789,119) lt 7 notitle,\
sprintf("< echo ''%f %f''", 0.27957,412.6) lt 7 notitle,\
sprintf("< echo ''%f %f''", 0.03330005,234.7535411) lt 7 notitle,\
sprintf("< echo ''%f %f''", 0.033175237,328.2570701) lt 7 notitle,\
sprintf("< echo ''%f %f''", 0.480121817,252.076363) lt 7 notitle

reset