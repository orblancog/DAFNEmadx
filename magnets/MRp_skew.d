// ===========================================
// POSITRON RING SKEW QUADRUPOLES DEFINITION
// ===========================================
//
// Notes:
// ------
// skew parameters
lsk  := 0.20; // lenght
csk  := 2.80E-3; 
lsks := 0.10;
cskir := 0.0185/br0;

//Tqsk := 0.535; // Tilt angle for QSKPS100
//Tquas := -2.396116E-01;
//Tqlk := -0.535; // Tilt angle for QSKPL107
//Tqual := 2.396116E-01;



// QSKPS100:quadrupole,l:=lsks/2,tilt,k1:=ksks100;
// QSKPL107:quadrupole,l:=lsks/2,tilt,k1:=kskl107;
// ksks100 := csk * (iskews100 + diskews100);
// kskl107 := csk * (iskewl107 + diskewl107);

//ksks100 := cskir * (css100 + diskews100);
//kskl107 := cskir * (csl107 + diskewl107);


ksks101 := csk * (iskews101 + diskews101);
ksks104 := csk * (iskews104 + diskews104);
ksks202 := csk * (iskews202 + diskews202);
ksks205 := csk * (iskews205 + diskews205);
kskl103 := csk * (iskewl103 + diskewl103);
kskl106 := csk * (iskewl106 + diskewl106);
kskl201 := csk * (iskewl201 + diskewl201);
kskl204 := csk * (iskewl204 + diskewl204);


QSKPL103_H:quad,l:=lsk/2,tilt,k1:=kskl103;
QSKPL103: line=(QSKPL103_H,CHVPL103,QSKPL103_H);
QSKPL106_H:quad,l:=lsk/2,tilt,k1:=kskl106;
QSKPL106: line=(QSKPL106_H,CHVPL106,QSKPL106_H);
QSKPL107:multipole,type=sk, knl:={ 0,kskl107},tilt :=Tqlk;   // Tqual
QSKPS100:multipole,type=sk, knl:={ 0,ksks100},tilt := Tqsk;  // Tquas

QSKPS101_H:quad,l:=lsk/2,tilt,k1:=ksks101;
QSKPS101: line=(QSKPS101_H,CHVPS101,QSKPS101_H);

QSKPS104_H:quad,l:=lsk/2,tilt,k1:=ksks104;
QSKPS104: line=(QSKPS104_H,CHVPS104,QSKPS104_H);

QSKPS202_H:quad,l:=lsk/2,tilt,k1:=ksks202;
QSKPS202: line=(QSKPS202_H,CHVPS202,QSKPS202_H);

QSKPS205_H:quad,l:=lsk/2,tilt,k1:=ksks205;
QSKPS205: line=(QSKPS205_H,CHVPS205,QSKPS205_H);

QSKPL201_H:quad,l:=lsk/2,tilt,k1:=kskl201;
QSKPL201: line=(QSKPL201_H,CHVPL201,QSKPL201_H);

QSKPL204_H:quad,l:=lsk/2,tilt,k1:=kskl204;
QSKPL204: line=(QSKPSL04_H,CHVPL204,QSKLS204_H);
return;
