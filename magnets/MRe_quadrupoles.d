// =====================================================================
// ELECTRON RING QUADRUPOLES DEFINITION
// =====================================================================
//
// Notes:
// ------
// quadrupole strengths are expanded as a function of set currents
// as first order polynomial (slope and offset). All quadrupole
// strengths are normalized with beam energy (global BEAM_ENE).
//
// Complex magnets (multipole components, special elements inside)
// are simulated as lines of segments. The name of the physical object
// is used for the equivalent line segment. 
//
// ---------------------------------------------------------------------
call, file="magnets/quadfamilies.d";

// Quadrupole  k**2 [m**-2] as a function of the Energy [MeV] and
// power supply Current [A]

ekl101 := (cel101/ABS(cel101))*(c1s*(abs(cel101)+eps+del101)+c2s)/BEAM_ENE;
ekl102 := (cel102/ABS(cel102))*(c1s*(abs(cel102)+eps+del102)+c2s)/BEAM_ENE;
ekl103 := (cel103/ABS(cel103))*(c1la*(abs(cel103)+eps+del103)+c2la)/BEAM_ENE;
ekl104 := (cel104/ABS(cel104))*(c1s*(abs(cel104)+eps+del104)+c2s)/BEAM_ENE;
ekl114 := (cel114/ABS(cel114))*(c1l*(abs(cel114)+eps+del114)+c2l)/BEAM_ENE;
ekl105 := (cel105/ABS(cel105))*(c1l*(abs(cel105)+eps+del105)+c2l)/BEAM_ENE;
ekl106 := (cel106/ABS(cel106))*(c1l*(abs(cel106)+eps+del106)+c2l)/BEAM_ENE;
ekl107 := (cel107/ABS(cel107))*(c1l*(abs(cel107)+eps+del107)+c2l)/BEAM_ENE;
ekl108 := (cel108/ABS(cel108))*(c1s*(abs(cel108)+eps+del108)+c2s)/BEAM_ENE;
ekl109 := (cel109/ABS(cel109))*(c1s*(abs(cel109)+eps+del109)+c2s)/BEAM_ENE;
ekl110 := (cel110/ABS(cel110))*(c1s*(abs(cel110)+eps+del110)+c2s)/BEAM_ENE;
ekl111 := (ci1014/ABS(ci1014))*(c1s*(abs(ci1014)+eps+di1014)+c2s)/BEAM_ENE;
ekl201 := (cel201/ABS(cel201))*(c1s*(ABS(cel201)+eps+del201)+c2s)/BEAM_ENE;
ekl202 := (cel202/ABS(cel202))*(c1s*(ABS(cel202)+eps+del202)+c2s)/BEAM_ENE;
ekl203 := (cel203/ABS(cel203))*(c1s*(ABS(cel203)+eps+del203)+c2s)/BEAM_ENE;
ekl204 := (cel204/ABS(cel204))*(c1l*(ABS(cel204)+eps+del204)+c2l)/BEAM_ENE;
ekl205 := (cel205/ABS(cel205))*(c1l*(ABS(cel205)+eps+del205)+c2l)/BEAM_ENE;
ekl206 := (cel206/ABS(cel206))*(c1l*(ABS(cel206)+eps+del206)+c2l)/BEAM_ENE;
ekl207 := (cel207/ABS(cel207))*(c1s*(ABS(cel207)+eps+del207)+c2s)/BEAM_ENE;
ekl217 := (cel217/ABS(cel217))*(c1l*(ABS(cel217)+eps+del217)+c2l)/BEAM_ENE;
ekl208 := (cel208/ABS(cel208))*(c1la*(ABS(cel208)+eps+del208)+c2la)/BEAM_ENE;
ekl209 := (cel209/ABS(cel209))*(c1s*(ABS(cel209)+eps+del209)+c2s)/BEAM_ENE;
ekl210 := (cel210/ABS(cel210))*(c1s*(ABS(cel210)+eps+del210)+c2s)/BEAM_ENE;
eks100 := (ci1023/ABS(ci1023))*(c1s*(ABS(ci1023)+eps+di1023)+c2s)/BEAM_ENE;
eks101 := (ces101/ABS(ces101))*(c1s*(ABS(ces101)+eps+des101)+c2s)/BEAM_ENE;
eks102 := (ces102/ABS(ces102))*(c1s*(ABS(ces102)+eps+des102)+c2s)/BEAM_ENE;
eks103 := (ces103/ABS(ces103))*(c1s*(ABS(ces103)+eps+des103)+c2s)/BEAM_ENE;
eks104 := (ces104/ABS(ces104))*(c1l*(ABS(ces104)+eps+des104)+c2l)/BEAM_ENE;
eks105 := (ces105/ABS(ces105))*(c1l*(ABS(ces105)+eps+des105)+c2l)/BEAM_ENE;
eks106 := (ces106/ABS(ces106))*(c1l*(ABS(ces106)+eps+des106)+c2l)/BEAM_ENE;
eks107 := (ces107/ABS(ces107))*(c1s*(ABS(ces107)+eps+des107)+c2s)/BEAM_ENE;
eks108 := (ces108/ABS(ces108))*(c1s*(ABS(ces108)+eps+des108)+c2s)/BEAM_ENE;
eks109 := (ces109/ABS(ces109))*(c1s*(ABS(ces109)+eps+des109)+c2s)/BEAM_ENE;
eks110 := (ces110/ABS(ces110))*(c1s*(ABS(ces110)+eps+des110)+c2s)/BEAM_ENE;
eks201 := (ces201/ABS(ces201))*(c1s*(ABS(ces201)+eps+des201)+c2s)/BEAM_ENE;
eks202 := (ces202/ABS(ces202))*(c1s*(ABS(ces202)+eps+des202)+c2s)/BEAM_ENE;
eks203 := (ces203/ABS(ces203))*(c1s*(ABS(ces203)+eps+des203)+c2s)/BEAM_ENE;
eks204 := (ces204/ABS(ces204))*(c1l*(ABS(ces204)+eps+des204)+c2l)/BEAM_ENE;
eks205 := (ces205/ABS(ces205))*(c1l*(ABS(ces205)+eps+des205)+c2l)/BEAM_ENE;
eks206 := (ces206/ABS(ces206))*(c1l*(ABS(ces206)+eps+des206)+c2l)/BEAM_ENE;
eks207 := (ces207/ABS(ces207))*(c1s*(ABS(ces207)+eps+des207)+c2s)/BEAM_ENE;
eks208 := (ces208/ABS(ces208))*(c1s*(ABS(ces208)+eps+des208)+c2s)/BEAM_ENE;
eks209 := (ces209/ABS(ces209))*(c1s*(ABS(ces209)+eps+des209)+c2s)/BEAM_ENE;

//  EL1 section

QUAEL101:   quad,L := llq/2, K1 := ekl101;
QUAEL102:   quad,L := llq/2, K1 := ekl102;
QUAEL103a:  quad,L := ((lla/2)-0.089), K1 := ekl103;
QUAEL103b:  quad,L := 0.089, K1 := ekl103;
QUAEL103_1: quad,L := (lla/2), K1 := ekl103;
QUAEL103:   line=(QUAEL103_1,QUAEL103a,KCKEL101,QUAEL103b);
QUAEL104:   quad,L := llq/2, K1 := ekl104;
QUAEL114:   quad,L := lsq/2, K1 := ekl114;
QUAEL105:   quad,L := lsq/2, K1 := ekl105;
QUAEL106_H: quad,L := lsq/2, K1 := ekl106;
QUAEL106_M: MULTIPOLE, type = octpn, KNL:={0,0,sekl106};
QUAEL106:   line = (QUAEL106_H,QUAEL106_M,QUAEL106_H);
QUAEL107_H: quad,L := lsq/2, K1 := ekl107;
QUAEL107_M: MULTIPOLE, type = octpn, KNL:={0,0,sekl107};
QUAEL107:   line = (QUAEL107_H,QUAEL107_M,quael107_H);
QUAEL108:   quad,L := llq/2, K1 := ekl108, TILT := tqel108;
QUAEL109:   quad,L := llq/2, K1 := ekl109, TILT := tqel109;
QUAEL110:   quad,L := llq/2, K1 := ekl110, TILT := tqel110;
//QUAEL111: quad,L := llq/2, K1 := ekl111, TILT := tqel111;

// EL2 section

QUAEL201:   quad,L := llq/2, K1 := ekl201;
QUAEL202:   quad,L := llq/2, K1 := ekl202;
QUAEL203:   quad,L := llq/2, K1 := ekl203;
QUAEL204_H: quad,L := lsq/2, K1 := ekl204;
QUAEL204_M: multipole, type = octpn, KNL:={0,0,sekl204};
QUAEL204:   line = (QUAEL204_H,QUAEL204_M,QUAEL204_H);
QUAEL205_H: quad,L := lsq/2, K1 := ekl205;
QUAEL205_M: multipole, type = octpn, KNL:={0,0,sekl204};
QUAEL205:   line = (QUAEL205_H,QUAEL205_M,QUAEL205_H);
QUAEL206:   quad,L := lsq/2, K1 := ekl206;
QUAEL217:   quad,L := lsq/2, K1 := ekl217;
QUAEL207:   quad,L := llq/2, K1 := ekl207;
QUAEL208:   quad,L := lla/2, K1 := ekl208;
QUAEL208_1: quad,L := (lla/2), K1 := ekl208;
QUAEL208b:  quad,L := 0.089, K1 := ekl208;
QUAEL208a:  quad,L := ((lla/2)-0.089), K1 := ekl208;
QUAEL208:   line = (QUAEL208b,kckel202,QUAEL208a,QUAEL208_1);
QUAEL209:   quad,L := llq/2, K1 := ekl209;
QUAEL210:   quad,L := llq/2, K1 := ekl210;

//  ES1 section

//QUAES100: quadrupole,L := llq/2, K1 := eks100, TILT := tqes100
QUAES101:   quad,L := llq/2, K1 := eks101, TILT := tqes101;
QUAES102:   quad,L := llq/2, K1 := eks102, TILT := tqes102;
QUAES103:   quad,L := llq/2, K1 := eks103, TILT := tqes103;
QUAES104_H: quad,L := lsq/2, K1 := eks104;
QUAES104_M: multipole, type = octpn, KNL:={0,0,seks104};
QUAES104:   line = (QUAES104_H,QUAES104_M,QUAES104_H);
QUAES105_H: quad,L := lsq/2, K1 := eks105;
QUAES105_M: multipole, type = octpn, KNL:={0,0,seks105};
QUAES105:   line = (QUAES105_H,QUAES105_M,QUAES105_H);
QUAES106:   quad,L := lsq/2, K1 := eks106;
QUAES107:   quad,L := llq/2, K1 := eks107;
QUAES108:   quad,L := llq/2, K1 := eks108;
QUAES109:   quad,L := llq/2, K1 := eks109;
QUAES110:   quad,L := llq/2, K1 := eks110;

//  ES2 section

QUAES201:   quad,L := llq/2, K1 := eks201;
QUAES202:   quad,L := llq/2, K1 := eks202;
QUAES203:   quad,L := llq/2, K1 := eks203;
QUAES204:   quad,L := lsq/2, K1 := eks204;
QUAES205_H: quad,L := lsq/2, K1 := eks205;
QUAES205_M: multipole, type = octpn, KNL:={0,0,seks205};
QUAES205:   line = (QUAES205_H,QUAES205_M,QUAES205_H);
QUAES206_H: quad,L := lsq/2, K1 := eks206;
QUAES206_M: multipole, type = octpn, KNL:={0,0,seks206};
QUAES206:   line = (QUAES206_H,QUAES206_M,QUAES206_H);
QUAES207:   quad,L := llq/2, K1 := eks207;
QUAES208:   quad,L := llq/2, K1 := eks208;
QUAES209:   quad,L := llq/2, K1 := eks209;

return;

