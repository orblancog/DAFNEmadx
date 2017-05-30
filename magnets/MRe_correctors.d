// =====================================================================
// ELECTRON RING CORRECTORS DEFINITION
// =====================================================================

csqr  := 0.210/BEAM_ENE;
crctx := 0.186/BEAM_ENE;
crcty := 0.173/BEAM_ENE;
clmbx := 0.00681/BEAM_ENE;
clmby := 0.0161/BEAM_ENE;
cox   := 0.0649/BEAM_ENE;
coy   := 0.0435/BEAM_ENE;
cskw  := 0.0173/BEAM_ENE;

// short correctors

hkes101 := 1.;
hkes102 := 1.;
hkes103 := 1.;
hkes104 := 1.;
hkes105 := 1.;
hkes106 := 1.;

vkes101 := 1.;
vkes102 := 1.;
vkes103 := 1.;
vkes104 := 1.;
vkes105 := 1.;
vkes106 := 1.;

hkes201 := 1.;
hkes202 := 1.;
hkes203 := 1.;
hkes204 := 1.;
hkes205 := 1.;

vkes201 := 1.;
vkes202 := 1.;
vkes203 := 1.;
vkes204 := 1.;
vkes205 := 1.;

// long

hkel101 := 1.;
hkel102 := 1.;
hkel103 := 1.;
hkel104 := 1.;
hkel105 := 1.;
hkel106 := 1.;

vkel101 := 1.;
vkel102 := 1.;
vkel103 := 1.;
vkel104 := 1.;
vkel105 := 1.;
vkel106 := 1.;

hkel201 := 1.;
hkel202 := 1.;
hkel203 := 1.;
hkel204 := 1.;
hkel205 := 1.;
hkel206 := 1.;

vkel201 := 1.;
vkel202 := 1.;
vkel203 := 1.;
vkel204 := 1.;
vkel205 := 1.;
vkel206 := 1.;


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

hkcel101 := 1.;
hkces101 := 1.;
hkces201 := 1.;
hkcel201 := 1.;

vkcel101 := 1.;
vkces101 := 1.;
vkces201 := 1.;
vkcel201 := 1.;

// skew

CHVES101:kicker,hkick:=hkes101*cskw*ihhes101,vkick:=vkes101
                *cskw*ivves101;
CHVES104:kicker,hkick:=hkes104*cskw*ihhes104,vkick:=vkes104
                *cskw*ivves104;
CHVES202:kicker,hkick:=hkes202*cskw*ihhes202,vkick:=vkes202
                *cskw*ivves202;
CHVES205:kicker,hkick:=hkes205*cskw*ihhes205,vkick:=vkes205
                *cskw*ivves205;
CHVEL103:kicker,hkick:=hkel103*cskw*ihhel103,vkick:=vkel103
                *cskw*ivvel103;
CHVEL106:kicker,hkick:=hkel106*cskw*ihhel106,vkick:=vkel106
                *cskw*ivvel106;
CHVEL201:kicker,hkick:=hkel201*cskw*ihhel201,vkick:=vkel201
                *cskw*ivvel201;
CHVEL204:kicker,hkick:=hkel204*cskw*ihhel204,vkick:=vkel204
                *cskw*ivvel204;

// square

CHVEL101:kicker,l:=0.10/2.,hkick:=hkel101*csqr*ihhel101,vkick:=vkel101*csqr*ivvel101;
CHVEL102:kicker,l:=0.10/2.,hkick:=hkel102*csqr*ihhel102,vkick:=vkel102*csqr*ivvel102;
CHVES105:kicker,l:=0.10/2.,hkick:=hkes105*csqr*ihhes105,vkick:=vkes105*csqr*ivves105;
CHVES106:kicker,l:=0.10/2.,hkick:=hkes106*csqr*ihhes106,vkick:=vkes106*csqr*ivves106;
CHVES201:kicker,l:=0.10/2.,hkick:=hkes201*csqr*ihhes201,vkick:=vkes201*csqr*ivves201;
CHVEL205:kicker,l:=0.10/2.,hkick:=hkel205*csqr*ihhel205,vkick:=vkel205*csqr*ivvel205;
CHVEL206:kicker,l:=0.10/2.,hkick:=hkel206*csqr*ihhel206,vkick:=vkel206*csqr*ivvel206;

// rectangular

CHVES102:kicker,l:=0.10/2.,hkick:=hkes102*crctx*ihhes102,
                          vkick:=vkes102*crcty*ivves102;
CHVES103:kicker,l:=0.10/2.,hkick:=hkes103*crctx*ihhes103,
                          vkick:=vkes103*crcty*ivves103;
CHVES203:kicker,l:=0.10/2.,hkick:=hkes203*crctx*ihhes203,
                          vkick:=vkes203*crcty*ivves203;
CHVES204:kicker,l:=0.10/2.,hkick:=hkes204*crctx*ihhes204,
                          vkick:=vkes204*crcty*ivves204;
CHVEL104:kicker,l:=0.10/2.,hkick:=hkel104*crctx*ihhel104,
                          vkick:=vkel104*crcty*ivvel104;
CHVEL105:kicker,l:=0.10/2.,hkick:=hkel105*crctx*ihhel105,
                          vkick:=vkel105*crcty*ivvel105;
CHVEL202:kicker,l:=0.10/2.,hkick:=hkel202*crctx*ihhel202,
                          vkick:=vkel202*crcty*ivvel202;
CHVEL203:kicker,l:=0.10/2.,hkick:=hkel203*crctx*ihhel203,
                          vkick:=vkel203*crcty*ivvel203;

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

// 'C'
ldhc := 0.328/2.d0;

// kang_DHCEL101 := -0.00942478;
// kang_DHCEL201 := -0.01308997;
// kang_DHCES101 :=  0.00942478;
// kang_DHCES201 :=  0.01308997;

dhc :=  0.07154 - 0.08082;  // (0.009822)- 0.000581  // 0.00942478   // valore da disegno .54 gradi+ 0.000341
kang_DHCEL101 := -dhc; // -0.009501
kang_DHCEL201 := -0.013084;
kang_DHCES101 :=  dhc; // 0.009501
kang_DHCES201 :=  0.013084;

ksh_DHCEL101 = 4.63E-03*isDHCEL101/(br0*ldhc*2.);
ksv_DHCEL101 = 1.35E-2*isDVCEL101/(br0*ldhc*2.);

ksh_DHCEL201 = 4.63E-03*isDHCEL201/(br0*ldhc*2.);
ksv_DHCEL201 = 1.35E-2*isDVCEL201/(br0*ldhc*2.);

ksh_DHCES101 = 4.63E-03*isDHCES101/(br0*ldhc*2.);
ksv_DHCES101 = 1.35E-2*isDVCES101/(br0*ldhc*2.);

ksh_DHCES201 = 4.63E-03*isDHCES201/(br0*ldhc*2.);
ksv_DHCES201 = 1.35E-2*isDVCES201/(br0*ldhc*2.);

ksv_CHHPI201 = 2.E-02*isCHPI201/(br0*llamb*2.);
ksh_CHHPI201 = 2.5E-04*isCVPI201/(br0*llamb*2.);
ksv_CHHPI202 = 2.E-02*isCHPI202/(br0*llamb*2.);
ksh_CHHPI202 = 2.5E-04*isCVPI202/(br0*llamb*2.);

M_DHCEL101: multipole,knl:={  kang_DHCEL101,0.,ksh_DHCEL101};
M_DHCEL201: multipole,knl:={  kang_DHCEL201,0.,ksh_DHCEL201};
M_DHCES101: multipole,knl:={  kang_DHCES101,0.,ksh_DHCES101};
M_DHCES201: multipole,knl:={  kang_DHCES201,0.,ksh_DHCES201};

M_DVCEL101: multipole,knl:={0 ,0.,ksv_DVCEL101};
M_DVCEL201: multipole,knl:={0 ,0.,ksv_DVCEL201};
M_DVCES101: multipole,knl:={0 ,0.,ksv_DVCES101};
M_DVCES201: multipole,knl:={0 ,0.,ksv_DVCES201};

M_CHHPI201: multipole,knl:={0 ,0.,ksv_CHHPI201};
M_CVVPI201: multipole,knl:={0 ,0.,ksh_CHHPI201};
M_CHHPI202: multipole,knl:={0 ,0.,ksv_CHHPI202};
M_CVVPI202: multipole,knl:={0 ,0.,ksh_CHHPI202};

dhc1 := 0.000637; // 0.001057 // 0.002129// 0.012046 // 0.012676
DHCEL101:kicker,l:=ldhc,hkick:=hkcel101*cox*ihhdel101,
         vkick:=vkcel101*coy*ivvdel101, tilt:=dhcltilt;
DCEL101s:kicker,l:=(ldhc -dhc1),hkick:=hkcel101*cox*ihhdel101,
         vkick:=vkcel101*coy*ivvdel101;
DCEL101l:kicker,l:=(ldhc +dhc1),hkick:=hkcel101*cox*ihhdel101,
         vkick:=vkcel101*coy*ivvdel101;

DHCES101:kicker,l:=ldhc,hkick:=hkces101*cox*ihhdes101,
         vkick:=vkces101*coy*ivvdes101, tilt:=dhcstilt;
DCES101s:kicker,l:=(ldhc -dhc1),hkick:=hkces101*cox*ihhdes101,
         vkick:=vkces101*coy*ivvdes101;
DCES101l:kicker,l:=(ldhc +dhc1),hkick:=hkces101*cox*ihhdes101,
         vkick:=vkces101*coy*ivvdes101;


dch := 0.0;  // 0.008676

DHCES201:kicker,l:=ldhc,hkick:=hkces201*cox*ihhdes201,
         vkick:=vkces201*coy*ivvdes201;
DCES201s:kicker,l:=(ldhc + dch),hkick:=hkces201*cox*ihhdes201,
         vkick:=vkces201*coy*ivvdes201;
DCES201l:kicker,l:=(ldhc - dch),hkick:=hkces201*cox*ihhdes201,
         vkick:=vkces201*coy*ivvdes201;


DHCEL201:kicker,l:=ldhc,hkick:=hkcel201*cox*ihhdel201,
                vkick:=vkcel201*coy*ivvdel201;
DCEL201s:kicker,l:=(ldhc + dch),hkick:=hkcel201*cox*ihhdel201,
                vkick:=vkcel201*coy*ivvdel201;
DCEL201l:kicker,l:=(ldhc - dch),hkick:=hkcel201*cox*ihhdel201,
                vkick:=vkcel201*coy*ivvdel201;


// Corrector magnet moved from transfer lines

// cstr := 1.24751E-02/en;
cstr := 1.24751E-01/en;   // from a comparison with the measured RSM

CHVEL107:kicker,l:=0.,hkick:=(cstr*ihhel107),
                      vkick:=(cstr*ivvel107),tilt:=el107tilt;

CHVES100:kicker,l:=0.,hkick:=(cstr*ihhes100),
                      vkick:=(cstr*ivves100),tilt:=es100tilt;

return; 
