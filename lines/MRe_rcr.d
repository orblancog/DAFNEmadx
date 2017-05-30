// =====================================================================
// ELECTRON RING CROSSING REGION (IP2) DEFINITION
// =====================================================================
//
// Notes:
// ------
// Complex magnets (multipole components, special elements inside)
// are simulated as lines of segments. The name of the physical object
// is used for the equivalent line segment. 
//
// ---------------------------------------------------------------------

LSTAR_2 :=  0.130911;
LIR2_2  :=  0.462277;
LIR2_21 :=  0.003701;
LIR2_22 :=  0.032277; 
LIR3_2  :=  0.5140480;
LIR3_3  :=  0.3305000;

dstar_2: drift,l=lstar_2;
dir2_2:  drift,l=lir2_2;
dir2_21: drift,l=lir2_21;
dir2_22: drift,l=lir2_22;
dir3_2:  drift,l=lir3_2;
dir3_3:  drift,l=lir3_3;

// large aperture quads
dh_QI2001:  multipole,knl = { angh_QI2001};
dh_QI2002:  multipole,knl = { angh_QI2002};
dh_QI2006:  multipole,knl = {-angh_QI2002};
dh_QI2006l: multipole,knl = { angh_QI2006};
dh_QI2006s: multipole,knl = {-angh_QI2006};
dh_QI2007:  multipole,knl = {-angh_QI2001};

c1la := 3.9786;
c2la := 2.72;

ki2001:= (ci2017/ABS(ci2017))*(c1la*(ABS(ci2017)+eps+di2001)+c2la)/en;
ki2002:= (ci2026/ABS(ci2026))*(c1la*(ABS(ci2026)+eps+di2002)+c2la)/en;
ki2006:= (ci2026/ABS(ci2026))*(c1la*(ABS(ci2026)+eps+di2006)+c2la)/en;
ki2007:= (ci2017/ABS(ci2017))*(c1la*(ABS(ci2017)+eps+di2007)+c2la)/en;

//  gradiente dei quad large apert. a scalini
//  la lunghezza totale di ogni quad diventa 54 cm
//  i drift sono opportun. ridefiniti

// i grad di ogni spessore scalano rispetto a quello nominale dei seguenti fattori:

kla1:= 2.3135/2.34569;
kla2:= 2.1521/2.34569;
kla3:= 1.8637/2.34569;
kla4:= 1.4285/2.34569;
kla5:= 0.9780/2.34569;
kla6:= 0.7559/2.34569;

ki20011 := kla1*ki2001;
ki20012 := kla2*ki2001;
ki20013 := kla3*ki2001;
ki20014 := kla4*ki2001;
ki20015 := kla5*ki2001;
ki20016 := kla6*ki2001;

ki20021 := kla1*ki2002;
ki20022 := kla2*ki2002;
ki20023 := kla3*ki2002;
ki20024 := kla4*ki2002;
ki20025 := kla5*ki2002;
ki20026 := kla6*ki2002;

ki20061 := kla1*ki2006*ki2_6Fudge;
ki20062 := kla2*ki2006*ki2_6Fudge;
ki20063 := kla3*ki2006*ki2_6Fudge;
ki20064 := kla4*ki2006*ki2_6Fudge;
ki20065 := kla5*ki2006*ki2_6Fudge;
ki20066 := kla6*ki2006*ki2_6Fudge;

ki20071 := kla1*ki2007;
ki20072 := kla2*ki2007;
ki20073 := kla3*ki2007;
ki20074 := kla4*ki2007;
ki20075 := kla5*ki2007;
ki20076 := kla6*ki2007;

QUAI2001_1: quadrupole,L=0.09,K1= ki20011,tilt=Ti2001;
QUAI2001_2: quadrupole,L=0.03,K1= ki20012,tilt=Ti2001;
QUAI2001_3: quadrupole,L=0.03,K1= ki20013,tilt=Ti2001;
QUAI2001_4: quadrupole,L=0.03,K1= ki20014,tilt=Ti2001;
QUAI2001_5: quadrupole,L=0.03,K1= ki20015,tilt=Ti2001;
QUAI2001_6: quadrupole,L=0.06,K1= ki20016,tilt=Ti2001;
QUAI2001:line=(QUAI2001_6,QUAI2001_5,QUAI2001_4,QUAI2001_3,QUAI2001_2,QUAI2001_1,
	       dh_QI2001,
	       QUAI2001_1,QUAI2001_2,QUAI2001_3,QUAI2001_4,QUAI2001_5,QUAI2001_6);

QUAI2002_1: quadrupole,L=0.09,K1= ki20021,tilt=Ti2002;
QUAI2002_2: quadrupole,L=0.03,K1= ki20022,tilt=Ti2002;
QUAI2002_3: quadrupole,L=0.03,K1= ki20023,tilt=Ti2002;
QUAI2002_4: quadrupole,L=0.03,K1= ki20024,tilt=Ti2002;
QUAI2002_5: quadrupole,L=0.03,K1= ki20025,tilt=Ti2002;
QUAI2002_6: quadrupole,L=0.06,K1= ki20026,tilt=Ti2002;
QUAI2002:line=(QUAI2002_6,QUAI2002_5,QUAI2002_4,QUAI2002_3,QUAI2002_2,QUAI2002_1,
	       dh_QI2002,
	       QUAI2002_1,QUAI2002_2,QUAI2002_3,QUAI2002_4,QUAI2002_5,QUAI2002_6);

QUAI2006_1: quadrupole,L=0.09,K1= ki20061,tilt=Ti2006;
QUAI2006_2: quadrupole,L=0.03,K1= ki20062,tilt=Ti2006;
QUAI2006_3: quadrupole,L=0.03,K1= ki20063,tilt=Ti2006;
QUAI2006_4: quadrupole,L=0.03,K1= ki20064,tilt=Ti2006;
QUAI2006_5: quadrupole,L=0.03,K1= ki20065,tilt=Ti2006;
QUAI2006_6: quadrupole,L=0.06,K1= ki20066,tilt=Ti2006;
QUAI2006:   line=(QUAI2006_6,QUAI2006_5,QUAI2006_4,QUAI2006_3,QUAI2006_2,QUAI2006_1,
		  dh_QI2006,
		  QUAI2006_1,QUAI2006_2,QUAI2006_3,QUAI2006_4,QUAI2006_5,QUAI2006_6);
QUAI2006a:  line=(QUAI2006_6,QUAI2006_5,QUAI2006_4,QUAI2006_3,QUAI2006_2,QUAI2006_1);
QUAI2006b:  line=(QUAI2006_1,QUAI2006_2,QUAI2006_3,QUAI2006_4,QUAI2006_5,QUAI2006_6);

QUAI2007_1: quadrupole,L=0.09,K1= ki20071,tilt=Ti2007;
QUAI2007_2: quadrupole,L=0.03,K1= ki20072,tilt=Ti2007;
QUAI2007_3: quadrupole,L=0.03,K1= ki20073,tilt=Ti2007;
QUAI2007_4: quadrupole,L=0.03,K1= ki20074,tilt=Ti2007;
QUAI2007_5: quadrupole,L=0.03,K1= ki20075,tilt=Ti2007;
QUAI2007_6: quadrupole,L=0.06,K1= ki20076,tilt=Ti2007;
QUAI2007:   line=(QUAI2007_6,QUAI2007_5,QUAI2007_4,QUAI2007_3,QUAI2007_2,QUAI2007_1,
		  dh_QI2007,
		  QUAI2007_1,QUAI2007_2,QUAI2007_3,QUAI2007_4,QUAI2007_5,QUAI2007_6);

IP2:marker;

Finudalong:  line=(BPBES211,
		   QUAI2006b,
		   dir2_21,dir2_22,
		   QUAI2001,dir3_3,
		   CHVPI201,
		   M_CHHPI201,
		   M_CHHPI201,
		   CHVPI201,
		   dir3_2);
Finudashort: line=(dir3_2,
		   CHVPI202,
		   M_CHHPI202,
		   M_CHHPI202,
                   CHVPI202,
		   dir3_3,
		   QUAI2007,
                   dir2_22,dir2_21,
		   QUAI2006a);

finuda: line= (finudalong,IP2,finudashort);


return;
