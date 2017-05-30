// ===========================================
// POSITRON RING SEXTUPOLES DEFINITION
// ===========================================
//
// Notes:
// ------

// Large Sestupole Calibration Constants 

lsl := 0.15;
lss := 0.10;

nl := lsl*en;
ns := lss*en;

// Short Sestupole Calibration Constants [m**-3]

cssx1 := 19.74;
cssx2 := 32.8;

// Large Sestupole Calibration Constants [m**-3] I < 150 A
csx1 := 51.177;
csx2 := 49.34;

// Large Sestupole Calibration Constants   150 A < I < 250 A
ccw0 := 11.5;
ccw1 := -0.053007;
ccw2 := 1.4809E-03;
ccw3 := -3.2758E-06;


// Sextupole  k**2 [m**-3] as a function of the energy [MeV] and
// power supply current [A]

SXTKL100 := (cspl100/ABS(cspl100))*(cssx1*ABS(cspl100)+cssx2)/ns;
SXTKL101 := (cspl101/ABS(cspl101))*(cssx1*ABS(cspl101)+cssx2)/ns;
SXTKL102 := (cspl102/ABS(cspl102))*(csx1*ABS(cspl102)+csx2)/nl;
SXTKL103 := (cspl103/ABS(cspl103))*(csx1*ABS(cspl103)+csx2)/nl;

//SXTKL104 := (cspl104/ABS(cspl104))*(cssx1*ABS(cspl104)+cssx2)/ns
SXTKL104 := (cspl104/ABS(cspl104))*(ccw0+ccw1*ABS(cspl104)+ccw2*
            ABS(cspl104)*ABS(cspl104)+ccw3*ABS(cspl104)*
            ABS(cspl104)*ABS(cspl104))/(br0*lsl);

SXTKS101 := (csps101/ABS(csps101))*(ccw0+ccw1*ABS(csps101)+ccw2*
            ABS(csps101)*ABS(csps101)+ccw3*ABS(csps101)*
            ABS(csps101)*ABS(csps101))/(br0*lsl);

//SXTKS101 := (csps101/ABS(csps101))*(cssx1*ABS(csps101)+cssx2)/ns;
SXTKS102 := (csps102/ABS(csps102))*(csx1*ABS(csps102)+csx2)/nl;
SXTKS103 := (csps103/ABS(csps103))*(csx1*ABS(csps103)+csx2)/nl;
SXTKS104 := (csps104/ABS(csps104))*(cssx1*ABS(csps104)+cssx2)/ns;

SXTKS201 := (csps201/ABS(csps201))*(cssx1*ABS(csps201)+cssx2)/ns;
SXTKS202 := (csps202/ABS(csps202))*(csx1*ABS(csps202)+csx2)/nl;
SXTKS203 := (csps203/ABS(csps203))*(csx1*ABS(csps203)+csx2)/nl;
SXTKS204 := (csps204/ABS(csps204))*(cssx1*ABS(csps204)+cssx2)/ns;

SXTKL201 := (cspl201/ABS(cspl201))*(cssx1*ABS(cspl201)+cssx2)/ns;
SXTKL202 := (cspl202/ABS(cspl202))*(csx1*ABS(cspl202)+csx2)/nl;
SXTKL203 := (cspl203/ABS(cspl203))*(csx1*ABS(cspl203)+csx2)/nl;
SXTKL204 := (cspl204/ABS(cspl204))*(cssx1*ABS(cspl204)+cssx2)/ns;

// =====
// SEXTUPOLES
// =====

SXPPL100: SEXTUPOLE, L := lss, K2 := SXTKL100;

SXPPL101: SEXTUPOLE, L := lss, K2 := SXTKL101;
SXPPL102: SEXTUPOLE, L := lsl, K2 := SXTKL102;
SXPPL103: SEXTUPOLE, L := lsl, K2 := SXTKL103;

// SXPPL104: SEXTUPOLE, L := lss/2, K2 := SXTKL104;
SXPPL104: SEXTUPOLE, L := lsl, K2 := SXTKL104;  // CW SXP
// SXPPS101: SEXTUPOLE, L := lss/2, K2 := SXTKS101;
SXPPS101: SEXTUPOLE, L := lsl, K2 := SXTKS101;  // CW SXP

SXPPS102: SEXTUPOLE, L := lsl, K2 := SXTKS102;
SXPPS103: SEXTUPOLE, L := lsl, K2 := SXTKS103;
SXPPS104: SEXTUPOLE, L := lss, K2 := SXTKS104;

SXPPS201: SEXTUPOLE, L := lss, K2 := SXTKS201;
SXPPS202: SEXTUPOLE, L := lsl, K2 := SXTKS202;
SXPPS203: SEXTUPOLE, L := lsl, K2 := SXTKS203;
SXPPS204: SEXTUPOLE, L := lss, K2 := SXTKS204;

SXPPL201: SEXTUPOLE, L := lss, K2 := SXTKL201;
SXPPL202: SEXTUPOLE, L := lsl, K2 := SXTKL202;
SXPPL203: SEXTUPOLE, L := lsl, K2 := SXTKL203;
SXPPL204: SEXTUPOLE, L := lss, K2 := SXTKL204;

return
