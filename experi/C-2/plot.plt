#!/usr/local/bin/gnuplot -persist

set terminal epscairo color font "VL PGothic,20" enhanced 
set output "zettai.eps"
set xlabel '{面積}'
set ylabel '{物質量}' 

plot "C-2_yxs.csv" using 1:2 title "エタノール"
replot "C-2_yxs.csv" using 3:4 title "1-プロパノール"
replot "C-2_yxs.csv" using 5:6 title "1-ブタノール"
replot "C-2_yxs.csv" using 7:8 title "1-ペンタノール"

unset terminal
