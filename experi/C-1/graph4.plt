ymin=-1
ymax=1

set terminal postscript eps enhanced color "GothicBBB-Medium-UniJIS-UTF8-H"
set output "asset/graph4.eps"

set yrange [ymin:ymax]
set xrange [0:100]
set size square
set xlabel "濃度   /   g L^{-1}"
set ylabel "σ_{A±}   /"
set key box lt 0
set key left top

g(x) = log10(x/(x-1))
h(x) = log10(x/(x+1))

plot g(x) title "σ_{A+}", h(x) title "σ_{A-}"

reset