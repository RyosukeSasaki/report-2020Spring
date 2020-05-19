#ymin=-19
#ymax=9

##set terminal wxt
#set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
#set output "graph2.eps"

#set yrange [ymin:ymax]
#set xrange [-2:1]
#set size square
#set xlabel "ln(c_2/c_1)   /"
#set ylabel "起電力   /   mV"
#set key box lt 0
#set key left top

#set style arrow 1 nohead lt 0

#c(x) = (x*64*0.1*4 + x*96*0.1*4 + 1.0*23*0.1 + 0.5*96*0.1*4)/(100 + x*160*0.1 + 0.5*142*0.1)/2
#f(x) = exp(-(4*0.5101*sqrt(c(x)))/(1+10**(-6)*0.3285*sqrt(c(x))))
#h(x) = 1000/(1000+x*160+0.5*142)
#g(x) = h(x)*(1+0.001*160*(x*160*0.1)/(100+x*160*0.1+0.5*142*0.1))*f(x)
#i(x) = 12.71*x
#c2(x) = 10*exp(x)
#j(x)=12.71*x+log(sqrt(g(c2(x))/g(0.1)))
##set label "(0.1, 0.4440)" at 0.1+0.001,g(0.1)+0.004
##set label "(0.025, 0.4769)" at 0.025+0.001,g(0.025)+0.004
##set label "(0.2, 0.4074)" at 0.2+0.001,g(0.2)+0.004
##set label point pt 4 at -1.386,-18.348
##set label point pt 4 at -0.6931,-9.664
##set label point pt 4 at 0.4055,4.241
##set label point pt 4 at 0.6931,7.769

##set arrow 1 from 0.1,ymin to 0.1,g(0.1) arrowstyle 1
##set arrow 2 from 0.025,ymin to 0.025,g(0.025) arrowstyle 1
##set arrow 3 from 0.2,ymin to 0.2,g(0.2) arrowstyle 1

#plot "data.dat" using 2:1 title "実験値" pt 4, i(x) title "(13)式",j(x) title "理論曲線"

#reset

ymin=-19
ymax=9
c1=0.1

#set terminal wxt
set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output "graph2.eps"

set yrange [ymin:ymax]
set xrange [-2:1]
set size square
set xlabel "ln(c_2/c_1)   /"
set ylabel "起電力   /   mV"
set key box lt 0
set key left top

set style arrow 1 nohead lt 0

Im(x) = (x*64*0.1*4 + x*96*0.1*4 + 1.0*23*0.1 + 0.5*96*0.1*4)/(100 + x*160*0.1 + 0.5*142*0.1)/2
y(x) = exp(-(4*0.5101*sqrt(Im(x)))/(1+10**(-6)*0.3285*sqrt(Im(x))))

#d0/d
d(x) = 1000/(1000+x*160+0.5*142)

#γ
g(x) = d(x)*(1+0.001*160*(x*160*0.1)/(100+x*160*0.1+0.5*142*0.1))*y(x)

#(13)式
i(x) = 12.71*x

#x軸(ln(c2/c1))とc2の変換
c2(x) = exp(x)/c1

#理論曲線
r(x)=12.71*x+log(sqrt(g(c2(x))/g(c1)))

plot "data.dat" using 2:1 title "実験値" pt 4, i(x) title "(13)式",r(x) title "理論曲線"

reset