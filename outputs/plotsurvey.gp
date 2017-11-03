# this plot compares the output of a survey with the data 
# from the mechanical design


set size ratio 1.45
scalex=1e-3
scaley=scalex
scalexy=scaley


set xlabel "x [m]" font ',18' offset 0
set ylabel "z [m]" font ',18' offset -3

set xtics 10 font ',18'
set mxtics 2
set ytics 10 font ',18'
set mytics 2

set key top left font ',18'

plot \
 'TLe_survey.dat' u 6:8 w p lw 9 lt 8 ti "TLe Survey MAD-X", \
 'TL_design_mec_2017SET20.dat' u ($2*scalex):($3*scaley) w p lw 6 lt 7 ti "TL design", \
 'TL_measured_mec_2017SET20.dat' u ($4*scalex):($5*scaley) w p lt 6 lw 20 ti 'TL measured'
