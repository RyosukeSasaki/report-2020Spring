set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph4.eps'
#set terminal wxt

set xlabel 'd / mm'

set size square
#set xrange [2:5]
#set yrange [0:6]
set ylabel '光路差'

f1(x)=abs(sqrt(x**2+1)-sqrt(x**2+9))
f2(x)=abs(sqrt(x**2+1)-sqrt(x**2+4))
f3(x)=abs(sqrt(x**2+1)-sqrt(x**2+2.5**2))
g(x)=0.6

plot f1(x) title "L_1=3",f3(x) title "L_1=2.5",f2(x) title "L_1=2", g(x) notitle
reset