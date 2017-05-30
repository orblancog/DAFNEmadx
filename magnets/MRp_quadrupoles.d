// =====================================================================
// POSITRON RING QUADRUPOLES DEFINITION
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

// Quadrupole  k**2 [m**-2] as a function of the Energy [MeV] and
// power supply Current [A]

call, file="quadfamilies.d";

pkl101 := (cpl101/ABS(cpl101))*(c1s*(abs(cpl101)+eps+dpl101)+c2s)/BEAM_ENE;
pkl102 := (cpl102/ABS(cpl102))*(c1s*(abs(cpl102)+eps+dpl102)+c2s)/BEAM_ENE;
pkl103 := (cpl103/ABS(cpl103))*(c1la*(abs(cpl103)+eps+dpl103)+c2la)/BEAM_ENE;
pkl104 := (cpl104/ABS(cpl104))*(c1s*(abs(cpl104)+eps+dpl104)+c2s)/BEAM_ENE;
pkl114 := (cpl114/ABS(cpl114))*(c1l*(abs(cpl114)+eps+dpl114)+c2l)/BEAM_ENE;
pkl105 := (cpl105/ABS(cpl105))*(c1l*(abs(cpl105)+eps+dpl105)+c2l)/BEAM_ENE;
pkl106 := (cpl106/ABS(cpl106))*(c1l*(abs(cpl106)+eps+dpl106)+c2l)/BEAM_ENE;
pkl107 := (cpl107/ABS(cpl107))*(c1l*(abs(cpl107)+eps+dpl107)+c2l)/BEAM_ENE;
pkl108 := (cpl108/ABS(cpl108))*(c1s*(abs(cpl108)+eps+dpl108)+c2s)/BEAM_ENE;
pkl109 := (cpl109/ABS(cpl109))*(c1s*(abs(cpl109)+eps+dpl109)+c2s)/BEAM_ENE;
pkl110 := (cpl110/ABS(cpl110))*(c1s*(abs(cpl110)+eps+dpl110)+c2s)/BEAM_ENE;
pkl111 := (ci1014/ABS(ci1014))*(c1s*(abs(ci1014)+eps+di1014)+c2s)/BEAM_ENE;
pkl201 := (cpl201/ABS(cpl201))*(c1s*(ABS(cpl201)+eps+dpl201)+c2s)/BEAM_ENE;
pkl202 := (cpl202/ABS(cpl202))*(c1s*(ABS(cpl202)+eps+dpl202)+c2s)/BEAM_ENE;
pkl203 := (cpl203/ABS(cpl203))*(c1s*(ABS(cpl203)+eps+dpl203)+c2s)/BEAM_ENE;
pkl204 := (cpl204/ABS(cpl204))*(c1l*(ABS(cpl204)+eps+dpl204)+c2l)/BEAM_ENE;
pkl205 := (cpl205/ABS(cpl205))*(c1l*(ABS(cpl205)+eps+dpl205)+c2l)/BEAM_ENE;
pkl206 := (cpl206/ABS(cpl206))*(c1l*(ABS(cpl206)+eps+dpl206)+c2l)/BEAM_ENE;
pkl207 := (cpl207/ABS(cpl207))*(c1s*(ABS(cpl207)+eps+dpl207)+c2s)/BEAM_ENE;
pkl217 := (cpl217/ABS(cpl217))*(c1l*(ABS(cpl217)+eps+dpl217)+c2l)/BEAM_ENE;
pkl208 := (cpl208/ABS(cpl208))*(c1la*(ABS(cpl208)+eps+dpl208)+c2la)/BEAM_ENE;
pkl209 := (cpl209/ABS(cpl209))*(c1s*(ABS(cpl209)+eps+dpl209)+c2s)/BEAM_ENE;
pkl210 := (cpl210/ABS(cpl210))*(c1s*(ABS(cpl210)+eps+dpl210)+c2s)/BEAM_ENE;
psk100 := (ci1023/ABS(ci1023))*(c1s*(ABS(ci1023)+eps+di1023)+c2s)/BEAM_ENE;
psk101 := (cps101/ABS(cps101))*(c1s*(ABS(cps101)+eps+dps101)+c2s)/BEAM_ENE;
psk102 := (cps102/ABS(cps102))*(c1s*(ABS(cps102)+eps+dps102)+c2s)/BEAM_ENE;
psk103 := (cps103/ABS(cps103))*(c1s*(ABS(cps103)+eps+dps103)+c2s)/BEAM_ENE;
psk104 := (cps104/ABS(cps104))*(c1l*(ABS(cps104)+eps+dps104)+c2l)/BEAM_ENE;
psk105 := (cps105/ABS(cps105))*(c1l*(ABS(cps105)+eps+dps105)+c2l)/BEAM_ENE;
psk106 := (cps106/ABS(cps106))*(c1l*(ABS(cps106)+eps+dps106)+c2l)/BEAM_ENE;
psk107 := (cps107/ABS(cps107))*(c1s*(ABS(cps107)+eps+dps107)+c2s)/BEAM_ENE;
psk108 := (cps108/ABS(cps108))*(c1s*(ABS(cps108)+eps+dps108)+c2s)/BEAM_ENE;
psk109 := (cps109/ABS(cps109))*(c1s*(ABS(cps109)+eps+dps109)+c2s)/BEAM_ENE;
psk110 := (cps110/ABS(cps110))*(c1s*(ABS(cps110)+eps+dps110)+c2s)/BEAM_ENE;
psk201 := (cps201/ABS(cps201))*(c1s*(ABS(cps201)+eps+dps201)+c2s)/BEAM_ENE;
psk202 := (cps202/ABS(cps202))*(c1s*(ABS(cps202)+eps+dps202)+c2s)/BEAM_ENE;
psk203 := (cps203/ABS(cps203))*(c1s*(ABS(cps203)+eps+dps203)+c2s)/BEAM_ENE;
psk204 := (cps204/ABS(cps204))*(c1l*(ABS(cps204)+eps+dps204)+c2l)/BEAM_ENE;
psk205 := (cps205/ABS(cps205))*(c1l*(ABS(cps205)+eps+dps205)+c2l)/BEAM_ENE;
psk206 := (cps206/ABS(cps206))*(c1l*(ABS(cps206)+eps+dps206)+c2l)/BEAM_ENE;
psk207 := (cps207/ABS(cps207))*(c1s*(ABS(cps207)+eps+dps207)+c2s)/BEAM_ENE;
psk208 := (cps208/ABS(cps208))*(c1s*(ABS(cps208)+eps+dps208)+c2s)/BEAM_ENE;
psk209 := (cps209/ABS(cps209))*(c1s*(ABS(cps209)+eps+dps209)+c2s)/BEAM_ENE;

//  PL1 section
QUAPL101:   quad,L := llq/2, K1 := pkl101;
QUAPL102:   quad,L := llq/2, K1 := pkl102;
QUAPL103a:  quad,L := ((lla/2)-0.089), K1 := pkl103;
QUAPL103b:  quad,L := 0.089, K1 := pkl103;
QUAPL103_1: quad,L := (lla/2), K1 := pkl103;
QUAPL103:   line=(quapl103_1,quapl103a,kckpl101,quapl103b);
QUAPL104:   quad,L := llq/2, K1 := pkl104;
QUAPL114:   quad,L := lsq/2, K1 := pkl114;
QUAPL105:   quad,L := lsq/2, K1 := pkl105;
QUAPL106_H: quad,L := lsq/2, K1 := pkl106;
QUAPL106_M: MULTIPOLE, type = octpn, KNL:={0,0,spkl106};
QUAPL106:   line = (QUAPL106_H,QUAPL106_M,QUAPL106_H);
QUAPL107_H: quad,L := lsq/2, K1 := pkl107;
QUAPL107_M: MULTIPOLE, type = octpn, KNL:={0,0,spkl107};
QUAPL107:   line = (QUAPL107_H,QUAPL107_M,quapl107_H);
QUAPL108:   quad,L := llq/2, K1 := pkl108, TILT := tqpl108;
QUAPL109:   quad,L := llq/2, K1 := pkl109, TILT := tqpl109;
QUAPL110:   quad,L := llq/2, K1 := pkl110, TILT := tqpl110;
//QUAPL111: quad,L := llq/2, K1 := pkl111, TILT := tqpl111;

// PL2 section
QUAPL201:   quad,L := llq/2, K1 := pkl201;
QUAPL202:   quad,L := llq/2, K1 := pkl202;
QUAPL203:   quad,L := llq/2, K1 := pkl203;
QUAPL204_H: quad,L := lsq/2, K1 := pkl204;
QUAPL204_M: multipole, type = octpn, KNL:={0,0,spkl204};
QUAPL204:   line = (QUAPL204_H,QUAPL204_M,QUAPL204_H);
QUAPL205_H: quad,L := lsq/2, K1 := pkl205;
QUAPL205_M: multipole, type = octpn, KNL:={0,0,spkl204};
QUAPL205:   line = (QUAPL205_H,QUAPL205_M,QUAPL205_H);
QUAPL206:   quad,L := lsq/2, K1 := pkl206;
QUAPL217:   quad,L := lsq/2, K1 := pkl217;
QUAPL207:   quad,L := llq/2, K1 := pkl207;
QUAPL208:   quad,L := lla/2, K1 := pkl208;
QUAPL208_1: quad,L := (lla/2), K1 := pkl208;
QUAPL208b:  quad,L := 0.089, K1 := pkl208;
QUAPL208a:  quad,L := ((lla/2)-0.089), K1 := pkl208;
QUAPL208:   line = (QUAPL208b,kckpl202,QUAPL208a,QUAPL208_1);
QUAPL209:   quad,L := llq/2, K1 := pkl209;
QUAPL210:   quad,L := llq/2, K1 := pkl210;

//  PS1 section
//QUAPS100: quadrupole,L := llq/2, K1 := psk100, TILT := tqps100
QUAPS101:   quad,L := llq/2, K1 := psk101, TILT := tqps101;
QUAPS102:   quad,L := llq/2, K1 := psk102, TILT := tqps102;
QUAPS103:   quad,L := llq/2, K1 := psk103, TILT := tqps103;
QUAPS104_H: quad,L := lsq/2, K1 := psk104;
QUAPS104_M: multipole, type = octpn, KNL:={0,0,spsk104};
QUAPS104:   line = (QUAPS104_H,QUAPS104_M,QUAPS104_H);
QUAPS105_H: quad,L := lsq/2, K1 := psk105;
QUAPS105_M: multipole, type = octpn, KNL:={0,0,spsk105};
QUAPS105:   line = (QUAPS105_H,QUAPS105_M,QUAPS105_H);
QUAPS106:   quad,L := lsq/2, K1 := psk106;
QUAPS107:   quad,L := llq/2, K1 := psk107;
QUAPS108:   quad,L := llq/2, K1 := psk108;
QUAPS109:   quad,L := llq/2, K1 := psk109;
QUAPS110:   quad,L := llq/2, K1 := psk110;

//  PS2 section

QUAPS201:   quad,L := llq/2, K1 := psk201;
QUAPS202:   quad,L := llq/2, K1 := psk202;
QUAPS203:   quad,L := llq/2, K1 := psk203;
QUAPS204:   quad,L := lsq/2, K1 := psk204;
QUAPS205_H: quad,L := lsq/2, K1 := psk205;
QUAPS205_M: multipole, type = octpn, KNL:={0,0,spsk205};
QUAPS205:   line = (QUAPS205_H,QUAPS205_M,QUAPS205_H);
QUAPS206_H: quad,L := lsq/2, K1 := psk206;
QUAPS206_M: multipole, type = octpn, KNL:={0,0,spsk206};
QUAPS206:   line = (QUAPS206_H,QUAPS206_M,QUAPS206_H);
QUAPS207:   quad,L := llq/2, K1 := psk207;
QUAPS208:   quad,L := llq/2, K1 := psk208;
QUAPS209:   quad,L := llq/2, K1 := psk209;

return;

