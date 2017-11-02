set size ratio 1.45

set xlabel "x [m]" font ',18' offset 0
set ylabel "y [m]" font ',18' offset -3

set xtics 10 font ',18'
set mxtics 2
set ytics 10 font ',18'
set mytics 2

set key top left font ',18'
set datafile separator ','
! awk '{print $6","$8}' TLe_survey.dat > junk
plot 'TL_dafnepos2017.dat.csv' u ($2/1e3):($3/1e3) w p lw 6 lt 6 ti "TL Pelegrino et al. 20/09/2017", 'junk' u 1:2 w p lw 3 lt 7 ti "TLe Survey MAD-X"


