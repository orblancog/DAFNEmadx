// ===========================================
// ELECTRON RING SEXTUPOLES DEFINITION
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

SXTKL100 := (csel100/ABS(csel100))*(cssx1*ABS(csel100)+cssx2)/ns;
SXTKL101 := (csel101/ABS(csel101))*(cssx1*ABS(csel101)+cssx2)/ns;
SXTKL102 := (csel102/ABS(csel102))*(csx1*ABS(csel102)+csx2)/nl;
SXTKL103 := (csel103/ABS(csel103))*(csx1*ABS(csel103)+csx2)/nl;

//SXTKL104 := (csel104/ABS(csel104))*(cssx1*ABS(csel104)+cssx2)/ns
SXTKL104 := (csel104/ABS(csel104))*(ccw0+ccw1*ABS(csel104)+ccw2*
            ABS(csel104)*ABS(csel104)+ccw3*ABS(csel104)*
            ABS(csel104)*ABS(csel104))/(br0*lsl);

SXTKS101 := (cses101/ABS(cses101))*(ccw0+ccw1*ABS(cses101)+ccw2*
            ABS(cses101)*ABS(cses101)+ccw3*ABS(cses101)*
            ABS(cses101)*ABS(cses101))/(br0*lsl);

//SXTKS101 := (cses101/ABS(cses101))*(cssx1*ABS(cses101)+cssx2)/ns;
SXTKS102 := (cses102/ABS(cses102))*(csx1*ABS(cses102)+csx2)/nl;
SXTKS103 := (cses103/ABS(cses103))*(csx1*ABS(cses103)+csx2)/nl;
SXTKS104 := (cses104/ABS(cses104))*(cssx1*ABS(cses104)+cssx2)/ns;

SXTKS201 := (cses201/ABS(cses201))*(cssx1*ABS(cses201)+cssx2)/ns;
SXTKS202 := (cses202/ABS(cses202))*(csx1*ABS(cses202)+csx2)/nl;
SXTKS203 := (cses203/ABS(cses203))*(csx1*ABS(cses203)+csx2)/nl;
SXTKS204 := (cses204/ABS(cses204))*(cssx1*ABS(cses204)+cssx2)/ns;

SXTKL201 := (csel201/ABS(csel201))*(cssx1*ABS(csel201)+cssx2)/ns;
SXTKL202 := (csel202/ABS(csel202))*(csx1*ABS(csel202)+csx2)/nl;
SXTKL203 := (csel203/ABS(csel203))*(csx1*ABS(csel203)+csx2)/nl;
SXTKL204 := (csel204/ABS(csel204))*(cssx1*ABS(csel204)+cssx2)/ns;

// =====
// SEXTUPOLES
// =====

SXPEL100: SEXTUPOLE, L := lss, K2 := SXTKL100;

SXPEL101: SEXTUPOLE, L := lss, K2 := SXTKL101;
SXPEL102: SEXTUPOLE, L := lsl, K2 := SXTKL102;
SXPEL103: SEXTUPOLE, L := lsl, K2 := SXTKL103;

// SXPEL104: SEXTUPOLE, L := lss/2, K2 := SXTKL104;
SXPEL104: SEXTUPOLE, L := lsl, K2 := SXTKL104;  // CW SXP
// SXPES101: SEXTUPOLE, L := lss/2, K2 := SXTKS101;
SXPES101: SEXTUPOLE, L := lsl, K2 := SXTKS101;  // CW SXP

SXPES102: SEXTUPOLE, L := lsl, K2 := SXTKS102;
SXPES103: SEXTUPOLE, L := lsl, K2 := SXTKS103;
SXPES104: SEXTUPOLE, L := lss, K2 := SXTKS104;

SXPES201: SEXTUPOLE, L := lss, K2 := SXTKS201;
SXPES202: SEXTUPOLE, L := lsl, K2 := SXTKS202;
SXPES203: SEXTUPOLE, L := lsl, K2 := SXTKS203;
SXPES204: SEXTUPOLE, L := lss, K2 := SXTKS204;

SXPEL201: SEXTUPOLE, L := lss, K2 := SXTKL201;
SXPEL202: SEXTUPOLE, L := lsl, K2 := SXTKL202;
SXPEL203: SEXTUPOLE, L := lsl, K2 := SXTKL203;
SXPEL204: SEXTUPOLE, L := lss, K2 := SXTKL204;

return
