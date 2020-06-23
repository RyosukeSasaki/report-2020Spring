set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph4.eps'
#set terminal wxt

set angle degrees
set polar
set grid polar
set size square
set samples 100000

unset xtics
unset ytics
set ttics 0,30 format "%g".GPVAL_DEGREE_SIGN
set border 0
set rlabel "I / μA"

set rrange[0:20]

set tmargin 5
set key right below

e(x)=atan2(a*cos(x-d),b*sin(x-d))
el(x)=sqrt((a*cos(e(x)))**2+(b*sin(e(x)))**2)
a=0.01
b=15.93737745
d=0

set theta clockwise top

plot "res3.dat" using 1:2 title "φ=0°","res4.dat" using 1:2 with lines notitle lt 1,el(t) title "楕円"

#plot "res3.dat" using 1:2 title "φ=0°" lt 1,"res4.dat" using 1:2 with lines notitle lt 1,"res3.dat" using 1:3 title "φ=15°" lt 2,"res4.dat" using 1:3 with lines notitle lt 2,"res3.dat" using 1:4 title "φ=30°" lt 3,"res4.dat" using 1:4 with lines notitle lt 3,"res3.dat" using 1:5 title "φ=45°" lt 4,"res4.dat" using 1:5 with lines notitle lt 4
reset
