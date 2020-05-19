ymin=0.36
ymax=0.5

#set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
#set output "graph.eps"

set yrange [ymin:ymax]
set xrange [0:0.26]
set size square
set xlabel "CuSO_4濃度   /   mol L^{-1}"
set ylabel "平均活量係数γ_{±}   /"
set key box lt 0
set key left top

set style arrow 1 nohead lt 0

c(x) = (x*64*0.1*4 + x*96*0.1*4 + 1.0*23*0.1 + 0.5*96*0.1*4)/(100 + x*160*0.1 + 0.5*142*0.1)/2
f(x) = exp(-(4*0.5101*sqrt(c(x)))/(1+10**(-6)*0.3285*sqrt(c(x))))
h(x) = 1000/(1000+x*160+0.5*142)
g(x) = h(x)*(1+0.001*160*(x*160*0.1)/(100+x*160*0.1+0.5*142*0.1))*f(x)

set label "(0.1, 0.4440)" at 0.1+0.001,g(0.1)+0.004
set label "(0.025, 0.4769)" at 0.025+0.001,g(0.025)+0.004
set label "(0.2, 0.4074)" at 0.2+0.001,g(0.2)+0.004
set label point pt 4 at 0.1,g(0.1)
set label point pt 4 at 0.025,g(0.025)
set label point pt 4 at 0.2,g(0.2)

set arrow 1 from 0.1,ymin to 0.1,g(0.1) arrowstyle 1
set arrow 2 from 0.025,ymin to 0.025,g(0.025) arrowstyle 1
set arrow 3 from 0.2,ymin to 0.2,g(0.2) arrowstyle 1

plot g(x) title "平均活量係数γ_{±}"

reset