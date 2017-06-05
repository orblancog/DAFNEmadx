// ===========================================
// POSITRON RING KICKERS DEFINITION
// ===========================================
//
// Notes:
// ------

// Injection Kickers

KCKEL101:kicker,hkick= 0.e-03;
KCKEL202:kicker,hkick= .0e-03;
KCKEL201:kicker,hkick= 0.e-03;

// FEEDBACK (?)

ktrh:marker;
ktrv:marker;

// RF cavity

lcav=1.84;

rfcav: rfcavity,l=lcav/2,volt=0.10,lag=0.49,harmon=120; // tfill=1.,shunt=0.2,pg=0.1

return !
