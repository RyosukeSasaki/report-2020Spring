set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph8.eps'
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

set rrange[0:20]

set tmargin 5
set key right below

e(x,d,a,b)=atan2(a*cos(x-d),b*sin(x-d))

e0(x)=sqrt((a0*cos(e(x,d0,a0,b0)))**2+(b0*sin(e(x,d0,a0,b0)))**2)
a0=0.01
b0=15.93737745
d0=0

e1(x)=sqrt((a1*cos(e(x,d1,a1,b1)))**2+(b1*sin(e(x,d1,a1,b1)))**2)
a1=3.741657387
b1=15.58845727
d1=0

e2(x)=sqrt((a2*cos(e(x,d2,a2,b2)))**2+(b2*sin(e(x,d2,a2,b2)))**2)
a2=7.745966692
b2=14.17744688
d2=0

e3(x)=sqrt((a3*cos(e(x,d3,a3,b3)))**2+(b3*sin(e(x,d3,a3,b3)))**2)
a3=11.13552873
b3=11.66190379
d3=0

set theta clockwise top


plot e0(t) title "φ=0°",e1(t) title "φ=15°",e2(t) title "φ=30°",e3(t) title "φ=45°"
reset
