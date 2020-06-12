set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph6_1.eps'
#set terminal wxt

set xrange [2:5]
set xlabel '周波数 / kHz'
set ylabel 'V_L,V_C / V'



plot "ex3.txt" using 1:4 title "V_L", "ex3.txt" using 1:5 title "V_C", "ex3.txt" using 1:5 notitle smooth csplines lt 2,"ex3.txt" using 1:4 notitle smooth csplines lt 1

reset

set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph6_2.eps'
#set terminal wxt

set xrange [2:5]
set xlabel '周波数 / kHz'
set ylabel 'V_R / V'



plot "ex3.txt" using 1:3 title "V_R", "ex3.txt" using 1:3 notitle smooth csplines lt 1

reset