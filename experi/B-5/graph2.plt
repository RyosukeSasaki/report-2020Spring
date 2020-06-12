set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph2.eps'
#set terminal wxt

set xlabel '周波数 / kHz'
set ylabel 'θ / rad'

set key right bottom

plot "ex1.txt" using 1:6 title "実験1", "ex2.txt" using 1:6 title "実験2", "ex3.txt" using 1:6 title "実験3","ex1.txt" using 1:6 notitle lt 1 smooth csplines, "ex2.txt" using 1:6 notitle lt 2 smooth csplines, "ex3.txt" using 1:6 notitle lt 3 smooth csplines

reset