// Quadrupole length and calibration constants
! units : K [m^-2], E [GeV], I [A]
! the factor 1e3 in the Energy units is put for compatibility with
! Antonio's lattice in MeV
quad: quadrupole;
// septum quadrupole component
sept_quad:multipole,knl :={0, kseptum};

! DAFNE Technical Note : C-17, 
! Transfer Line Quadrupoles (Type A), pag.~7
! K = (1/E) [ 2.5100e-2*I + 7.13e-3 ]
ltaq := 0.30;
c1ta = 2.51e-2;
c2ta = 7.13e-3;

! DAFNE Technical Note : C-17, 
! Transfer Line Quadrupoles (Type B), pag.~6
! K = (1/E) [ 3.3617e-2*I + 1.7292e-2 ]
 ltbq := 0.20;
 c1tb = 3.3617e-2;
 c2tb = 1.7292e-2;

! DAFNE Technical Note : MM-4, also MM-10, C-18
! Measurements on Tesla Quadrupole Prototype for the
!   DAFNE Accumulator and Main Rings, pag.~3
! Nominal working point : 8.118[T/m] @ 262.28[A]
! Good field region : 0.3[m]
! Fitting Figure~2 with engauge-digitizer+gnuplot : gives f(x)=a*x+b
! Final set of parameters            Asymptotic Standard Error
! =======================            ==========================
! a               = 0.0311115        +/- 0.000103     (0.3312%)
! b               = -0.0110217       +/- 0.01787      (162.1%)
! K1 = GradB*I/Brho
! K1 = 0.0311115*I*clight/(1e9*E) + 0.01*clight*I/(1e9*E)
!c1s = 3.111e-2*clight/1e9;
!c2s = 1e-2*clight/1e9;
lsq  := 0.29; // short quadrupoles
c1s  := 9.1277e-3; // values from Antonio seem OK
c2s  := 4.53e-3;

! DAFNE Technical Note : MM-24, C-18
! Field quality of the large quadrupoles for the dafne main rings
! Nominal working point : 
! Magnetic length : 0.30[m]
! Fitting Figure~5 with engauge-digitizer+gnuplot : gives f(x)=a*x+b
! K1 = GradB*I/Brho
! K1 = ...*I*clight/(1e9*E) + ...*clight*I/(1e9*E)
llq  := 0.30;   // large quadrupoles
c1l  := 16.963e-3;// values from Antonio seem OK
c2l  := 5.62e-3;

! DAFNE Technical Note : MM-22, C-18
! The large aperture quadrupole prototype for the 
!   DAFNE Interaction Regions, pag.~6
! Nominal working point : 6.2[T/m] @ 459.8[A]
! Magnetic length : 0.4[m]
! Fitting Figure~5 with engauge-digitizer+gnuplot : gives f(x)=a*x+b
! K1 = GradB*I/Brho
! K1 = ...*I*clight/(1e9*E) + ...*clight*I/(1e9*E)
lla  := 0.38;    // large aperture quadrupoles
c1la := 3.9786e-3;  // values from Antonio seem OK
c2la := 2.72e-3;
