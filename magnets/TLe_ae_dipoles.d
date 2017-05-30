!!!!! beam out EXTRACTION ELECTRONS FROM ACCUM. TO TR
! units : \alpha [rad (°)], L [m], Energy [GeV]

! Flags for test
tkon = 0; !! track with kicker on
yron = 0; !! beam coordinate rotation on
vdon = 0; !! vertical dipole on
hdon = 0; !! horizontal dipole on



!!!!!!!!!! ... now the magnets parameters...
! DAFNE Technical Note : C-17 pag.~6, MM-7 pag.~2, I-16 pag.~14, I-10
!   Dipoles SPTA1001, SPTA2001
!   \alpha = 0.038 (2.177°), L nom = 0.623, I nom=1811.2
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
! Fitting MM-7, Figure~6 with engauge-digitizer+gnuplot : 
!   gives f(x[Gauss])=a*x[mm]+b , 1Gauss=1e-4[T], K1 component
!Final set of parameters            Asymptotic Standard Error
!=======================            ==========================
!a               = 0.564897         +/- 0.00066      (0.1168%)
!b               = -2.94169         +/- 0.901        (30.63%)
lb2d  := 0.623;
ib2d  := 1811.2;
ib2dm := 2300;
c1b2d := lb2d*clight/(1e9*eEnergy)*1e-4*0.5649;
c0b2d := lb2d*clight/(1e9*eEnergy)*1e-4*(-2.9);
e1b2d := 0;
e2b2d := 0;
! Quad component
! K1=dBy/dx*I/Inom*1/Brho  dBy/dx from Tech Note MM-7, Fig.~6
! To Tesla : 1e-4, to m : 1e-3
k1b2d := 0.18*1e-4/(1e-3*ib2d)*clight/(1e9*eEnergy);
!value, k1b2d;
! Field index = n =K1*L^2/ANGLE^2

! DAFNE Technical Note : C-17, pag.~5
!   \alpha = 0.5934 (34°), L nom = 1.233, I nom=2082.1
! \alpha [rad], L [m]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
lb34d  := 1.233;	    
ib34d  := 2082.1;
ib34dm := 2300;
e1b34d := 0;
e2b34d := 0;
c1b34d := 1.28*lb34d*clight/(1e9*eEnergy)*3.9324e-4;
c0b34d := 1.3*lb34d*clight/(1e9*eEnergy)*0;
k1b34d := 0.0094720*1e-3*10;//0.0094720 from kseptum fit in the MRe

! DAFNE Technical Note : C-17 pag.~5
!   Dipoles DVRTR001
!   \alpha = 0.192 (11°), L nom = 0.35, I nom=100.19
! \alpha [rad], L [m]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
lb11d  := 0.35;
ib11d  := 100.19;
ib11dm := 120;
e1b11d := 0.095993;
e2b11d := 0.095993;  
! linear
c1b11d := lb11d*clight/(1e9*eEnergy)*1.1010e-2;
c0b11d := lb11d*clight/(1e9*eEnergy)*1.0514e-3;
! non-linear
d4b11d := lb11d*clight/(1e9*eEnergy)*(-1.7718e-10);
d3b11d := lb11d*clight/(1e9*eEnergy)*9.0349e-7;
d2b11d := lb11d*clight/(1e9*eEnergy)*(-2.8357e-4);
d1b11d := lb11d*clight/(1e9*eEnergy)*3.4797e-2;
d0b11d := lb11d*clight/(1e9*eEnergy)*(- 0.59817);
! magnetic angle, sign is applied later
b11dangle (theangle,cur,sign) : macro = {
  if (abs(cur) <= 60){theangle := sign*(c0b11d + c1b11d*abs(cur));}
  else {theangle := sign*(d4b11d*cur^4 + d3b11d*abs(cur)^3 
    + d2b11d*cur^2 + d1b11d*abs(cur) + d0b11d); }
};

! DAFNE Technical Note : C-17 pag.~4
!   Dipoles DHPTT001
!   \alpha = 0.7854 (45°), L nom = 1.113, I nom=570.81
! \alpha [rad], L [m], I [A]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
lb45d  := 1.113;
ib45d  := 570.81;
ib45dm := 650;
e1b45d := 0;
e2b45d := 0;
k1b45d := -0.00005;
! linear
c0b45d := lb45d*clight/(1e9*eEnergy)*1.2129e-4;
c1b45d := lb45d*clight/(1e9*eEnergy)*2.419e-3;
! non-linear
d0b45d := lb45d*clight/(1e9*eEnergy)*(-0.56665);
d1b45d := lb45d*clight/(1e9*eEnergy)*6.2805e-3;
d2b45d := lb45d*clight/(1e9*eEnergy)*(-7.7012e-6);
d3b45d := lb45d*clight/(1e9*eEnergy)*3.7969e-9;
d4b45d := lb45d*clight/(1e9*eEnergy)*(-1.3699e-13);
! magnetic angle, sign is applied later
b45dangle (theangle,cur,sign) : macro = {
  if (abs(cur) <= 300){theangle := sign*(c0b45d + c1b45d*abs(cur));}
  else {theangle := sign*(d4b45d*cur^4 + d3b45d*abs(cur)^3
    + d2b45d*(cur)^2 + d1b45d*abs(cur) + d0b45d); }
};

! DAFNE Tech. Note : DI-10 pag.~33 and 37, I-10 pag.~10., I-16 pag.~15
! DHRTE003 1.22[T] 31° (0.5411 [rad])
! I nom=155[A]
! \alpha [rad], L [m], I [A]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
ib31d  := 155;
lb31d  := 0.757;
c1b31d := lb31d*clight/(1e9*eEnergy)*1.22/ib31d;
e1b31d := 0.2705;
e2b31d := 0.2705;
k1b31d := 0;

! DAFNE Tech. Note : DI-10 pag.~25, I-10 pag.~10., I-16 pag.~15
! DHRTE001 1.18[T] 30° (0.5236 [rad])
! I nom=233[A]
! \alpha [rad], L [m], I [A]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
ib30d  := 233;
lb30d  := 0.757;
c1b30d := lb30d*clight/(1e9*eEnergy)*1.18/ib30d;
k1b30d := 0;
e1b30d := 0.2618;
e2b30d := 0.2618;

!Y  magnet for e- extraction  beam out  FROM ACCUMULATOR
! DAFNE Technical Note : C-17 pag.~4
!   Dipoles DHYTT001
!   \alpha = 0.62832 (36°), L nom = 1, I nom=95.34
! \alpha [rad], L [m]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
lb36d  := 1;
ib36d  := 95.34;
ib36dm := 120;
c0b36d := lb36d*clight/(1e9*eEnergy)*3.8349e-3;
c1b36d := lb36d*clight/(1e9*eEnergy)*1.1171e-2;
e1b36d := 0.6283185308;
e2b36d := 0;
k1b36d := -0.006*0;

!!!!!!!!!!!!! ... now the magnets definitions ... 
! old first 
!SPTA2001: SBEND,L=.623,ANGLE=.0349066;
!SPTA2002: SBEND,L=1.233,ANGLE=.593411946; 
!DVRTR001: SBEND,L=.35,TILT := pi/2,ANGLE=.191986,E1=0.095993,E2=0.095993;
!DVRTR002: SBEND,L=.35,TILT := pi/2,ANGLE=-.191986,E1=-0.095993,E2=-0.095993;  
!DHYTT001: SBEND,L=1.,E1=-.6283185308,ANGLE=-.6283185308;
!DHPTT001: SBEND, L = 1.113, ANGLE = 0.785398163;
!DHPTT002: SBEND, L = 1.113, ANGLE = -0.785398163;
!DHRTT001: SBEND,L=0.757,ANGLE=-0.52359878,E1=-0.261799388,
!DHSTT001: SBEND,L = 1.113, ANGLE = -0.785398163;
!DVRTT001: SBEND,L=.35,TILT := pi/2,ANGLE=.191986,E1=0.095993,E2=0.095993;
!DVRTT002: SBEND,L=.35,TILT := pi/2,ANGLE=-.191986,E1=-0.095993,E2=-0.095993;
!DVRTE001: SBEND,L=.35,TILT := pi/2,ANGLE=.191986,E1=0.095993,E2=0.095993;
!DVRTE002: SBEND,L=.35,TILT := pi/2,ANGLE=-.191986,E1=-0.095993,E2=-0.095993;
!DHRTE001: SBEND,L=0.757,ANGLE=.528679953,E1=.26433976,E2=.26433976;
!DHRTE002: SBEND,L=0.757,ANGLE=-.542099266,E1=-.271049633,E2=-.271049633;
!DHRTE003: SBEND,L=0.757,ANGLE=-.542099266,E1=-.271049633,E2=-.271049633;
!DVRTE003: SBEND,L=.35,TILT := -pi/2,ANGLE=.191986,E1=0.095993,E2=0.095993;
!DVRTE004: SBEND,L=.35,TILT := pi/2,ANGLE=.191986,E1=0.095993,E2=0.095993;
!SPTEL101: SBEND, L = 1.233, ANGLE = -0.593411946;
!SPTEL102: SBEND, L = 0.623, ANGLE = -0.034906585;
! end of old

!magnetic angle from currents+sign def (vertical + is downwards )
n=-1;p=1;
! horizontal
MANGSPTA2001 :=     c1b2d*abs(SPTA2001)+c0b2d;
MANGSPTA2002 :=     c1b34d*abs(SPTA2002)+c0b34d;
MANGDHYTT001 := -1.0*(c0b36d + c1b36d*abs(DHYTT001));
exec, b45dangle(MANGDHPTT001,DHPTT001,p);
exec, b45dangle(MANGDHPTT002,DHPTT002,n);
MANGDHRTT001 := -1*c1b30*abs(DHRTT001);
exec, b45dangle(MANGDHSTT001,DHSTT001,n);
MANGDHRTE001 := c1b30d*abs(DHRTE001);
MANGDHRTE002 := -1*c1b31d*abs(DHRTE002);
MANGDHRTE003 := -1*c1b31d*abs(DHRTE003);
MANGSPTEL101 := -1*(c1b34d*abs(SPTEL101)+c2b34d); 
MANGSPTEL102 := -1*(c1b2d*abs(SPTEL102)+c2b2d);
! vertical
exec, b11dangle(MANGDVRTR001,DVRTR001,p);
exec, b11dangle(MANGDVRTR002,DVRTR002,n);
exec, b11dangle(MANGDVRTT001,DVRTT001,p);
exec, b11dangle(MANGDVRTT002,DVRTT002,n);
exec, b11dangle(MANGDVRTE001,DVRTE001,p);
exec, b11dangle(MANGDVRTE002,DVRTE002,n);
exec, b11dangle(MANGDVRTE003,DVRTE003,n);
exec, b11dangle(MANGDVRTE004,DVRTE004,p);

! new bending def
! horizontal
! 2 deg
SPTA2001 : SBEND,L:=lb2d,ANGLE:=hdon*MANGSPTA2001,K1=k1b2d*abs(SPTA2001);
SPTEL102 : SBEND,L:=lb2d,ANGLE:=hdon*MANGSPTEL102,K1=k1b2d*abs(SPTEL102);
! 30 deg
DHRTE001 : SBEND,L:=lb30d,ANGLE:=hdon*MANGDHRTE001,K1:=k1b30d*abs(DHRTE001),
	 E1=e1b30d,E2=e2b30d;
DHRTT001a: SBEND,L:=lb30d/2.0,ANGLE:=hdon*MANGDHRTT001/2.0,K1:=k1b30d*abs(DHRTT001),
	 E1=e1b30d,E2=0;
DHRTT001b: SBEND,L:=lb30d/2.0,ANGLE:=hdon*MANGDHRTT001/2.0,K1:=k1b30d*abs(DHRTT001),
	 E1=0,E2=e2b30d;
! 31 deg
DHRTE002 : SBEND,L:=lb31d,ANGLE:=hdon*MANGDHRTE002,K1:=k1b31d*abs(DHRTE002),
	 E1=e1b31d,E2=e2b31d;
DHRTE003 : SBEND,L:=lb31d,ANGLE:=hdon*MANGDHRTE003,K1:=k1b31d*abs(DHRTE003),
	 E1=e1b31d,E2=e2b31d;
! 34 deg
SPTA2002 : SBEND,L:=lb34d/2.0,ANGLE:=hdon*MANGSPTA2002/2.0,K1:=k1b34d*abs(SPTA2002);
SPTEL101 : SBEND,L:=lb34d,ANGLE:=hdon*MANGSPTEL101,K1:=k1b34d*abs(SPTEL101);
! 36 deg
DHYTT001a: SBEND,L:=lb36d/2.0,ANGLE:=hdon*MANGDHYTT001/2.0,K1:=k1b36d*abs(DHYTT001),
	 E1=e1b36d,E2=0;
DHYTT001b: SBEND,L:=lb36d/2.0,ANGLE:=hdon*MANGDHYTT001/2.0,K1:=k1b36d*abs(DHYTT001),
	 E1=0,E2=e2b36d;
value,DHYTT001b->k1;
! 45 deg
DHSTT001 : SBEND,L:=lb45d,ANGLE:=hdon*MANGDHSTT001,K1:=k1b45d*abs(DHSTT001);
DHPTT002 : SBEND,L:=lb45d/2.0,ANGLE:=hdon*MANGDHPTT002/2.0,K1:=k1b45d*abs(DHPTT002);
DHPTT001 : SBEND,L:=lb45d/2.0,ANGLE:=hdon*MANGDHPTT001/2.0,K1:=k1b45d*abs(DHPTT001);
! vertical ( + is downwards )
! 11 deg
DVRTR001a: SBEND,L:=lb11d/2.0,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTR001/2.0,
	 E1=e1b11d,E2=0;
DVRTR001b: SBEND,L:=lb11d/2.0,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTR001/2.0,
	 E1=0,E2=e2b11d;
DVRTR002a: SBEND,L:=lb11d/2.0,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTR002/2.0,
	 E1=e1b11d,E2=0;
DVRTR002b: SBEND,L:=lb11d/2.0,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTR002/2.0,
	 E1=0,E2=e2b11d;
DVRTT001a: SBEND,L:=lb11d/2.0,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTT001/2.0,
	 E1=lb11d,E2=0;
DVRTT001b: SBEND,L:=lb11d/2.0,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTT001/2.0,
	 E1=0,E2=lb11d;
DVRTT002a: SBEND,L:=lb11d/2.0,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTT002/2.0,
	 E1=e1b11d,E2=0;
DVRTT002b: SBEND,L:=lb11d/2.0,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTT002/2.0,
	 E1=0,E2=e2b11d;
DVRTE001 : SBEND,L:=lb11d,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTE001,
	 E1=e1b11d,E2=e2b11d;
DVRTE002 : SBEND,L:=lb11d,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTE002,
	 E1=e1b11d,E2=e2b11d;
DVRTE003 : SBEND,L:=lb11d,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTE003,
	 E1=e1b11d,E2=e2b11d;
DVRTE004 : SBEND,L:=lb11d,TILT:=TWOPI/4,ANGLE:=vdon*MANGDVRTE004,
	 E1=e1b11d,E2=e2b11d;

!!!!!! dipole model
! physical angle, to compare with mang and rotate beam if required
! horizontal
PANGSPTA2001 :=  0.038; 
PANGSPTEL102 := -0.038;
PANGDHRTT001 := -0.5326;
PANGDHRTE001 :=  0.5326;  
PANGDHRTE002 := -0.5411;  
PANGDHRTE003 := -0.5411;  
PANGSPTEL101 := -0.5934;  
PANGSPTA2002 :=  0.5934;    
PANGDHYTT001 := -0.62832; 
PANGDHPTT001 :=  0.7854;
PANGDHPTT002 := -0.7854; 
PANGDHSTT001 := -0.7854;
! vertical
PANGDVRTR001 :=  0.192;
PANGDVRTR002 := -0.192;
PANGDVRTT001 :=  0.192;
PANGDVRTT002 := -0.192;
PANGDVRTE001 :=  0.192;
PANGDVRTE002 := -0.192;
PANGDVRTE003 := -0.192;
PANGDVRTE004 :=  0.192;
! kicks for tracking
SPTA2001K: KICKER,L=0,HKICK:=tkon*(PANGSPTA2001 - MANGSPTA2001);
SPTA2002K: KICKER,L=0,HKICK:=1*(PANGSPTA2002 - MANGSPTA2002);
DVRTR001K: KICKER,L=0,VKICK:=tkon*(PANGDVRTR001 - MANGDVRTR001);
DVRTR002K: KICKER,L=0,VKICK:=tkon*(PANGDVRTR002 - MANGDVRTR002);
DHYTT001K: KICKER,L=0,hKICK:=tkon*(PANGDHYTT001 - MANGDHYTT001);
DHPTT001K: KICKER,L=0,hKICK:=tkon*(PANGDHPTT001 - MANGDHPTT001);
DHPTT002K: KICKER,L=0,hKICK:=tkon*(PANGDHPTT002 - MANGDHPTT002);
DHRTT001K: KICKER,L=0,hKICK:=tkon*(PANGDHRTT001 - MANGDHRTT001);
DHSTT001K: KICKER,L=0,hKICK:=tkon*(PANGDHSTT001 - MANGDHSTT001);
DVRTT001K: KICKER,L=0,VKICK:=tkon*(PANGDVRTT001 - MANGDVRTT001);
DVRTT002K: KICKER,L=0,VKICK:=tkon*(PANGDVRTT002 - MANGDVRTT002);
DVRTE001K: KICKER,L=0,VKICK:=tkon*(PANGDVRTE001 - MANGDVRTE001);
DVRTE002K: KICKER,L=0,VKICK:=tkon*(PANGDVRTE002 - MANGDVRTE002);
DHRTE001K: KICKER,L=0,HKICK:=tkon*(PANGDHRTE001 - MANGDHRTE001);
DHRTE002K: KICKER,L=0,HKICK:=tkon*(PANGDHRTE002 - MANGDHRTE002);
DHRTE003K: KICKER,L=0,HKICK:=tkon*(PANGDHRTE003 - MANGDHRTE003);
DVRTE003K: KICKER,L=0,VKICK:=tkon*(PANGDVRTE003 - MANGDVRTE003);
DVRTE004K: KICKER,L=0,VKICK:=tkon*(PANGDVRTE004 - MANGDVRTE004);
SPTEL102K: KICKER,L=0,HKICK:=tkon*(PANGSPTEL102 - MANGSPTEL102);
SPTEL101K: KICKER,L=0,HKICK:=tkon*(PANGSPTEL101 - MANGSPTEL101);

! rotations for twiss
SPTA2001yr: yrotation,angle:=yron*(PANGSPTA2001 - MANGSPTA2001);
SPTA2002yr: yrotation,angle:=1*(PANGSPTA2002 - MANGSPTA2002);
DVRTR001yr: yrotation,angle:=yron*(PANGDVRTR001 - MANGDVRTR001);
DVRTR002yr: yrotation,angle:=yron*(PANGDVRTR002 - MANGDVRTR002);
DHYTT001yr: yrotation,angle:=yron*(PANGDHYTT001 - MANGDHYTT001);
DHPTT001yr: yrotation,angle:=yron*(PANGDHPTT001 - MANGDHPTT001);
DHPTT002yr: yrotation,angle:=yron*(PANGDHPTT002 - MANGDHPTT002);
DHRTT001yr: yrotation,angle:=yron*(PANGDHRTT001 - MANGDHRTT001);
DHSTT001yr: yrotation,angle:=yron*(PANGDHSTT001 - MANGDHSTT001);
DVRTT001yr: yrotation,angle:=yron*(PANGDVRTT001 - MANGDVRTT001);
DVRTT002yr: yrotation,angle:=yron*(PANGDVRTT002 - MANGDVRTT002);
DVRTE001yr: yrotation,angle:=yron*(PANGDVRTE001 - MANGDVRTE001);
DVRTE002yr: yrotation,angle:=yron*(PANGDVRTE002 - MANGDVRTE002);
DHRTE001yr: yrotation,angle:=yron*(PANGDHRTE001 - MANGDHRTE001);
DHRTE002yr: yrotation,angle:=yron*(PANGDHRTE002 - MANGDHRTE002);
DHRTE003yr: yrotation,angle:=yron*(PANGDHRTE003 - MANGDHRTE003);
DVRTE003yr: yrotation,angle:=yron*(PANGDVRTE003 - MANGDVRTE003);
DVRTE004yr: yrotation,angle:=yron*(PANGDVRTE004 - MANGDVRTE004);
SPTEL102yr: yrotation,angle:=yron*(PANGSPTEL102 - MANGSPTEL102);
SPTEL101yr: yrotation,angle:=yron*(PANGSPTEL101 - MANGSPTEL101);
! translations for twiss
SPTA2002tr: translation,x:=-yron*lb34d*(PANGSPTA2002 - MANGSPTA2002);
value,spta2002tr->x;

value, SPTA2001->angle, pangspta2001,mangspta2001;
value, SPTA2002k->hkick, pangspta2002,mangspta2002;
value, dvrtr001yr->angle, pangdvrtr001,mangdvrtr001;
value, dvrtr002yr->angle, pangdvrtr002,mangdvrtr002;
value, DHYTT001yr->angle, pangdhytt001,mangdhytt001;
value, DHPTT001yr->angle, pangdhptt001,mangdhptt001;
!stop;
!stop;
! to define vertical misalignment wrt the reference orbit : 
! vbend=roll1*yrot*roll2
ROLL1: SROTATION, ANGLE=  TWOPI/4.;
ROLL2: SROTATION, ANGLE= -TWOPI/4.;

!! finally the model
! horizontal
mSPTA2001: line=(SPTA2001);!,SPTA2001YR);
mSPTA2002: line=(SPTA2002 ,SPTA2002K,SPTA2002);
mDHYTT001: line=(DHYTT001a,DHYTT001b);
mDHPTT001: line=(DHPTT001 ,DHPTT001YR, DHPTT001);!
mDHPTT002: line=(DHPTT002 ,DHPTT002YR, DHPTT002);
mDHRTT001: line=(DHRTT001a,DHRTT001b);
mDHSTT001: line=(DHSTT001,DHSTT001K);!,DHSTT001YR);
mDHRTE001: line=(DHRTE001,DHRTE001K);!,DHRTE001YR);
mDHRTE002: line=(DHRTE002,DHRTE002K);!,DHRTE002YR);
mDHRTE003: line=(DHRTE003,DHRTE003K);!,DHRTE003YR);
mSPTEL101: line=(SPTEL101,SPTEL101K);!,SPTEL101YR);
mSPTEL102: line=(SPTEL102,SPTEL102K);!,SPTEL102YR);
! vertical
mDVRTR001: line=(DVRTR001a,roll1,DVRTR001YR,roll2,DVRTR001b);
mDVRTR002: line=(DVRTR002a,roll1,DVRTR002YR,roll2,DVRTR002b);
mDVRTT001: line=(DVRTT001a,roll1,DVRTT001YR,roll2,DVRTT001b);
mDVRTT002: line=(DVRTT002a,roll1,DVRTT002YR,roll2,DVRTT001b);
mDVRTE001: line=(DVRTE001,DVRTE001K);!,roll1,DVRTE001YR,roll2);
mDVRTE002: line=(DVRTE002,DVRTE002K);!,roll1,DVRTE002YR,roll2);
mDVRTE003: line=(DVRTE003,DVRTE003K);!,roll1,DVRTE003YR,roll2);
mDVRTE004: line=(DVRTE004,DVRTE004K);!,roll1,DVRTE004YR,roll2);

! pulsed dipole not used during e- injection
DHRTP001  :SBEND,L=0.40,ANGLE=0,E1=0,E2=0;
! what are these ???
DHSTB001: sbend,l=1.353,angle=0.0;    !bend to ...???
! Bends upward ???
VBM: SBEND,L=.35,TILT:= pi/2,ANGLE=-.191986,E1=-0.095993,E2=-0.095993;
! Bends downwstiltard ???
VBP: SBEND,L=.35,TILT:= pi/2,ANGLE=.191986,E1=0.095993,E2=0.095993;

!stop;
RETURN;
