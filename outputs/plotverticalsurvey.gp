set xtics font ',18'
set ytics font ',18'

set lmargin -2
set bmargin -2
set xlabel 's [m]' font ',18' offset 0,-1
set ylabel 'y [m]' font ',18' offset -1
p 'survey.dat' u 3:7 w p lt 6 lw 6 ti ''
