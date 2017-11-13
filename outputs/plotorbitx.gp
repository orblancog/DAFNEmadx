# this script plots an absolute orbit, a relative orbit
# and the dispersion from the model multiplied by eoffset.
# noffset is a scale factor, now fix to 1 :)

unset xrange
unset yrange

set yrange [-10:12]
set xrange [0:70]

set object rect from 86.6,-5 to 88.2,5 # the sextupole location

neoffset = 0.3
eoffset  = 3.164e-4

col_s=3
col_dy=13
col_dx=11

filabs = 'TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat'
filrel = 'TLe_20170221122344_662M667_dispersione.dat'
#filtwiss = '

set multiplot

set size 1,0.2
set origin 0,0.8
# Elements on the to plot #
# 18 -> angle
# 19 -> k1l
# 20 -> k2l
# 4 -> l
s0=0
col_s = 3
col_l = 4
col_angle = 15
col_k1l = 16
col_k2l = 17
unset yrange
unset ylabel
unset ytics
set style fill solid
p '< grep -i SBEND tle_ae.tls'      u (column(col_s)-s0-column(col_l)/2):(column(col_angle) != 0 ? -0.5:1/0):(column(col_l)) w boxes axis x1y1 lt 3 lw 1 ti '',\
  '< grep -i SBEND tle_ae.tls'      u (column(col_s)-s0-column(col_l)/2):(column(col_angle) != 0 ?  0.5:1/0):(column(col_l)) w boxes axis x1y1 lt 3 lw 1 ti '',\
  '< grep -i QUADRUPOLE tle_ae.tls' u (column(col_s)-s0-column(col_l)/2):(column(col_k1l)/abs(column(col_k1l))):(column(col_l)) w boxes axis x1y1 lt 1 lw 1 ti '', \
  '< grep -i SEXTUPOLE tle_ae.tls'  u (column(col_s)-s0-column(col_l)/2):(column(col_k2l)/abs(column(col_k2l))):(column(col_l)) w boxes axis x1y1 lt 2 lw 1 ti '',\
  0 lw 3 lt -1 dashtype 2 ti ''


set size 1,0.4
set origin 0,0.4

set xlabel "s [m]" offset 0,-1 font ',20'
set ylabel "x [mm]" font ',20' offset -3
set key top right font ',20'
set xtics 5 font ',20'
set mxtics 5
set ytics 3 font ',20' offset 0
set mytics 4
set lmargin 15
set rmargin 5
set bmargin 6
set mxtics 10
set mytics 10
set grid
# x
p filabs u 1:2 w lp lt 6 lw 6 ti 'absolute orbit 20170221 15mA in ACC', \
  filrel u 1:2 w lp lt 7 lw 6 ti 'dispersive orbit 20170221 662M667', \
  0 lw 3 lt -1 dashtype 2 ti '', \
  '< grep -i BPS* tle_ae.tls' u (column(col_s)):(column(col_s)<30 ? \
  (column(col_dx)*(neoffset*eoffset*1e3)) : 1/0) \
  w lp lt 7 lw 3 dashtype '.' ti '{/Symbol h}_x.{/Symbol d} today ',\
  '< grep -i BPS* tle_ae.tls' u (column(col_s)):(column(col_s)<30 ? \
  1/0:-1*(column(col_dx)*(neoffset*eoffset*1e3))) \
  w lp lt 7 lw 3 dashtype '.-____' ti '-{/Symbol h}_x.{/Symbol d} today '


set size 1,0.4
set origin 0,0
unset yrange
set ytics 1
set mytics 5
# x
p \
  filrel u 1:2 w lp lt 7 lw 6 ti 'dispersive orbit 20170221 662M667', \
  0 lw 3 lt -1 dashtype 2 ti '', \
  '< grep -i BPS* tle_ae.tls' u (column(col_s)):(column(col_s)<30 ? \
  (column(col_dx)*(neoffset*eoffset*1e3)) : 1/0) \
  w lp lt 7 lw 3 dashtype '.' ti '{/Symbol h}_x.{/Symbol d} today ',\
  '< grep -i BPS* tle_ae.tls' u (column(col_s)):(column(col_s)<30 ? \
  1/0:-1*(column(col_dx)*(neoffset*eoffset*1e3))) \
  w lp lt 7 lw 3 dashtype '.-____' ti '-{/Symbol h}_x.{/Symbol d} today '


unset multiplot