// Correctors
// modified by C.M Feb. 2008

csqr  := 0.210/BEAM_ENE;
crctx := 0.186/BEAM_ENE;
crcty := 0.173/BEAM_ENE;
clmbx := 0.00681/BEAM_ENE;
clmby := 0.0161/BEAM_ENE;
cox   := 0.0649/BEAM_ENE;
coy   := 0.0435/BEAM_ENE;
cskw  := 0.0173/BEAM_ENE;

// short correctors

 hkps101 := 1.;
 hkps102 := 1.;
 hkps103 := 1.;
 hkps104 := 1.;
 hkps105 := 1.;
 hkps106 := 1.;

 vkps101 := 1.;
 vkps102 := 1.;
 vkps103 := 1.;
 vkps104 := 1.;
 vkps105 := 1.;
 vkps106 := 1.;

 hkps201 := 1.;
 hkps202 := 1.;
 hkps203 := 1.;
 hkps204 := 1.;
 hkps205 := 1.;

 vkps201 := 1.;
 vkps202 := 1.;
 vkps203 := 1.;
 vkps204 := 1.;
 vkps205 := 1.;

// long

 hkpl101 := 1.;
 hkpl102 := 1.;
 hkpl103 := 1.;
 hkpl104 := 1.;
 hkpl105 := 1.;
 hkpl106 := 1.;

 vkpl101 := 1.;
 vkpl102 := 1.;
 vkpl103 := 1.;
 vkpl104 := 1.;
 vkpl105 := 1.;
 vkpl106 := 1.;

 hkpl201 := 1.;
 hkpl202 := 1.;
 hkpl203 := 1.;
 hkpl204 := 1.;
 hkpl205 := 1.;
 hkpl206 := 1.;

 vkpl201 := 1.;
 vkpl202 := 1.;
 vkpl203 := 1.;
 vkpl204 := 1.;
 vkpl205 := 1.;
 vkpl206 := 1.;


// lambertson
 hkpi201  := 1.;
 hkpi202  := 1.;
 hkpi101  := 1.;
 hkpi102  := 1.;

 vkpi201 := 1.;
 vkpi202 := 1.;
 vkpi101 := 1.;
 vkpi102 := 1.;

// 'c'

 hkcpl101 := 1.;
 hkcps101 := 1.;
 hkcps201 := 1.;
 hkcpl201 := 1.;

 vkcpl101 := 1.;
 vkcps101 := 1.;
 vkcps201 := 1.;
 vkcpl201 := 1.;

// skew

CHVPS101:kicker,hkick:=hkps101*cskw*ihhps101,vkick:=vkps101
                *cskw*ivvps101;
CHVPS104:kicker,hkick:=hkps104*cskw*ihhps104,vkick:=vkps104
                *cskw*ivvps104;
CHVPS202:kicker,hkick:=hkps202*cskw*ihhps202,vkick:=vkps202
                *cskw*ivvps202;
CHVPS205:kicker,hkick:=hkps205*cskw*ihhps205,vkick:=vkps205
                *cskw*ivvps205;
CHVPL103:kicker,hkick:=hkpl103*cskw*ihhpl103,vkick:=vkpl103
                *cskw*ivvpl103;
CHVPL106:kicker,hkick:=hkpl106*cskw*ihhpl106,vkick:=vkpl106
                *cskw*ivvpl106;
CHVPL201:kicker,hkick:=hkpl201*cskw*ihhpl201,vkick:=vkpl201
                *cskw*ivvpl201;
CHVPL204:kicker,hkick:=hkpl204*cskw*ihhpl204,vkick:=vkpl204
                *cskw*ivvpl204;

// square

CHVPL101:kicker,l:=0.10/2.,hkick:=hkpl101*csqr*ihhpl101,vkick:=vkpl101*csqr*ivvpl101;
CHVPL102:kicker,l:=0.10/2.,hkick:=hkpl102*csqr*ihhpl102,vkick:=vkpl102*csqr*ivvpl102;
CHVPS105:kicker,l:=0.10/2.,hkick:=hkps105*csqr*ihhps105,vkick:=vkps105*csqr*ivvps105;
CHVPS106:kicker,l:=0.10/2.,hkick:=hkps106*csqr*ihhps106,vkick:=vkps106*csqr*ivvps106;
CHVPS201:kicker,l:=0.10/2.,hkick:=hkps201*csqr*ihhps201,vkick:=vkps201*csqr*ivvps201;
CHVPL205:kicker,l:=0.10/2.,hkick:=hkpl205*csqr*ihhpl205,vkick:=vkpl205*csqr*ivvpl205;
CHVPL206:kicker,l:=0.10/2.,hkick:=hkpl206*csqr*ihhpl206,vkick:=vkpl206*csqr*ivvpl206;

// rectangular

CHVPS102:kicker,l:=0.10/2.,hkick:=hkps102*crctx*ihhps102,
                          vkick:=vkps102*crcty*ivvps102;
CHVPS103:kicker,l:=0.10/2.,hkick:=hkps103*crctx*ihhps103,
                          vkick:=vkps103*crcty*ivvps103;
CHVPS203:kicker,l:=0.10/2.,hkick:=hkps203*crctx*ihhps203,
                          vkick:=vkps203*crcty*ivvps203;
CHVPS204:kicker,l:=0.10/2.,hkick:=hkps204*crctx*ihhps204,
                          vkick:=vkps204*crcty*ivvps204;
CHVPL104:kicker,l:=0.10/2.,hkick:=hkpl104*crctx*ihhpl104,
                          vkick:=vkpl104*crcty*ivvpl104;
CHVPL105:kicker,l:=0.10/2.,hkick:=hkpl105*crctx*ihhpl105,
                          vkick:=vkpl105*crcty*ivvpl105;
CHVPL202:kicker,l:=0.10/2.,hkick:=hkpl202*crctx*ihhpl202,
                          vkick:=vkpl202*crcty*ivvpl202;
CHVPL203:kicker,l:=0.10/2.,hkick:=hkpl203*crctx*ihhpl203,
                          vkick:=vkpl203*crcty*ivvpl203;

// lambertson
llamb := .155/2.0;
CHVPI201:kicker,l:=llamb,hkick:=hkpi201*clmbx*ihhpi201,
                       vkick:=vkpi201*clmby*ivvpi201;
CHVPI202:kicker,l:=llamb,hkick:=hkpi202*clmbx*ihhpi202,
                       vkick:=vkpi202*clmby*ivvpi202;
// CHVPI101:kicker,l:=llamb,hkick:=hkpi101*clmbx*ihhpi101,
//                        vkick:=vkpi101*clmby*ivvpi101;
// CHVPI102:kicker,l:=llamb,hkick:=hkpi102*clmbx*ihhpi102,
//                        vkick:=vkpi102*clmby*ivvpi102;
CHVPI101:kicker,l:=0.,hkick:=hkpi101*clmbx*ihhpi101,
                        vkick:=vkpi101*clmby*ivvpi101, tilt:=pi101tilt;
CHVPI102:kicker,l:=0.,hkick:=hkpi102*clmbx*ihhpi102,
                        vkick:=vkpi102*clmby*ivvpi102, tilt:=pi102tilt;
value, clmbx*.155;
value, cmlby*.155;

// 'C'
ldhc := 0.328/2.d0;

// kang_DHCPL101 := -0.00942478;
// kang_DHCPL201 := -0.01308997;
// kang_DHCPS101 :=  0.00942478;
// kang_DHCPS201 :=  0.01308997;

dhc :=  0.07154 - 0.08082;  // (0.009822)- 0.000581  // 0.00942478   // valore da disegno .54 gradi+ 0.000341
kang_DHCPL101 := -dhc; // -0.009501
kang_DHCPL201 := -0.013084;
kang_DHCPS101 :=  dhc; // 0.009501
kang_DHCPS201 :=  0.013084;

ksh_DHCPL101 = 4.63E-03*isDHCPL101/(br0*ldhc*2.);
ksv_DHCPL101 = 1.35E-2*isDVCPL101/(br0*ldhc*2.);

ksh_DHCPL201 = 4.63E-03*isDHCPL201/(br0*ldhc*2.);
ksv_DHCPL201 = 1.35E-2*isDVCPL201/(br0*ldhc*2.);

ksh_DHCPS101 = 4.63E-03*isDHCPS101/(br0*ldhc*2.);
ksv_DHCPS101 = 1.35E-2*isDVCPS101/(br0*ldhc*2.);

ksh_DHCPS201 = 4.63E-03*isDHCPS201/(br0*ldhc*2.);
ksv_DHCPS201 = 1.35E-2*isDVCPS201/(br0*ldhc*2.);

ksv_CHHPI201 = 2.E-02*isCHPI201/(br0*llamb*2.);
ksh_CHHPI201 = 2.5E-04*isCVPI201/(br0*llamb*2.);
ksv_CHHPI202 = 2.E-02*isCHPI202/(br0*llamb*2.);
ksh_CHHPI202 = 2.5E-04*isCVPI202/(br0*llamb*2.);

M_DHCPL101: multipole,knl:={  kang_DHCPL101,0.,ksh_DHCPL101};
M_DHCPL201: multipole,knl:={  kang_DHCPL201,0.,ksh_DHCPL201};
M_DHCPS101: multipole,knl:={  kang_DHCPS101,0.,ksh_DHCPS101};
M_DHCPS201: multipole,knl:={  kang_DHCPS201,0.,ksh_DHCPS201};

M_DVCPL101: multipole,knl:={0 ,0.,ksv_DVCPL101};
M_DVCPL201: multipole,knl:={0 ,0.,ksv_DVCPL201};
M_DVCPS101: multipole,knl:={0 ,0.,ksv_DVCPS101};
M_DVCPS201: multipole,knl:={0 ,0.,ksv_DVCPS201};

M_CHHPI201: multipole,knl:={0 ,0.,ksv_CHHPI201};
M_CVVPI201: multipole,knl:={0 ,0.,ksh_CHHPI201};
M_CHHPI202: multipole,knl:={0 ,0.,ksv_CHHPI202};
M_CVVPI202: multipole,knl:={0 ,0.,ksh_CHHPI202};

dhc1 := 0.000637; // 0.001057 // 0.002129// 0.012046 // 0.012676
DHCPL101:kicker,l:=ldhc,hkick:=hkcpl101*cox*ihhdpl101,
         vkick:=vkcpl101*coy*ivvdpl101, tilt:=dhcltilt;
DCPL101s:kicker,l:=(ldhc -dhc1),hkick:=hkcpl101*cox*ihhdpl101,
         vkick:=vkcpl101*coy*ivvdpl101;
DCPL101l:kicker,l:=(ldhc +dhc1),hkick:=hkcpl101*cox*ihhdpl101,
         vkick:=vkcpl101*coy*ivvdpl101;

DHCPS101:kicker,l:=ldhc,hkick:=hkcps101*cox*ihhdps101,
         vkick:=vkcps101*coy*ivvdps101, tilt:=dhcstilt;
DCPS101s:kicker,l:=(ldhc -dhc1),hkick:=hkcps101*cox*ihhdps101,
         vkick:=vkcps101*coy*ivvdps101;
DCPS101l:kicker,l:=(ldhc +dhc1),hkick:=hkcps101*cox*ihhdps101,
         vkick:=vkcps101*coy*ivvdps101;


dch := 0.0;  // 0.008676

DHCPS201:kicker,l:=ldhc,hkick:=hkcps201*cox*ihhdps201,
         vkick:=vkcps201*coy*ivvdps201;
DCPS201s:kicker,l:=(ldhc + dch),hkick:=hkcps201*cox*ihhdps201,
         vkick:=vkcps201*coy*ivvdps201;
DCPS201l:kicker,l:=(ldhc - dch),hkick:=hkcps201*cox*ihhdps201,
         vkick:=vkcps201*coy*ivvdps201;


DHCPL201:kicker,l:=ldhc,hkick:=hkcpl201*cox*ihhdpl201,
                vkick:=vkcpl201*coy*ivvdpl201;
DCPL201s:kicker,l:=(ldhc + dch),hkick:=hkcpl201*cox*ihhdpl201,
                vkick:=vkcpl201*coy*ivvdpl201;
DCPL201l:kicker,l:=(ldhc - dch),hkick:=hkcpl201*cox*ihhdpl201,
                vkick:=vkcpl201*coy*ivvdpl201;


// Corrector magnet moved from transfer lines

// cstr := 1.24751E-02/en;
cstr := 1.24751E-01/en;   // from a comparison with the measured RSM

CHVPL107:kicker,l:=0.,hkick:=(cstr*ihhpl107),
                      vkick:=(cstr*ivvpl107),tilt:=pl107tilt;

CHVPS100:kicker,l:=0.,hkick:=(cstr*ihhps100),
                      vkick:=(cstr*ivvps100),tilt:=ps100tilt;

return; 
