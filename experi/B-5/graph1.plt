set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output 'graph1.eps'
#set terminal wxt

set xlabel '周波数 / kHz'
set ylabel '電流 I / mA'

o(x)=2*pi*x*10**3
g1(x)=1.2*10**3/sqrt(R1**2+(o(x)*L1-1/(o(x)*C1))**2)
R1=50
L1=50*10**(-3)
C1=33.1*10**(-9)

g2(x)=1.2*10**3/sqrt(R2**2+(o(x)*L2-1/(o(x)*C2))**2)
R2=150
L2=50*10**(-3)
C2=33.1*10**(-9)

g3(x)=1.2*10**3/sqrt(R3**2+(o(x)*L3-1/(o(x)*C3))**2)
R3=150
L3=75*10**(-3)
C3=33.1*10**(-9)

fit g1(x) "ex1.txt" using 1:2 via R1,L1,C1
fit g2(x) "ex2.txt" using 1:2 via R2,L2,C2
fit g3(x) "ex3.txt" using 1:2 via R3,L3,C3
plot "ex1.txt" using 1:2 title "実験1", "ex2.txt" using 1:2 title "実験2", "ex3.txt" using 1:2 title "実験3",g1(x) notitle lt 1,g2(x) notitle lt 2,g3(x) notitle lt 3

reset