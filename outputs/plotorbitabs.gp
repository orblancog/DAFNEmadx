# this script plots an absolute orbit, a relative orbit
# and the dispersion from the model multiplied by eoffset.
# noffset is a scale factor, now fix to 1 :)

unset xrange
unset yrange

set yrange [-10:12]
set xrange [0:100]

col_s=3
col_dy=13
col_dx=11

#filabs = 'TLe_20170221122201_REFORB_15mA_inACC_dispersione.dat'
filabs = 'TLe_20171116170332_REF_UFSe.dat'
frefti = 'TLe 2017/02/21 REF UFS'

#filrel = 'TLe_20170221122344_662M667_dispersione.dat'
#frelti = 'dispersive orbit 20170221 MR RF 662M667'
filrel = 'TLe_20171116170432_DIPACC_615m614e.dat'
frelti = 'TLe 2017/02/21 DIP ACC 615-614 A'
#filrel  = 'TLe_20171116170550_DIPACC_613m614e.dat'
#frelti  = 'dispersive orbit 20170221 DIP ACC 613-614 A'

neoffset = 1.0
eoffset  = 0.7e-3#0.3164e-4
#ftwiss = 'tle_ae.tls'
ftwissti = '0.7x10^{-3} . {/Symbol h}_y model today'


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
unset xlabel
set style fill solid
p '< grep -i SBEND tle_ae.tls'      u (column(col_s)-s0-column(col_l)/2):(column(col_angle) != 0 ? -0.5:1/0):(column(col_l)) w boxes axis x1y1 lt 3 lw 1 ti '',\
  '< grep -i SBEND tle_ae.tls'      u (column(col_s)-s0-column(col_l)/2):(column(col_angle) != 0 ?  0.5:1/0):(column(col_l)) w boxes axis x1y1 lt 3 lw 1 ti '',\
  '< grep -i QUADRUPOLE tle_ae.tls' u (column(col_s)-s0-column(col_l)/2):(column(col_k1l)/abs(column(col_k1l))):(column(col_l)) w boxes axis x1y1 lt 1 lw 1 ti '', \
  '< grep -i SEXTUPOLE tle_ae.tls'  u (column(col_s)-s0-column(col_l)/2):(column(col_k2l)/abs(column(col_k2l))):(column(col_l)) w boxes axis x1y1 lt 2 lw 1 ti '',\
  0 lw 3 lt -1 dashtype 2 ti ''


set size 1,0.3
set origin 0,0.5
set ylabel "x [mm]" font ',20' offset -3
set key top left font ',20'
set xtics 5 font ',20'
set mxtics 5
set ytics 1 font ',20' offset 0
set mytics 5
set lmargin 15
set rmargin 5
set bmargin 6
set mxtics 10
set mytics 10
set grid
# x rel
unset yrange
set yrange [-2:2]
set ytics 1
set mytics 5
# x rel
unset xlabel

ftoplot = '< paste '.filrel.' '.filabs

p \
  ftoplot u 1:($2+$5) w lp lt 7 lw 6 ti frelti, \
  ftoplot u 1:($5) w lp lt 8 lw 3 dashtype '.' ti frefti, \
  0 lw 3 lt -1 dashtype 2 ti ''

  # '< grep -i BPS* tle_ae.tls' u (column(col_s)):(column(col_s)<30 ? \
  # (column(col_dx)*(neoffset*eoffset*1e3)) : 1/0) \
  # w lp lt 7 lw 3 dashtype '.' ti ftwissti,\
  # '< grep -i BPS* tle_ae.tls' u (column(col_s)):(column(col_s)<30 ? \
  # 1/0:-1*(column(col_dx)*(neoffset*eoffset*1e3))) \
  # w lp lt 7 lw 3 dashtype '.-____' ti '-'.ftwissti


set size 1,0.3
set origin 0,0.25
unset yrange
set ytics 1
set mytics 5
set ylabel "y [mm]" font ',20' offset -3
set yrange [-2:2]
# y rel
unset xlabel
set key top left font ',20'
p \
  ftoplot u 1:($3+$6) w lp lt 7 lw 6 ti frelti, \
  ftoplot u 1:($6) w lp lt 8 lw 3 dashtype '.' ti frefti, \
  0 lw 3 lt -1 dashtype 2 ti ''

#  '< grep -i BPS* tle_ae.tls' u (column(col_s)):(column(col_dy)*(neoffset*eoffset*1e3)) \
#  w lp lt 7 lw 3 dashtype '.' ti ftwissti


set size 1,0.3
set origin 0,0
unset yrange
set ytics 1
set mytics 5
set yrange [0:4]
set ylabel "sqrt(x^2+y^2)" font ',20' offset -3
set xlabel "s [m]" offset 0,-1 font ',20'
unset key
set key top left font ',20'
p \
  ftoplot u 1:(sqrt(($2+$5)**2+($3+$6)**2)) w lp lt 7 lw 6 ti frelti, \
  ftoplot u 1:(sqrt(($5)**2+($6)**2)) w lp lt 8 lw 3 dashtype '.' ti frefti

#  '< grep -i BPS* tle_ae.tls' u (column(col_s)):\
#  (sqrt((column(col_dx)*column(col_dx)+column(col_dy)*column(col_dy)))*(neoffset*eoffset*1e3)) \
  w lp lt 7 lw 3 dashtype '.' ti ftwissti

unset multiplot
