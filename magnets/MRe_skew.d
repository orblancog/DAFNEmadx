// ===========================================
// ELESCTRON RING SKEW QUADRUPOLES DEFINITION
// ===========================================
//
// Notes:
// ------
// skew parameters
lsk  := 0.20; // lenght
csk  := 2.80E-3; 
lsks := 0.10;
cskir := 0.0185/br0;

//Tqsk := 0.535; // Tilt angle for QSKES100
//Tquas := -2.396116E-01;
//Tqlk := -0.535; // Tilt angle for QSKEL107
//Tqual := 2.396116E-01;



// QSKES100:quadrupole,l:=lsks/2,tilt,k1:=ksks100;
// QSKEL107:quadrupole,l:=lsks/2,tilt,k1:=kskl107;
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


QSKEL103_H:quad,l:=lsk/2,tilt,k1:=kskl103;
QSKEL103: line=(QSKEL103_H,CHVEL103,QSKEL103_H);
QSKEL106_H:quad,l:=lsk/2,tilt,k1:=kskl106;
QSKEL106: line=(QSKEL106_H,CHVEL106,QSKEL106_H);
QSKEL107:multipole,type=sk, knl:={ 0,kskl107},tilt :=Tqlk;   // Tqual
QSKES100:multipole,type=sk, knl:={ 0,ksks100},tilt := Tqsk;  // Tquas

QSKES101_H:quad,l:=lsk/2,tilt,k1:=ksks101;
QSKES101: line=(QSKES101_H,CHVES101,QSKES101_H);

QSKES104_H:quad,l:=lsk/2,tilt,k1:=ksks104;
QSKES104: line=(QSKES104_H,CHVES104,QSKES104_H);

QSKES202_H:quad,l:=lsk/2,tilt,k1:=ksks202;
QSKES202: line=(QSKES202_H,CHVES202,QSKES202_H);

QSKES205_H:quad,l:=lsk/2,tilt,k1:=ksks205;
QSKES205: line=(QSKES205_H,CHVES205,QSKES205_H);

QSKEL201_H:quad,l:=lsk/2,tilt,k1:=kskl201;
QSKEL201: line=(QSKEL201_H,CHVEL201,QSKEL201_H);

QSKEL204_H:quad,l:=lsk/2,tilt,k1:=kskl204;
QSKEL204: line=(QSKESL04_H,CHVEL204,QSKLS204_H);
return;
