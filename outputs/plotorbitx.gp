# this script plots an absolute orbit, a relative orbit
# and the dispersion from the model multiplied by eoffset.
# noffset is a scale factor, now fix to 1 :)

set xlabel "s [m]" offset 0,-1 font ',20'
set ylabel "x [mm]" font ',20' offset -3
set key left bottom font ',20'
set xtics 5 font ',20'
set mxtics 5
set ytics 2 font ',20' offset 0
set mytics 4
set lmargin 15
set rmargin 5
set bmargin 6
set mxtics 10
set mytics 10
set grid

set object rect from 86.6,-5 to 88.2,5

#approximated error bars from Tech.Notes...
f(x) = 5.0/2
g(x) = 50/2*x**-1.8
h(x) = (-0.018*x+1.17)/2

neoffset = 1.0
eoffset  = 3.164e-4


col_s=3
col_dy=13
col_dx=11

# x
#p 'TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat' u 1:2:(abs($2) <=3.6 ? f($2):(abs($2)<=8.7 ? g($2):h($2))) w yerrorbars lw 6 ti '', '' w lp lt 1 lw 6 ti 'TLe 20170221122201 REFORB 15mA inACC dispersione, absolute', \
#  '< paste TLe_20170221122344_662M667_dispersione.dat TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat'  u 1:2:(abs($5) <=3.6 ? f($5):(abs($5)<=8.7 ? g($5):h($5))) w yerrorbars lt 2 lw 6 ti '', '' w lp lt 2 lw 6 ti 'TLe 20170221122344 662M667 dispersione, relative', 0 lw 6 lt 3 ti ''

#p 'TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat' u 1:2:(abs($2) <=3.6 ? f($2):(abs($2)<=8.7 ? g($2):h($2))) w yerrorbars lw 6 ti '', '' w lp lt 1 lw 6 ti 'TLe 20170221122201 REFORB 15mA inACC dispersione, absolute', \
#  '< paste TLe_20170221122344_662M667_dispersione.dat TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat'  u 1:2:(abs($5) <=3.6 ? f($5):(abs($5)<=8.7 ? g($5):h($5))) w yerrorbars lt 2 lw 6 ti '', '' w lp lt 2 lw 6 ti 'TLe 20170221122344 662M667 dispersione, relative', 0 lw 6 lt 3 ti ''


# y
set xlabel "y [mm]" font ',20'
# with errorbars
#p 'TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat' u 1:3:(abs($3) <=3.6 ? f($3):(abs($3)<=8.7 ? g($3):h($3))) w yerrorbars lw 6 ti '', '' u 1:3 w lp lt 1 lw 6 ti 'TLe 20170221122201 REFORB 15mA inACC dispersione, absolute', \
#  '< paste TLe_20170221122344_662M667_dispersione.dat TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat'  u 1:3:(abs($6) <=3.6 ? f($6):(abs($6)<=8.7 ? g($6):h($6))) w yerrorbars lt 2 lw 6 ti '', '' u 1:3 w lp lt 2 lw 6 ti 'TLe 20170221122344 662M667 dispersione, relative', 0 lw 6 lt 3 ti ''
#without error bars
p 'TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat' u 1:2 w lp lt 6 lw 6 ti 'TLe 20170221122201 REFORB 15mA inACC dispersione, absolute', \
  '< paste TLe_20170221122344_662M667_dispersione.dat' u 1:2 w lp lt 7 lw 6 ti 'TLe 20170221122344 662M667 dispersione, relative', \
  0 lw 3 lt -1 dashtype 2 ti '', \
  '< grep -i BPS* tle_ae.tls' u (column(col_s)):(column(col_dx)*(neoffset*eoffset*1e3)) w lp lt 7 lw 3 dashtype 5




#'TLe_20170217145827_ore15.dat' u 1:2:(abs($2) <=3.6 ? f($2):(abs($2)<=8.7 ? g($2):h($2))) w yerrorbars lt 2 lw 6, '' w lp lt 2 lw 6 ti ''
