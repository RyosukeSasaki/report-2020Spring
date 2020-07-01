set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph1.eps'
#set terminal wxt

#set polar
set xlabel '試験前の標点の位置 / mm'
#set tmargin 5
set size square
#set y2range [4:8]
set ytics 1 nomirror
set y2tics 1 nomirror
set ylabel '伸び / mm'
set y2label '直径 / mm'

plot "ste1.dat" using 1:2 title "伸び" axis x1y1 smooth acspline,\
"ste2.dat" using 1:2 title "直径" axis x1y2 smooth acspline,\
"ste1.dat" using 1:2 axis x1y1 notitle lt 1,\
"ste2.dat" using 1:2 axis x1y2 notitle lt 2,\


reset