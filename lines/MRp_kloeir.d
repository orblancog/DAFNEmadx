// =====================================================================
// POSITRON RING IP1 REGION DEFINITION 
// =====================================================================
//
// Notes:
// ------
// KLOE solenoidal fields, fringe included, described according map.
// 
// Compensator field described.
//
// Complex magnets (multipole components, special elements inside)
// are simulated as lines of segments. The name of the physical object
// is used for the equivalent line segment. 
//
// rispetto a IR1_CW_KloeComp_ma5.d il dipoletto e' avvicinato a IP1 ~ 36 cm
// Il centro del PM QD e' avvicinato a IP1 di 4 mm
// rispetto a IR1_CW_KloeComp_ma11_bpm.d gli spostamenti dei QDs 
// del low-beta in longitudinale sono stati resi indipendenti ldqd 
// si riferisce a QDS ed e' stato inserito ldqdl a QDL
// ldqf si riferisce a QFS ed e' stato inserito ldqfl a QFL
//
// Kloe Solenoid Calibration Constant (CKLOE is the actual current, 
// 2660 A is the reference current)
// C.M July Oct 2008
//
// ---------------------------------------------------------------------

ckl := (ckloe / 2660) * (br0 / bro);

mCHVPI101:marker;


// solenoid,type:=kloe KLOE;
// solenoid,type:=kloe KLOE;

ksol001:solenoid, l:=.03, ks := ckl * 0.35270408;
ksol002:solenoid, l:=.03, ks := ckl * 0.35270408;
ksol003:solenoid, l:=.03, ks := ckl * 0.35270408;
ksol004:solenoid, l:=.03, ks := ckl * 0.35274884;
ksol005:solenoid, l:=.03, ks := ckl * 0.35274884;
ksol006:solenoid, l:=.03, ks := ckl * 0.35274884;
ksol007:solenoid, l:= (.03 - ldqd), ks := ckl * 0.35286206;
ksol007a:solenoid, l:=ldqd, ks := ckl * 0.35286206;
ksol008:solenoid, l:= (.03 - ldqd -0.003), ks := ckl *  0.35286206;
ksol008b:solenoid, l:= (.003), ks := ckl *  0.35286206;
ksol008a:solenoid,l:=ldqd, ks := ckl *  0.35286206;
ksol009:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35286206;
ksol009a:solenoid, l:=ldqd, ks := ckl *  0.35286206;
ksol010:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35286206;
ksol010a:solenoid, l:=ldqd, ks := ckl *  0.35286206;
ksol011:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35304376;
ksol011a:solenoid, l:=ldqd, ks := ckl *  0.35304376;
ksol012:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35304376;
ksol012a:solenoid, l:=ldqd, ks := ckl *  0.35304376;
ksol013:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35304376;
ksol013a:solenoid, l:=ldqd, ks := ckl *  0.35304376;
ksol014:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35330179;
ksol014a:solenoid, l:=ldqd, ks := ckl *  0.35330179;
ksol015:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35330179;
ksol015a:solenoid, l:=ldqd, ks := ckl *  0.35330179;
ksol016:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35330179;
ksol016a:solenoid, l:=ldqd, ks := ckl *  0.35330179;
ksol017:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35330179;
ksol017a:solenoid, l:=ldqd, ks := ckl *  0.35330179;
ksol018:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35363129;
ksol018a:solenoid, l:=ldqd, ks := ckl *  0.35363129;
ksol019:solenoid, l:= (.03 - ldqd), ks := ckl *  0.35363129;
ksol019a:solenoid, l:=ldqd, ks := ckl *  0.35363129;
ksol020:solenoid, l:=(.03 - ldqd), ks := ckl *  0.35363129;
ksol020a:solenoid, l:=ldqd, ks := ckl *  0.35363129;

ksol021:solenoid, l:=(.03 - ldqd), ks := ckl*0.35402444;
ksol021a:solenoid, l:=ldqd, ks := ckl*0.35402444;

lksol007:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl * 0.35286206;
lksol007a:solenoid,type=kloe, l:=ldqdl, ks := ckl * 0.35286206;
lksol008:solenoid,type=kloe, l:= (.03 - ldqdl-0.003), ks := ckl *  0.35286206;
lksol008a:solenoid,type=kloe,l:=ldqdl, ks := ckl *  0.35286206;
lksol008b:solenoid, l:= (.003), ks := ckl *  0.35286206;
lksol009:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35286206;
lksol009a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35286206;
lksol010:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35286206;
lksol010a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35286206;
lksol011:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35304376;
lksol011a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35304376;
lksol012:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35304376;
lksol012a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35304376;
lksol013:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35304376;
lksol013a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35304376;
lksol014:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35330179;
lksol014a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35330179;
lksol015:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35330179;
lksol015a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35330179;
lksol016:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35330179;
lksol016a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35330179;
lksol017:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35330179;
lksol017a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35330179;
lksol018:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35363129;
lksol018a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35363129;
lksol019:solenoid,type=kloe, l:= (.03 - ldqdl), ks := ckl *  0.35363129;
lksol019a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35363129;
lksol020:solenoid,type=kloe, l:=(.03 - ldqdl), ks := ckl *  0.35363129;
lksol020a:solenoid,type=kloe, l:=ldqdl, ks := ckl *  0.35363129;

lksol021:solenoid,type=kloe, l:=(.03 - ldqdl), ks := ckl*0.35402444;
lksol021a:solenoid,type=kloe, l:=ldqdl, ks := ckl*0.35402444;

ksol022:solenoid, l:= .03 , ks := ckl * 0.35402444;

//ldqf := .0;     // in the range 0 - 0.03;
//LDQF := 1.011412E-02;  // valore da fit
////// LDQF := 1.596262E-02;   // in file.loc

ksol023:solenoid,l:= (.03 - ldqf) , ks := ckl * 0.35402444;
ksol023a:solenoid,l := ldqf , ks := ckl * 0.35402444;
ksol024:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35447636;
ksol024a:solenoid, l := ldqf, ks := ckl * 0.35447636;
ksol025:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35447636;
ksol025a:solenoid, l := ldqf, ks := ckl * 0.35447636;
ksol026:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35447636;
ksol026a:solenoid, l := ldqf, ks := ckl * 0.35447636;
ksol027:solenoid, l:= (.03 - ldqf-0.00208), ks := ckl * 0.35447636;
ksol027a:solenoid, l := 0.00208, ks := ckl * 0.35447636;
ksol027b:solenoid, l := ldqf, ks := ckl * 0.35447636;

ksol028:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35495791;
ksol028a:solenoid, l := ldqf, ks := ckl * 0.35495791;
ksol029:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35495791;
ksol029a:solenoid, l := ldqf, ks := ckl * 0.35495791;
ksol030:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35495791;
ksol030a:solenoid, l := ldqf, ks := ckl * 0.35495791;
ksol031:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35546935;
ksol031a:solenoid, l := ldqf, ks := ckl * 0.35546935;
ksol032:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35546935;
ksol032a:solenoid, l := ldqf, ks := ckl * 0.35546935;
ksol033:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35546935;
ksol033a:solenoid, l := ldqf, ks := ckl * 0.35546935;
ksol034:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35592148;
ksol034a:solenoid, l := ldqf, ks := ckl * 0.35592148;
ksol035:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35592148;
ksol035a:solenoid, l := ldqf, ks := ckl * 0.35592148;
ksol036:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35592148;
ksol036a:solenoid, l := ldqf, ks := ckl * 0.35592148;
ksol037:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35592148;
ksol037a:solenoid, l := ldqf, ks := ckl * 0.35592148;
ksol038:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35625741;
ksol038a:solenoid, l := ldqf, ks := ckl * 0.35625741;
ksol039:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35625741;
ksol039a:solenoid, l := ldqf, ks := ckl * 0.35625741;
ksol040:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35625741;
ksol040a:solenoid, l := ldqf, ks := ckl * 0.35625741;
ksol041:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35639858;
ksol041a:solenoid, l := ldqf, ks := ckl * 0.35639858;
ksol042:solenoid, l:= (.03 - ldqf), ks := ckl * 0.35639858;
ksol042a:solenoid, l := ldqf, ks := ckl * 0.35639858;

////////LDQFL := 1.596262E-02;  // is for PMQFL  is in file.loc

lksol023:solenoid,type=kloe,l:= (.03 - ldqfl) , ks := ckl * 0.35402444;
lksol023a:solenoid,type=kloe,l:= ldqfl , ks := ckl * 0.35402444;
lksol024:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35447636;
lksol024a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35447636;
lksol025:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35447636;
lksol025a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35447636;
lksol026:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35447636;
lksol026a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35447636;
lksol027:solenoid,type=kloe, l:= (.03 - ldqfl-0.00208),
                                            ks := ckl * 0.35447636;
lksol027a:solenoid,type=kloe, l:= 0.00208, ks := ckl * 0.35447636;
lksol027b:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35447636;

lksol028:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35495791;
lksol028a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35495791;
lksol029:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35495791;
lksol029a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35495791;
lksol030:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35495791;
lksol030a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35495791;
lksol031:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35546935;
lksol031a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35546935;
lksol032:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35546935;
lksol032a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35546935;
lksol033:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35546935;
lksol033a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35546935;
lksol034:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35592148;
lksol034a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35592148;
lksol035:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35592148;
lksol035a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35592148;
lksol036:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35592148;
lksol036a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35592148;
lksol037:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35592148;
lksol037a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35592148;
lksol038:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35625741;
lksol038a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35625741;
lksol039:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35625741;
lksol039a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35625741;
lksol040:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35625741;
lksol040a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35625741;
lksol041:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35639858;
lksol041a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35639858;
lksol042:solenoid,type=kloe, l:= (.03 - ldqfl), ks := ckl * 0.35639858;
lksol042a:solenoid,type=kloe, l:= ldqfl, ks := ckl * 0.35639858;

ksol043:solenoid, l:=.03, ks := ckl * 0.35639858;
ksol044:solenoid, l:=.03, ks := ckl * 0.35617855;
ksol045:solenoid, l:=.03, ks := ckl * 0.35617855;
ksol046:solenoid, l:=.03, ks := ckl * 0.35617855;
ksol047:solenoid, l:=.03, ks := ckl * 0.35577133;
ksol048:solenoid, l:=.03, ks := ckl * 0.35532784;
ksol049:solenoid, l:=.03, ks := ckl * 0.35532784;
ksol050:solenoid, l:=.03, ks := ckl * 0.35532784;
ksol051:solenoid, l:=.03, ks := ckl * 0.35346869;
ksol052:solenoid, l:=.03, ks := ckl * 0.35346869;
ksol053:solenoid, l:=.03, ks := ckl * 0.35169357;
ksol054:solenoid, l:=.03, ks := ckl * 0.34903386;

ksol055:solenoid, l:=.03, ks := ckl * 0.34903386;
ksol056:solenoid, l:=.03, ks := ckl * 0.34457639;
ksol057:solenoid, l:=.03, ks := ckl * 0.34457639;

ksol058:solenoid, l:=(.03-0.0059), ks := ckl * 0.33739188;
ksol058a:solenoid, l:=(.0059), ks := ckl * 0.33739188;

ksol059:solenoid, l:=.03, ks := ckl * 0.32444292;
ksol060:solenoid, l:=.03, ks := ckl * 0.32444292;
ksol061:solenoid, l:=.03, ks := ckl * 0.30320257;
ksol062:solenoid, l:=.03, ks := ckl * 0.30320257;

ksol063:solenoid, l:=.03, ks := ckl * 0.26732418;
ksol064:solenoid, l:=.03, ks := ckl * 0.21931446;
ksol065:solenoid, l:=.03, ks := ckl * 0.21931446;
ksol066:solenoid, l:=.03, ks := ckl * 0.16064404;
ksol067:solenoid, l:=.03, ks := ckl * 0.16064404;


ksol068:solenoid, l:=.03, ks := ckl * 0.10879732;
ksol069:solenoid, l:=.03, ks := ckl * 0.06684543;
ksol070:solenoid, l:=.03, ks := ckl * 0.06684543;
ksol071:solenoid, l:=.03, ks := ckl * 0.04159179;
ksol072:solenoid, l:=.03, ks := ckl * 0.04159179;
ksol073:solenoid, l:=.03, ks := ckl * 0.02591795;
ksol074:solenoid, l:=.03, ks := ckl * 0.01789037;
ksol075:solenoid, l:=.03, ks := ckl * 0.01789037;
ksol076:solenoid, l:=.03, ks := ckl * 0.01299314;
ksol077:solenoid, l:=.03, ks := ckl * 0.01299314;
ksol078:solenoid, l:=.03, ks := ckl * 0.01064069;
ksol079:solenoid, l:=.03, ks := ckl * 0.01064069;
ksol080:solenoid, l:=.03, ks := ckl * 0.01064069;
ksol081:solenoid, l:=.03, ks := ckl * 0.00766341;
ksol082:solenoid, l:=.03, ks := ckl * 0.00766341;
ksol083:solenoid, l:=.03, ks := ckl * 0.00766341;
ksol084:solenoid, l:=.03, ks := ckl * 0.00611976;

ksol085:solenoid, l:=(.03-0.0091), ks := ckl * 0.00611976;
ksol085a:solenoid,l:=.0091,ks := ckl*0.00611976;

ksol086:solenoid, l:=.03, ks := ckl * 0.00611976;
ksol087:solenoid, l:=.03, ks := ckl * 0.00611976;
ksol088:solenoid, l:=.03, ks := ckl * 0.00515393;
ksol089:solenoid, l:=.03, ks := ckl * 0.00515393;
ksol090:solenoid, l:=.03, ks := ckl * 0.00515393;
ksol091:solenoid, l:=.03, ks := ckl * 0.00452191;
ksol092:solenoid, l:=.03, ks := ckl * 0.00452191;
ksol093:solenoid, l:=.03, ks := ckl * 0.00452191;
ksol094:solenoid, l:=.03, ks := ckl * 0.00410458;
ksol095:solenoid, l:=.03, ks := ckl * 0.00410458;
ksol096:solenoid, l:=.03, ks := ckl * 0.00410458;
ksol097:solenoid, l:=.03, ks := ckl * 0.00410458;
ksol098:solenoid, l:=.03, ks := ckl * 0.00382313;
ksol099:solenoid, l:=.03, ks := ckl * 0.00382313;
ksol100:solenoid, l:=.03, ks := ckl * 0.00382313;
ksol101:solenoid, l:=.03, ks := ckl * 0.00363935;
ksol102:solenoid, l:=.03, ks := ckl * 0.00363935;
ksol103:solenoid, l:=.03, ks := ckl * 0.00363935;
ksol104:solenoid, l:=.03, ks := ckl * 0.00352257;
ksol105:solenoid, l:=.03, ks := ckl * 0.00352257;
ksol106:solenoid, l:=.03, ks := ckl * 0.00352257;
ksol107:solenoid, l:=.03, ks := ckl * 0.00352257;
ksol108:solenoid, l:=.03, ks := ckl * 0.00344051;
ksol109:solenoid, l:=.03, ks := ckl * 0.00344051;
ksol110:solenoid, l:=.03, ks := ckl * 0.00344051;
ksol111:solenoid, l:=.03, ks := ckl * 0.00338265;
ksol112:solenoid, l:=.03, ks := ckl * 0.00338265;

// QD0s  gradient integral 6.64082 T;

cqd0sp := 0.9882*(br0/bro) * qdrfudge; // normalization to the Aster value 6.722;
midQD:marker;
// bQD0s:SBEND,L=0.0,ANGLE= 0.07154,k1= 0.0,e1=0,e2=0;   // bending nel QD per chiudere il survay
ip1ca := ip1_cross_ang * 1.E3;
mqd0 :multipole, knl :={ 0.0}; 

kds15 := -cqd0sp* 0.0013280;
kds14 := -cqd0sp* 0.0062770;
kds13 := -cqd0sp* 0.036309;
kds12 := -cqd0sp* 0.20053;
kds11 := -cqd0sp* 0.44246;
kds10 := -cqd0sp* 0.51449;
kds9 := -cqd0sp*  0.52690;
kds8 := -cqd0sp*  0.52675;
kds7 := -cqd0sp*  0.51848;
kds6 := -cqd0sp*  0.49280;
kds5 := -cqd0sp*  0.41871;   
kds4 := -cqd0sp*  0.19965 ;
kds3 := -cqd0sp*  0.033807 ;
kds2 := -cqd0sp*  0.0052610 ; 
kds1 := -cqd0sp*  0.0011306;

// x displacement obtained tracking from IP with -1 mrd H angle 
SQDS1 := -0.2050E-3;
SQDS2 := -0.2350E-3;
SQDS3 := -0.2651E-3;
SQDS4 := -0.2954E-3;
SQDS5 := -0.3274E-3;
SQDS6 := -0.3636E-3;
SQDS7 := -0.4050E-3;
SQDS8 := -0.4527E-3;
SQDS9 := -0.5075E-3;
SQDS10:= -0.5703E-3;
SQDS11:= -0.6418E-3;
SQDS12:= -0.7217E-3;
SQDS13:= -0.8059E-3;
SQDS14:= -0.8910E-3;
SQDS15:= -0.9763E-3;

aqds15 := SQDS15 * ip1ca * kds15 * saqds;
aqds14 := SQDS14 * ip1ca * kds14 *saqds;
aqds13 := SQDS13 * ip1ca * kds13 *saqds;
aqds12 := SQDS12 * ip1ca * kds12 *saqds;
aqds11 := SQDS11 * ip1ca * kds11 *saqds;
aqds10 := SQDS10 * ip1ca * kds10 *saqds;
aqds9  := SQDS9* ip1ca * kds9 *saqds;
aqds8 := SQDS8 * ip1ca * kds8 *saqds;
aqds7 := SQDS7 * ip1ca * kds7 *saqds;
aqds6 := SQDS6 * ip1ca * kds6 *saqds;
aqds5 := SQDS5 * ip1ca * kds5 *saqds ;
aqds4 := SQDS4 * ip1ca * kds4 *saqds;
aqds3 := SQDS3 * ip1ca * kds3 *saqds;
aqds2 := SQDS2 * ip1ca * kds2 *saqds; 
aqds1 := SQDS1 * ip1ca * kds1 *saqds;

qd0s15:multipole, knl :={ aqds15, kds15},tilt := qdsTilt;
qd0s14:multipole, knl :={ aqds14,  kds14},tilt := qdsTilt;
qd0s13:multipole, knl :={ aqds13,  kds13},tilt := qdsTilt;
qd0s12:multipole, knl :={ aqds12,  kds12},tilt := qdsTilt;
qd0s11:multipole, knl :={ aqds11,  kds11},tilt := qdsTilt;
qd0s10:multipole, knl :={ aqds10,  kds10},tilt := qdsTilt;
qd0s9:multipole, knl :={ aqds9,  kds9},tilt := qdsTilt;
qd0s8:multipole, knl :={ aqds8,  kds8},tilt := qdsTilt;
qd0s7:multipole, knl :={ aqds7,  kds7},tilt := qdsTilt;
qd0s6:multipole, knl :={ aqds6,  kds6},tilt := qdsTilt;
qd0s5:multipole, knl :={ aqds5,  kds5},tilt := qdsTilt;
qd0s4:multipole, knl :={ aqds4,  kds4},tilt := qdsTilt;
qd0s3:multipole, knl :={ aqds3,  kds3},tilt := qdsTilt;
qd0s2:multipole, knl :={ aqds2,  kds2},tilt := qdsTilt;
qd0s1:multipole, knl :={ aqds1,  kds1},tilt := qdsTilt;


// x displacement obtained tracking from IP with 1 mrd H angle 
 cqd0lp := 0.9882*(br0/bro) * qdlfudge; // normalization to the Aster value 6.722


SQDL1 := 0.2050E-3;
SQDL2 := 0.2350E-3;
SQDL3 := 0.2651E-3;
SQDL4 := 0.2954E-3;
SQDL5 := 0.3274E-3;
SQDL6 := 0.3636E-3;
SQDL7 := 0.4050E-3;
SQDL8 := 0.4527E-3;
SQDL9 := 0.5075E-3;
SQDL10:= 0.5703E-3;
SQDL11:= 0.6418E-3;
SQDL12:= 0.7217E-3;
SQDL13:= 0.8059E-3;
SQDL14:= 0.8910E-3;
SQDL15:= 0.9763E-3;

kdl15 := -cqd0lp* 0.0013280;
kdl14 := -cqd0lp* 0.0062770;
kdl13 := -cqd0lp* 0.036309;
kdl12 := -cqd0lp* 0.20053;
kdl11 := -cqd0lp* 0.44246;
kdl10 := -cqd0lp* 0.51449;
kdl9 := -cqd0lp*  0.52690;
kdl8 := -cqd0lp*  0.52675;
kdl7 := -cqd0lp*  0.51848;
kdl6 := -cqd0lp*  0.49280;
kdl5 := -cqd0lp*  0.41871;
kdl4 := -cqd0lp*  0.19965;
kdl3 := -cqd0lp*  0.033807;
kdl2 := -cqd0lp*  0.0052610;
kdl1 := -cqd0lp*  0.0011306;

aqdl15 := SQDL15 * ip1ca * kdl15  *saqdl;
aqdl14 := SQDL14 * ip1ca * kdl14  *saqdl;
aqdl13 := SQDL13 * ip1ca * kdl13  *saqdl;
aqdl12 := SQDL12 * ip1ca * kdl12  *saqdl;
aqdl11 := SQDL11 * ip1ca * kdl11  *saqdl;
aqdl10 := SQDL10 * ip1ca * kdl10  *saqdl;
aqdl9  := SQDL9 * ip1ca * kdl9 * saqdl;
aqdl8 := SQDL8 * ip1ca * kdl8  * saqdl;
aqdl7 := SQDL7 * ip1ca * kdl7  * saqdl;
aqdl6 := SQDL6 * ip1ca * kdl6  * saqdl;
aqdl5 := SQDL5 * ip1ca * kdl5  * saqdl ;
aqdl4 := SQDL4 * ip1ca * kdl4  * saqdl;
aqdl3 := SQDL3 * ip1ca * kdl3  * saqdl;
aqdl2 := SQDL2 * ip1ca * kdl2  * saqdl ;
aqdl1 := SQDL1 * ip1ca * kdl1  * saqdl;


// QD0l  gradient integral 6.64082 T

midQD:marker;

qd0l15: multipole, knl :={ aqdl15, kdl15}, tilt:=qdlTilt;
qd0l14: multipole, knl :={ aqdl14, kdl14}, tilt:=qdlTilt;
qd0l13: multipole, knl :={ aqdl13, kdl13}, tilt:=qdlTilt;
qd0l12: multipole, knl :={ aqdl12, kdl12}, tilt:=qdlTilt;
qd0l11: multipole, knl :={ aqdl11, kdl11}, tilt:=qdlTilt;
qd0l10: multipole, knl :={ aqdl10, kdl10}, tilt:=qdlTilt;
qd0l9:  multipole, knl :={ aqdl9, kdl9},  tilt:=qdlTilt;
qd0l8:  multipole, knl :={ aqdl8, kdl8},  tilt:=qdlTilt;
qd0l7:  multipole, knl :={ aqdl7, kdl7}, tilt:=qdlTilt;
qd0l6:  multipole, knl :={ aqdl6, kdl6}, tilt:=qdlTilt;
qd0l5:  multipole, knl :={ aqdl5, kdl5}, tilt:=qdlTilt;
qd0l4:  multipole, knl :={ aqdl4, kdl4}, tilt:=qdlTilt;
qd0l3:  multipole, knl :={ aqdl3, kdl3}, tilt:=qdlTilt;
qd0l2:  multipole, knl :={ aqdl2, kdl2}, tilt:=qdlTilt;
qd0l1:  multipole, knl :={ aqdl1, kdl1}, tilt:=qdlTilt;


//comment
dpmh1 :=  -0.0064708 / br0 * cdpmH;
dpmh2 :=  -0.0040631 / br0 * cdpmH;
dpmh3 :=  -0.00088213 / br0 * cdpmH;
dpmh4 :=  -0.00014599 / br0 * cdpmH;
dpmh5 :=  -3.4250e-05 / br0 * cdpmH;
dpmh6 :=  -1.0950e-05 / br0 * cdpmH;
dpmh7 :=  -4.3000e-06 / br0 * cdpmH;

dpmv1 :=  -0.0064708 / br0 * cdpmV;
dpmv2 :=  -0.0040631 / br0 * cdpmV;
dpmv3 :=  -0.00088213 / br0 * cdpmV;
dpmv4 :=  -0.00014599 / br0 * cdpmV;
dpmv5 :=  -3.4250e-05 / br0 * cdpmV;
dpmv6 :=  -1.0950e-05 / br0 * cdpmV;
dpmv7 :=  -4.3000e-06 / br0 * cdpmV;
//endcomment

dpm13: kicker,l:=0.0, hkick := dpmh7, vkick := dpmv7;
dpm12: kicker,l:=0.0, hkick := dpmh6, vkick := dpmv6;
dpm11: kicker,l:=0.0, hkick := dpmh5, vkick := dpmv5;
dpm10: kicker,l:=0.0, hkick := dpmh4, vkick := dpmv4;
dpm9: kicker,l:=0.0, hkick := dpmh3, vkick := dpmv3;
dpm8: kicker,l:=0.0, hkick := dpmh2, vkick := dpmv2;

dpm1: kicker,l:=0.0, hkick := dpmh1, vkick := dpmv1;
dpm2: kicker,l:=0.0, hkick := dpmh2, vkick := dpmv2;
dpm3: kicker,l:=0.0, hkick := dpmh3, vkick := dpmv3;
dpm4: kicker,l:=0.0, hkick := dpmh4, vkick := dpmv4;
dpm5: kicker,l:=0.0, hkick := dpmh5, vkick := dpmv5;
dpm6: kicker,l:=0.0, hkick := dpmh6, vkick := dpmv6;
dpm7: kicker,l:=0.0, hkick := dpmh7, vkick := dpmv7;


// QF1s , gradient integral 3.00681
cqf1s :=1.0044*(br0/bro) * qfrfudge;   // Qf short normalization to the Aster value 3.020

midQf:marker;

qf1s1 :multipole, knl :={0, cqf1s*1.0740e-05}, tilt := qfsTilt;
qf1s2 :multipole, knl :={0, cqf1s*2.0072e-05}, tilt := qfsTilt;
qf1s3 :multipole, knl :={0, cqf1s*5.4399e-05}, tilt := qfsTilt;
qf1s4 :multipole, knl :={0, cqf1s*0.00023776}, tilt := qfsTilt;
qf1s5 :multipole, knl :={0, cqf1s*0.0020516}, tilt := qfsTilt;
qf1s6 :multipole, knl :={0, cqf1s*0.031433}, tilt := qfsTilt;
qf1s7 :multipole, knl :={0, cqf1s*0.15960}, tilt := qfsTilt;
qf1s8 :multipole, knl :={0, cqf1s*0.20950}, tilt := qfsTilt;
qf1s9 :multipole, knl :={0, cqf1s*0.21762}, tilt := qfsTilt;
qf1s10:multipole, knl :={0, cqf1s*0.22292}, tilt := qfsTilt;
qf1s11:multipole, knl :={0, cqf1s*0.23390}, tilt := qfsTilt;
qf1s12:multipole, knl :={0, cqf1s*0.23669 }, tilt := qfsTilt;
qf1s13:multipole, knl :={0, cqf1s*0.22367}, tilt := qfsTilt;
qf1s14:multipole, knl :={0, cqf1s*0.18216}, tilt := qfsTilt;
qf1s15:multipole, knl :={0, cqf1s*0.052144}, tilt := qfsTilt;
qf1s16:multipole, knl :={0, cqf1s*0.0036362}, tilt := qfsTilt;
qf1s17:multipole, knl :={0, cqf1s*0.00038326}, tilt := qfsTilt;
qf1s18:multipole, knl :={0, cqf1s*8.2333e-05}, tilt := qfsTilt;
qf1s19:multipole, knl :={0, cqf1s*2.8301e-05}, tilt := qfsTilt;
qf1s20:multipole, knl :={0, cqf1s*1.3581e-05}, tilt := qfsTilt;


// QF1l , gradient integral 3.00681 RIVEDI
cqf1l :=1.0044*(br0/bro) * qflfudge;   // Qf long

midQf:marker;

qf1l1 :multipole, knl:={ 0,cqf1l*1.0740e-05}, tilt := qflTilt;
qf1l2 :multipole, knl:={ 0,cqf1l*2.0072e-05}, tilt := qflTilt;
qf1l3 :multipole, knl:={ 0,cqf1l*5.4399e-05}, tilt := qflTilt;
qf1l4 :multipole, knl:={ 0,cqf1l*0.00023776}, tilt := qflTilt;
qf1l5 :multipole, knl:={ 0,cqf1l*0.0020516}, tilt := qflTilt;
qf1l6 :multipole, knl:={ 0,cqf1l*0.031433}, tilt := qflTilt;
qf1l7 :multipole, knl:={ 0,cqf1l*0.15960}, tilt := qflTilt;
qf1l8 :multipole, knl:={ 0,cqf1l*0.20950}, tilt := qflTilt;
qf1l9 :multipole, knl:={ 0,cqf1l*0.21762}, tilt := qflTilt;
qf1l10:multipole, knl:={ 0,cqf1l*0.22292}, tilt := qflTilt;
qf1l11:multipole, knl:={ 0,cqf1l*0.23390}, tilt := qflTilt;
qf1l12:multipole, knl:={ 0,cqf1l*0.23669 },tilt := qflTilt;
qf1l13:multipole, knl:={ 0,cqf1l*0.22367}, tilt := qflTilt;
qf1l14:multipole, knl:={ 0,cqf1l*0.18216}, tilt := qflTilt;
qf1l15:multipole, knl:={ 0,cqf1l*0.052144},tilt := qflTilt;
qf1l16:multipole, knl:={ 0,cqf1l*0.0036362}, tilt := qflTilt;
qf1l17:multipole, knl:={ 0,cqf1l*0.00038326}, tilt := qflTilt;
qf1l18:multipole, knl:={ 0,cqf1l*8.2333e-05}, tilt := qflTilt;
qf1l19:multipole, knl:={ 0,cqf1l*2.8301e-05}, tilt := qflTilt;
qf1l20:multipole, knl:={ 0,cqf1l*1.3581e-05}, tilt := qflTilt;

//  compensatore short C2
midC2:marker;
DSK2  :=   ccomp2*(br0/bro)/100;        // ccomp2  solenoid current

csol113:solenoid, l := 0.030,ks :=    -0.0023039*dsk2;
csol114:solenoid, l := 0.030,ks :=    -0.0085916*dsk2;
csol115:solenoid, l := 0.030,ks :=    -0.0184451*dsk2;
csol116:solenoid, l := 0.030,ks :=    -0.0338546*dsk2;
csol117:solenoid, l := 0.030,ks :=    -0.0579185*dsk2;
csol118:solenoid, l := 0.030,ks :=    -0.0952787*dsk2;
csol119:solenoid, l := 0.030,ks :=    -0.1522263*dsk2;
csol120:solenoid, l := 0.030,ks :=    -0.2353594*dsk2;
csol121:solenoid, l := 0.030,ks :=    -0.3470866*dsk2;
csol122:solenoid, l := 0.030,ks :=    -0.4788136*dsk2;
csol123:solenoid, l := 0.030,ks :=    -0.6094956*dsk2;
csol124:solenoid, l := 0.030,ks :=    -0.7160863*dsk2;
csol125:solenoid, l := 0.030,ks :=    -0.7866391*dsk2;
csol126:solenoid, l := 0.030,ks :=    -0.8225990*dsk2;
csol127:solenoid, l := 0.030,ks :=    -0.8323821*dsk2;
csol128:solenoid, l := 0.030,ks :=    -0.8253574*dsk2;
csol129:solenoid, l := 0.030,ks :=    -0.8092294*dsk2;
csol130:solenoid, l := 0.030,ks :=    -0.7895287*dsk2;
csol131:solenoid, l := 0.030,ks :=    -0.7698788*dsk2;
csol132:solenoid, l := 0.030,ks :=    -0.7524589*dsk2;
csol133:solenoid, l := 0.030,ks :=    -0.7384591*dsk2;
csol134:solenoid, l := 0.030,ks :=    -0.7284570*dsk2;
csol135:solenoid, l := 0.030,ks :=    -0.7226936*dsk2;
csol136:solenoid, l := 0.015,ks :=    -0.7212492*dsk2;
csol136a:solenoid, l := 0.015,ks :=    -0.7212492*dsk2;        // center
csol137:solenoid, l := 0.030,ks :=    -0.7241377*dsk2;
csol138:solenoid, l := 0.030,ks :=    -0.7313288*dsk2;
csol139:solenoid, l := 0.030,ks :=    -0.7427031*dsk2;
csol140:solenoid, l := 0.030,ks :=    -0.7579318*dsk2;
csol141:solenoid, l := 0.030,ks :=    -0.7762684*dsk2;
csol142:solenoid, l := 0.030,ks :=    -0.7962402*dsk2;
csol143:solenoid, l := 0.030,ks :=    -0.8152397*dsk2;
csol144:solenoid, l := 0.030,ks :=    -0.8290553*dsk2;
csol145:solenoid, l := 0.030,ks :=    -0.8314412*dsk2;
csol146:solenoid, l := 0.030,ks :=    -0.8140132*dsk2;
csol147:solenoid, l := 0.030,ks :=    -0.7672727*dsk2;
csol148:solenoid, l := 0.030,ks :=    -0.6843033*dsk2;
csol149:solenoid, l := 0.030,ks :=    -0.5676320*dsk2;
csol150:solenoid, l := 0.030,ks :=    -0.4338248*dsk2;
csol151:solenoid, l := 0.030,ks :=    -0.3069450*dsk2;
csol152:solenoid, l := 0.030,ks :=    -0.2044737*dsk2;
csol153:solenoid, l := 0.030,ks :=    -0.1306867*dsk2;
csol154:solenoid, l := 0.030,ks :=    -0.0810509*dsk2;
csol155:solenoid, l := 0.030,ks :=    -0.0487574*dsk2;
csol156:solenoid, l := 0.030,ks :=    -0.0280215*dsk2;
csol157:solenoid, l := 0.030,ks :=    -0.0147577*dsk2;
csol158:solenoid, l := 0.030,ks :=    -0.0062863*dsk2;
csol159:solenoid, l := 0.030,ks :=    -0.0008959*dsk2;

//  compensatore  long C1
midC1:marker;
DSK1  :=   ccomp1*(br0/bro)/100;        // ccomp2  solenoid current

csll113:solenoid, l := 0.030,ks := -0.0023039*dsk1;
csll114:solenoid, l := 0.030,ks := -0.0085916*dsk1;
csll115:solenoid, l := 0.030,ks := -0.0184451*dsk1;
csll116:solenoid, l := 0.030,ks := -0.0338546*dsk1;
csll117:solenoid, l := 0.030,ks := -0.0579185*dsk1;
csll118:solenoid, l := 0.030,ks := -0.0952787*dsk1;
csll119:solenoid, l := 0.030,ks := -0.1522263*dsk1;
csll120:solenoid, l := 0.030,ks := -0.2353594*dsk1;
csll121:solenoid, l := 0.030,ks := -0.3470866*dsk1;
csll122:solenoid, l := 0.030,ks := -0.4788136*dsk1;
csll123:solenoid, l := 0.030,ks := -0.6094956*dsk1;
csll124:solenoid, l := 0.030,ks := -0.7160863*dsk1;
csll125:solenoid, l := 0.030,ks := -0.7866391*dsk1;
csll126:solenoid, l := 0.030,ks := -0.8225990*dsk1;
csll127:solenoid, l := 0.030,ks := -0.8323821*dsk1;
csll128:solenoid, l := 0.030,ks := -0.8253574*dsk1;
csll129:solenoid, l := 0.030,ks := -0.8092294*dsk1;
csll130:solenoid, l := 0.030,ks := -0.7895287*dsk1;
csll131:solenoid, l := 0.030,ks := -0.7698788*dsk1;
csll132:solenoid, l := 0.030,ks := -0.7524589*dsk1;
csll133:solenoid, l := 0.030,ks := -0.7384591*dsk1;
csll134:solenoid, l := 0.030,ks := -0.7284570*dsk1;
csll135:solenoid, l := 0.030,ks := -0.7226936*dsk1;
csll136:solenoid, l := 0.030,ks := -0.7212492*dsk1;     // center
csll137:solenoid, l := 0.030,ks := -0.7241377*dsk1;
csll138:solenoid, l := 0.030,ks := -0.7313288*dsk1;
csll139:solenoid, l := 0.030,ks := -0.7427031*dsk1;
csll140:solenoid, l := 0.030,ks := -0.7579318*dsk1;
csll141:solenoid, l := 0.030,ks := -0.7762684*dsk1;
csll142:solenoid, l := 0.030,ks := -0.7962402*dsk1;
csll143:solenoid, l := 0.030,ks := -0.8152397*dsk1;
csll144:solenoid, l := 0.030,ks := -0.8290553*dsk1;
csll145:solenoid, l := 0.030,ks := -0.8314412*dsk1;
csll146:solenoid, l := 0.030,ks := -0.8140132*dsk1;
csll147:solenoid, l := 0.030,ks := -0.7672727*dsk1;
csll148:solenoid, l := 0.030,ks := -0.6843033*dsk1;
csll149:solenoid, l := 0.030,ks := -0.5676320*dsk1;
csll150:solenoid, l := 0.030,ks := -0.4338248*dsk1;
csll151:solenoid, l := 0.030,ks := -0.3069450*dsk1;
csll152:solenoid, l := 0.030,ks := -0.2044737*dsk1;
csll153:solenoid, l := 0.030,ks := -0.1306867*dsk1;
csll154:solenoid, l := 0.030,ks := -0.0810509*dsk1;
csll155:solenoid, l := 0.030,ks := -0.0487574*dsk1;
csll156:solenoid, l := 0.030,ks := -0.0280215*dsk1;
csll157:solenoid, l := 0.030,ks := -0.0147577*dsk1;
csll158:solenoid, l := 0.030,ks := -0.0062863*dsk1;
csll159:solenoid, l := 0.030,ks := -0.0008959*dsk1;


// New low beta insertion KLOE: DF doublet         Oct 2009

IP1:marker;

DSOL1k:   line:=(ksol001,ksol002,ksol003,ksol004,ksol005);

QDSSOL:   line:=(ksol006,ksol007,qd0s1,ksol007a,ksol008b,BPBI1001,
                ksol008,qd0s2,ksol008a,ksol009,qd0s3,
                ksol009a,ksol010,qd0s4,
                ksol010a,ksol011,qd0s5,ksol011a,ksol012,qd0s6,
                ksol012a,ksol013,qd0s7,ksol013a,
                ksol014,qd0s8,midqd,mqd0,ksol014a,ksol015,qd0s9,
                ksol015a,ksol016,qd0s10,ksol016a,ksol017,qd0s11,
                ksol017a,ksol018,qd0s12,ksol018a,ksol019,qd0s13,
                ksol019a,ksol020,qd0s14,ksol020a,ksol021,qd0s15,
                ksol021a,ksol022);

QDLSOL:   line:=(ksol006,lksol007,qd0l1,lksol007a,lksol008b,BPBI1002,
                lksol008,qd0l2,lksol008a,lksol009,qd0l3,
                lksol009a,lksol010,qd0l4,
                lksol010a,lksol011,qd0l5,lksol011a,lksol012,qd0l6,
                lksol012a,lksol013,qd0l7,lksol013a,
                lksol014,qd0l8,midqd,mqd0,lksol014a,lksol015,qd0l9,
                lksol015a,lksol016,qd0l10,lksol016a,lksol017,qd0l11,
                lksol017a,lksol018,qd0l12,lksol018a,lksol019,qd0l13,
                lksol019a,lksol020,qd0l14,lksol020a,lksol021,qd0l15,
                lksol021a,ksol022);

QFSSOL:  line:=(ksol023,qf1s1,ksol023a,ksol024,qf1s2,ksol024a,ksol025,
                qf1s3,ksol025a,ksol026,qf1s4,ksol026a,ksol027,ksol027a,
                qf1s5,ksol027b,ksol028,qf1s6,ksol028a,ksol029,qf1s7,
                ksol029a,ksol030,qf1s8,ksol030a,ksol031,qf1s9,
                ksol031a,ksol032,qf1s10,midqf,ksol032a,ksol033,qf1s11,
                ksol033a,dpm13,ksol034,qf1s12,ksol034a,dpm12,
                ksol035,qf1s13,ksol035a,dpm11,ksol036,qf1s14 ,ksol036a,
                dpm10,dpm13,ksol037,qf1s15,ksol037a,dpm9,dpm12,
                ksol038,qf1s16,ksol038a,dpm8,dpm11,
                ksol039,qf1s17,ksol039a,dpm1,dpm10,ksol040,
                qf1s18,ksol040a,dpm2,dpm9,
                ksol041,qf1s19,ksol041a,dpm3,dpm8,
                ksol042,qf1s20,ksol042a);

QFLSOL:  line:=(lksol023,qf1l1,lksol023a,lksol024,qf1l2,lksol024a,lksol025,
                qf1l3,lksol025a,lksol026,qf1l4,lksol026a,lksol027,BPBPL112,
              lksol027a,qf1l5,lksol027b,lksol028,qf1l6,lksol028a,lksol029,qf1l7,
                lksol029a,lksol030,qf1l8,lksol030a,lksol031,qf1l9,
                lksol031a,lksol032,qf1l10,midqf,lksol032a,lksol033,qf1l11,
                lksol033a,dpm13,lksol034,qf1l12,lksol034a,dpm12,
                lksol035,qf1l13,lksol035a,dpm11,lksol036,qf1l14 ,lksol036a,
                dpm10,dpm13,lksol037,qf1l15,lksol037a,dpm9,dpm12,
                lksol038,qf1l16,lksol038a,dpm8,dpm11,
                lksol039,qf1l17,lksol039a,dpm1,dpm10,lksol040,
                qf1l18,lksol040a,dpm2,dpm9,
                lksol041,qf1l19,lksol041a,dpm3,dpm8,
                lksol042,qf1l20,lksol042a);

DSOL2ks:   line:=(dpm4,dpm1,ksol043,dpm5,dpm2,ksol044,
             dpm6,dpm3,ksol045,dpm7,dpm4,ksol046,
             dpm5,ksol047,dpm6,ksol048,
             dpm7,ksol049,ksol050,
             ksol051,ksol052,ksol053,ksol054,
             ksol055,ksol056,ksol057,ksol058,
             BPBPS198,ksol058a,ksol059,ksol060,
             ksol061,ksol062,ksol063,ksol064,
             ksol065,ksol066, 
             ksol067,ksol068,ksol069,ksol070,ksol071,ksol072,
             ksol073,ksol074,ksol075,ksol076,
             ksol077,ksol078,ksol079,ksol080,
             ksol081,ksol082,ksol083,ksol084,
             ksol085,BPBPS199,ksol085a,ksol086,ksol087,ksol088,
             qskps100,ksol089,ksol090,ksol091,ksol092,
             ksol093,ksol094,ksol095,ksol096,
             ksol097,ksol098,CHVPS100,ksol099,ksol100,
             ksol101,ksol102,ksol103,ksol104,
             ksol105,ksol106,ksol107,ksol108,
             ksol109,ksol110,ksol111,ksol112);

DSOL2kl:   line:=(dpm4,dpm1,ksol043,dpm5,dpm2,ksol044,
             dpm6,dpm3,ksol045,dpm7,dpm4,ksol046,
             dpm5,ksol047,dpm6,ksol048,
             dpm7,ksol049,ksol050,
             ksol051,ksol052,ksol053,ksol054,
             ksol055,ksol056,ksol057,ksol058,
             BPBPL111,ksol058a,ksol059,ksol060,
             ksol061,ksol062,ksol063,ksol064,
             ksol065,ksol066, 
             ksol067,ksol068,ksol069,ksol070,ksol071,ksol072,
             ksol073,ksol074,ksol075,ksol076,
             ksol077,ksol078,ksol079,ksol080,
             ksol081,ksol082,ksol083,ksol084,
             ksol085,BPBPL110,ksol085a,ksol086,ksol087,
             ksol088,qskpl107,ksol089,ksol090,ksol091,ksol092,
             ksol093,ksol094,ksol095,ksol096,
             ksol097,ksol098,CHVPL107,ksol099,ksol100,
             ksol101,ksol102,ksol103,ksol104,
             ksol105,ksol106,ksol107,ksol108,
             ksol109,ksol110,ksol111,ksol112);

KLOEsCW:   line=(DSOL1k,QDSSOL,QFSSOL,DSOL2ks);

KLOElCW:   line=(-DSOL2kl,-QFLSOL,-QDLSOL,-DSOL1k);

SOLI1002: line=(csol113,csol114,csol115,csol116,csol117,csol118,
       csol119,csol120,csol121,csol122,csol123,csol124,
       csol125,csol126,csol127,csol128,csol129,csol130,
       csol131,csol132,csol133,csol134,csol135,csol136,midC2,
       csol136a,csol137,csol138,csol139,csol140,csol141,csol142,
       csol143,csol144,csol145,csol146,csol147,csol148,
       csol149,csol150,csol151,csol152,csol153,csol154,
       csol155,csol156,csol157,csol158,csol159);


SOLI1001: line=(csll113,csll114,csll115,csll116,csll117,csll118,
       csll119,csll120,csll121,csll122,csll123,csll124,
       csll125,csll126,csll127,csll128,csll129,csll130,
       csll131,csll132,csll133,csll134,csll135,csll136,
       csll137,csll138,csll139,csll140,csll141,csll142,
       csll143,csll144,csll145,csll146,csll147,csll148,
       csll149,csll150,csll151,csll152,csll153,csll154,
       csll155,csll156,csll157,csll158,csll159);

return;

