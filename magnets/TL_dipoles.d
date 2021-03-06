!! Dipoles in the TL
! ! units : \alpha [rad (°)], L [m], Energy [GeV]
! about the var names : b2d means 2deg bending magnet, and so on and so on

! bending magnet polarity
if (beam->charge == -1) {
  system, 'echo "  TLset : electron mode"';
  bpol  := -1;! tilt twopi/2
  apol  :=  1;! swap angle
  cpol  :=  1;! dhpty001 pol
  dpol  :=  1;
  pbon  :=  0;! pulsed bending off
};
if (beam->charge ==  1) {
  system, 'echo "  TLset : positron mode"';
  bpol  := -1;! keep tilt
  apol  := -1;! keep angle
  cpol  :=  0;
  dpol  :=  1;
  pbon  :=  1;! pulsed bending on
};

! ! Flags for test
tkon := 0; !! track with kicker on
vdon := 1; !! vertical dipole on
hdon := 1; !! horizontal dipole on

! !!!!!!!!!! ... now the magnets parameters...
! ! DAFNE Technical Note : C-17 pag.~6, MM-7 pag.~2, I-16 pag.~14, I-10
! !   Dipoles SPTA1001, SPTA2001
! !   \alpha = 0.038 (2.177°), L nom = 0.623, I nom=1811.2
! ! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
! ! Fitting MM-7, Figure~6 with engauge-digitizer+gnuplot : 
! !   gives f(x[Gauss])=a*x[mm]+b , 1Gauss=1e-4[T], K1 component
! !Final set of parameters            Asymptotic Standard Error
! !=======================            ==========================
! !a               = 0.564897         +/- 0.00066      (0.1168%)
! !b               = -2.94169         +/- 0.901        (30.63%)
lb2d  := 0.623;
ab2d  := 0.0349066;!???
ib2d  := 1811.2;
ib2dm := 2300;
c1b2d := lb2d*clight/(1e9*eEnergy)*1e-4*0.5649;
c0b2d := lb2d*clight/(1e9*eEnergy)*1e-4*(-2.9);
e1b2d := 0;
e2b2d := 0;
! Quad component
! K1=dBy/dx*I/Inom*1/Brho  dBy/dx from Tech Note MM-7, Fig.~6
! To Tesla : 1e-4, to m : 1e-3
!k1b2d := 0.18*1e-4/(1e-3*ib2d)*clight/(1e9*eEnergy);
k1b2d := 0;
! Field index = n =K1*L^2/ANGLE^2

! DAFNE Technical Note : C-17, pag.~5
!   \alpha = 0.5934 (34°), L nom = 1.233, I nom=2082.1
! \alpha [rad], L [m]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
lb34d  := 1.233;	    
ab34d  := 0.593411946*ffab34d;
ib34d  := 2082.1;
ib34dm := 2300;
e1b34d := 0;
e2b34d := 0;
c1b34d := 1.3*lb34d*clight/(1e9*eEnergy)*3.9324e-4;
c0b34d := 1.3*lb34d*clight/(1e9*eEnergy)*0;
k1b34d := 0;

! DAFNE Technical Note : C-17 pag.~5
!   Dipoles DVRTR001
!   \alpha = 0.192 (11°), L nom = 0.35, I nom=100.19
! \alpha [rad], L [m]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
! 0.6 factor in the fringe focusing from 2G/3L 2G=40cm, L=35cm
! Wiederman. Particle Acc. Physics 3rd Ed. Rectangunlar magnet
lb11d  := 0.35;
ab11d  := 0.192;
ib11d  := 100.19;
ib11dm := 120;
e1b11d := ab11d/2;
e2b11d := ab11d/2;  
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
ab45d  := 0.7854;
ib45d  := 570.81;
ib45dm := 650;
e1b45d := 0;
e2b45d := 0;
k1b45d := 0;
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
! DHRTE002 1.22[T] 31° (0.5411 [rad])
! I nom=155[A]
! \alpha [rad], L [m], I [A]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
lb31d  := 0.757;
ab31d  := 0.542099266;
ib31d  := 155;
c1b31d := lb31d*clight/(1e9*eEnergy)*1.22/ib31d;
e1b31d := ab31d/2.0;
e2b31d := ab31d/2.0;
k1b31d := 0;

! DAFNE Tech. Note : DI-10 pag.~25, I-10 pag.~10., I-16 pag.~15
! DHRTT001 1.18[T] 30° (0.5236 [rad])
! I nom=233[A]
! \alpha [rad], L [m], I [A]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
lb30d  := 0.757;
ab30d  := 0.5236;
ib30d  := 233;
c1b30d := lb30d*clight/(1e9*eEnergy)*1.18/ib30d;
k1b30d := 0;
e1b30d := ab30d/2.0;
e2b30d := ab30d/2.0;
! DHRTE001 1.18[T] 30.3° (0.5287 [rad])
lb30p3d  := 0.757;
ab30p3d  := 0.528679953;
ib30p3d  := 233;
c1b30p3d := lb30p3d*clight/(1e9*eEnergy)*1.18/ib30p3d;
k1b30p3d := 0;
e1b30p3d := ab30p3d/2.0;
e2b30p3d := ab30p3d/2.0;

!Y  magnet for e+e- injection/extraction in ACCUMULATOR
! DAFNE Technical Note : C-17 pag.~4
!   Dipoles DHYTT001
!   \alpha = 0.62832 (36°), L nom = 1, I nom=95.34
! \alpha [rad], L [m]
! kickangle = Length*clight/(1e9*Energy[GeV]) * B[T](I[A])
lb36d   := 1;
ab36d   := 0.62832;
ib36d   := 95.34;
ib36dm  := 120;
c0b36d  := lb36d*clight/(1e9*eEnergy)*3.8349e-3;
c1b36d  := lb36d*clight/(1e9*eEnergy)*1.1171e-2;
e1b36d  := 0.6283185308;
e2b36d  := 0;
k1b36d  := 0;

! DHRTP001
lb18d   := 0.444;
ab18d   := 0.318697;
ib18d   := 0;
ib18dm  := 0;
c0b18d  := 0;
c1b18d  := 0;
e1b18d  := ab18d/2;
e2b18d  := ab18d/2;

! DHRTP002
lb13p6d   := 0.4472;
ab13p6d   := 0.236732969;
ib13p6d   := 0;
ib13p6dm  := 0;
c0b13p6d  := 0;
c1b13p6d  := 0;
e1b13p6d  := ab13p6d/2;
e2b13p6d  := ab13p6d/2;

!!! end of magnet parameters

!!!!
! new bending def
! horizontal ( + is towards negative x ), vertical ( + is downwards )
! bends with E1 and E2 != 0 are split in BENDa and BENDb 

!in the ACC 
! tl
SPTA1001 : SBEND, L :=  lb2d/2.0,
	   TILT     :=  0,
	   ANGLE    := -hdon*ab2d/2.0,       
	   K1       :=  k1b2d*abs(SPTA2001);
SPTA1002 : SBEND, L :=  lb34d/2.0,
	   TILT     :=  0,
	   ANGLE    := -hdon*ab34d/2.0,      
	   K1       :=  k1b34d*abs(SPTA2002);
DVRTL001a: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    :=  vdon*ab11d/2.0,
	   E1:=e1b11d,E2:=0;
DVRTL001b: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    :=  vdon*ab11d/2.0,
	   E1:=0,E2:=e2b11d;
DVRTL002a: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    := -vdon*ab11d/2.0,
	   E1:=-e1b11d,E2:=0;
DVRTL002b: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    := -vdon*ab11d/2.0,
	   E1:=0,E2:=-e2b11d;
! tr
SPTA2001 : SBEND, L :=  lb2d/2.0,
	   TILT     :=  0,
	   ANGLE    :=  hdon*ab2d/2.0,       
	   K1       :=  k1b2d*abs(SPTA2001);
SPTA2002 : SBEND, L :=  lb34d/2.0,
	   TILT     :=  0,
	   ANGLE    :=  hdon*ab34d/2.0,      
	   K1:=k1b34d*abs(SPTA2002);
DVRTR001a: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
           ANGLE    :=  vdon*ab11d/2.0,
	   E1:=e1b11d,E2:=0;
DVRTR001b: SBEND, L :=  lb11d/2.0,
           TILT     :=  twopi/4,
           ANGLE    :=  vdon*ab11d/2.0,
	   E1:=0,E2:=e2b11d;
DVRTR002a: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    := -vdon*ab11d/2.0,
	   E1:=-e1b11d,E2:=0;
DVRTR002b: SBEND, L :=lb11d/2.0,
	   TILT     := twopi/4,
           ANGLE    := -vdon*ab11d/2.0,
	   E1:=0,E2:=-e2b11d;
!tt
DHYTT001a: SBEND, L :=  lb36d/2.0,
           TILT     :=  0,
           ANGLE    := -apol*hdon*ab36d/2.0,
	   K1       :=  k1b36d*abs(DHYTT001),
	   E1:=-apol*e1b36d,E2:=0;
DHYTT001b: SBEND, L :=  lb36d/2.0,
	   TILT     :=  0,
           ANGLE    := -apol*hdon*ab36d/2.0,
	   K1       :=  k1b36d*abs(DHYTT001),
	   E1:=0,E2:=-apol*e2b36d;
DHPTT001a : SBEND, L :=  lb45d/2.0,
	   TILT     :=  0,
	   ANGLE    :=  hdon*ab45d/2.0,
	   K1       :=  k1b45d*abs(DHPTT001),
	   E1       := 0;
DHPTT001b : SBEND, L :=  lb45d/2.0,
	   TILT     :=  0,
	   ANGLE    :=  hdon*ab45d/2.0,
	   K1       :=  k1b45d*abs(DHPTT001),
	   E2       := 0;

! in LINAC
!tt
DHPTT002a: SBEND, L :=  lb45d/2.0,
	   TILT     :=  0,
	   ANGLE    := -hdon*ab45d/2.0,
	   K1       :=  k1b45d*abs(DHPTT002),
	   E1	    :=  0,
	   E2	    :=  0;
DHPTT002b: SBEND, L :=  lb45d/2.0,
	   TILT     :=  0,
	   ANGLE    := -hdon*ab45d/2.0,
	   K1       :=  k1b45d*abs(DHPTT002),
	   E1	    :=  0,
	   E2	    :=  0;
DHRTT001a: SBEND, L :=  lb30d/2.0,
	   TILT     :=  0,
           ANGLE    := -hdon*ab30d/2.0,
	   K1       :=  k1b30d*abs(DHRTT001),
	   E1:=-e1b30d,E2:=0;
DHRTT001b: SBEND, L :=  lb30d/2.0,
	   TILT     :=  0,
           ANGLE    := -hdon*ab30d/2.0,
	   K1       :=  k1b30d*abs(DHRTT001),
	   E1:=0,E2:=-e2b30d;
DHSTT001a : SBEND, L :=  lb45d/2.0,
           TILT     :=  0,
	   ANGLE    := -hdon*ab45d/2.0,
	   K1       :=  k1b45d*abs(DHSTT001);
DHSTT001b : SBEND, L :=  lb45d/2.0,
           TILT     :=  0,
	   ANGLE    := -hdon*ab45d/2.0,
	   K1       :=  k1b45d*abs(DHSTT001);
DVRTT001a: SBEND, L :=lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    :=  vdon*ab11d/2.0,
	   E1:=e1b11d,E2:=0;
DVRTT001b: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    :=  vdon*ab11d/2.0,
	   E1:=0,E2:=e2b11d;
DVRTT002a: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    := -vdon*ab11d/2.0,
	   E1:=-e1b11d,E2:=0;
DVRTT002b: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
           ANGLE    := -vdon*ab11d/2.0,
           E1:=0,E2:=-e2b11d;

! in DAFNE
! e+ tp
DHRTP001a: SBEND, L :=  lb18d/2,! pulsed dipole not used during e- injection
	   TILT     :=  0,
	   ANGLE    := -pbon*hdon*ab18d/2,
	   E1=-e1b18d,E2=0;
DHRTP001b: SBEND, L :=  lb18d/2,! pulsed dipole not used during e- injection
	   TILT     :=  0,
	   ANGLE    := -pbon*hdon*ab18d/2,
	   E1=0,E2=-e2b18d;
DHRTP002a: SBEND, L :=  lb13p6d/2,! pulsed dipole not used during e- injection
	   TILT     :=  0,
	   ANGLE    := -pbon*ab13p6d/2,
	   E1=-e1b13p6d,E2=0;
DHRTP002b: SBEND, L :=  lb13p6d/2,! pulsed dipole not used during e- injection
	   TILT     :=  0,
	   ANGLE    := -pbon*ab13p6d/2,
	   E1=0,E2=-e2b13p6d;
SPTPL101:  SBEND, L :=  lb34d,
	   TILT     :=  0,
	   ANGLE    := -hdon*ab34d,       
	   K1       :=  k1b34d*abs(SPTEL101);
SPTPL102:  SBEND, L :=  lb2d,
           TILT     :=  0,
           ANGLE    := -hdon*ab2d,       
	   K1       :=  k1b2d*abs(SPTEL102);

!in DAFNE
! e- te
DVRTE001a: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
	   ANGLE    :=  vdon*ab11d/2.0,
	   E1=e1b11d,E2=0;
DVRTE001b: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
           ANGLE    :=  vdon*ab11d/2.0,
	   E1=0,E2=e2b11d;
DVRTE002a: SBEND, L :=  lb11d/2.0,
           TILT     :=  twopi/4,
           ANGLE    := -vdon*ab11d/2.0,
	   E1=-e1b11d,E2=0;
DVRTE002b: SBEND, L :=  lb11d/2.0,
	   TILT     :=  twopi/4,
           ANGLE    := -vdon*ab11d/2.0,
	   E1=0,E2=-e2b11d;
DHRTE001a: SBEND, L :=  lb30p3d/2.0,
	   TILT     :=  0,
           ANGLE    :=  hdon*ab30p3d/2.0,
	   K1       :=  k1b30p3d*abs(DHRTE001),
	   E1=e1b30p3d,E2=0;
DHRTE001b: SBEND, L :=  lb30p3d/2.0,
           TILT     :=  0,
           ANGLE    :=  hdon*ab30p3d/2.0,
	   K1       :=  k1b30p3d*abs(DHRTE001),
	   E1=0,E2=e2b30p3d;
DHRTE002a: SBEND, L :=  lb31d/2.0,
           TILT     :=  0,
           ANGLE    := -hdon*ab31d/2.0,       
	   K1       :=  k1b31d*abs(DHRTE002),
	   E1=-e1b31d,E2=0;
DHRTE002b: SBEND, L :=  lb31d/2.0,
           TILT     :=  0,
           ANGLE    := -hdon*ab31d/2.0,       
	   K1       :=  k1b31d*abs(DHRTE002),
	   E1=0,E2=-e2b31d;
DHRTE003a: SBEND, L :=  lb31d/2.0,
	   TILT     :=  0,
           ANGLE    := -hdon*ab31d/2.0,
	   K1       :=  k1b31d*abs(DHRTE003),
	   E1=-e1b31d,E2=0;
DHRTE003b: SBEND, L :=  lb31d/2.0,
	   TILT     :=  0,
           ANGLE    := -hdon*ab31d/2.0,
	   K1       :=  k1b31d*abs(DHRTE003),
	   E1=0,E2=-e2b31d;
DVRTE003:  SBEND, L :=  lb11d,
	   TILT     :=  twopi/4,
           ANGLE    := -vdon*ab11d,
	   E1=-e1b11d,E2=-e2b11d;
DVRTE004:  SBEND, L :=  lb11d,
	   TILT     :=  twopi/4,
           ANGLE    :=  vdon*ab11d,
	   E1=e1b11d,E2=e2b11d;
SPTEL101:  SBEND, L :=  lb34d,
           TILT     :=  0,
           ANGLE    := -hdon*ab34d,       
	   K1       :=  k1b34d*abs(SPTEL101);
SPTEL102:  SBEND, L :=  lb2d,
           TILT     :=  0,
	   ANGLE    := -hdon*ab2d,       
           K1       :=  k1b2d*abs(SPTEL102);

! end of new bending def
! start of magnetic angle from currents+sign def (vertical + is downwards )
! this is used to kick the beam during tracking
! therefore only relevant when tkon = 1
n=-1;p=1;! silly but it is the only way I could pass the negative sign
         ! when the angle is not linear with current
mangSPTA2001 :=     c1b2d*abs(SPTA2001)+c0b2d;
mangSPTA2002 :=     c1b34d*abs(SPTA2002)+c0b34d;
exec, b11dangle(mangDVRTR001,DVRTR001,p);
exec, b11dangle(mangDVRTR002,DVRTR002,n);
mangDHYTT001 := -1*(c0b36d + c1b36d*abs(DHYTT001));
exec, b45dangle(mangDHPTT001,DHPTT001,p);
exec, b45dangle(mangDHPTT002,DHPTT002,n);
mangDHRTT001 := -1*c1b30*abs(DHRTT001);
exec, b45dangle(mangDHSTT001,DHSTT001,n);
exec, b11dangle(mangDVRTT001,DVRTT001,p);
exec, b11dangle(mangDVRTT002,DVRTT002,n);
exec, b11dangle(mangDVRTE001,DVRTE001,p);
exec, b11dangle(mangDVRTE002,DVRTE002,n);
mangDHRTE001 :=    c1b30d*abs(DHRTE001);
mangDHRTE002 := -1*c1b31d*abs(DHRTE002);
mangDHRTE003 := -1*c1b31d*abs(DHRTE003);
exec, b11dangle(mangDVRTE003,DVRTE003,n);
exec, b11dangle(mangDVRTE004,DVRTE004,p);
mangSPTEL101 := -1*(c1b34d*abs(SPTEL101)+c2b34d); 
mangSPTEL102 := -1*(c1b2d*abs(SPTEL102)+c2b2d);
! end of magnetic angle definitions
! start of  kicks for tracking
SPTA1001K: KICKER,L=0,HKICK:=tkon*( ab2d    - mangSPTA1001);
SPTA1002K: KICKER,L=0,HKICK:=tkon*( ab34d   - mangSPTA1002);
DVRTL001K: KICKER,L=0,VKICK:=tkon*( ab11d   - mangDVRTL001);
DVRTL002K: KICKER,L=0,VKICK:=tkon*(-ab11d   - mangDVRTL002);

SPTA2001K: KICKER,L=0,HKICK:=tkon*( ab2d    - mangSPTA2001);
SPTA2002K: KICKER,L=0,HKICK:=tkon*( ab34d   - mangSPTA2002);
DVRTR001K: KICKER,L=0,VKICK:=tkon*( ab11d   - mangDVRTR001);
DVRTR002K: KICKER,L=0,VKICK:=tkon*(-ab11d   - mangDVRTR002);

DHYTT001K: KICKER,L=0,HKICK:=tkon*(-ab36d   - mangDHYTT001);
DHPTT001K: KICKER,L=0,HKICK:=tkon*( ab45d   - mangDHPTT001);
DHPTT002K: KICKER,L=0,HKICK:=tkon*(-ab45d   - mangDHPTT002);
DHRTT001K: KICKER,L=0,HKICK:=tkon*(-ab30d   - mangDHRTT001);
DHSTT001K: KICKER,L=0,HKICK:=tkon*(-ab45d   - mangDHSTT001);
DVRTT001K: KICKER,L=0,VKICK:=tkon*( b11d    - mangDVRTT001);
DVRTT002K: KICKER,L=0,VKICK:=tkon*(-b11d    - mangDVRTT002);

DHRTP001K: KICKER,L=0,HKICK:=tkon*(-ab30d   - mangDHRTT001);
DHRTP002K: KICKER,L=0,HKICK:=tkon*(-ab30d   - mangDHRTT001);

DVRTE001K: KICKER,L=0,VKICK:=tkon*( b11d    - mangDVRTE001);
DVRTE002K: KICKER,L=0,VKICK:=tkon*(-b11d    - mangDVRTE002);
DHRTE001K: KICKER,L=0,HKICK:=tkon*( ab30p3d - mangDHRTE001);
DHRTE002K: KICKER,L=0,HKICK:=tkon*(-ab31d   - mangDHRTE002);
DHRTE003K: KICKER,L=0,HKICK:=tkon*(-ab31d   - mangDHRTE003);
DVRTE003K: KICKER,L=0,VKICK:=tkon*(-b11d    - mangDVRTE003);
DVRTE004K: KICKER,L=0,VKICK:=tkon*( b11d    - mangDVRTE004);
SPTEL102K: KICKER,L=0,HKICK:=tkon*(-ab34    - mangSPTEL102);
SPTEL101K: KICKER,L=0,HKICK:=tkon*(-ab2d    - mangSPTEL101);


!!!! finally the model
!in ACC
mSPTA1001: line=(SPTA1001, SPTA1001k, SPTA1001);
mSPTA1002: line=(SPTA1002, SPTA1002k, SPTA1002);
mDVRTL001: line=(DVRTL001a,DVRTL001k, DVRTL001b);
mDVRTL002: line=(DVRTL002a,DVRTL002k, DVRTL002b);

mSPTA2001: line=(SPTA2001, SPTA2001k, SPTA2001);
mSPTA2002: line=(SPTA2002, SPTA2002k, SPTA2002);
mDVRTR001: line=(DVRTR001a,DVRTR001k, DVRTR001b);
mDVRTR002: line=(DVRTR002a,DVRTR002k, DVRTR002b);

mDHYTT001: line=(DHYTT001a,DHYTT001k, DHYTT001b);
mDHPTT001: line=(DHPTT001a,DHPTT001k, DHPTT001b);!

! in LINAC
mDHPTT002: line=(DHPTT002a, DHPTT002k, DHPTT002b);
mDHRTT001: line=(DHRTT001a, DHRTT001k, DHRTT001b);
mDHSTT001: line=(DHSTT001a, DHSTT001k, DHSTT001b);
mDVRTT001: line=(DVRTT001a, DVRTT001k, DVRTT001b);
mDVRTT002: line=(DVRTT002a, DVRTT002k, DVRTT002b);

! in DAFNE
mDHRTP001: line=(DHRTP001a,DHRTP001k, DHRTP001b);
mDHRTP002: line=(DHRTP002a,DHRTP002k, DHRTP002b);

mDVRTE001: line=(DVRTE001a,DVRTE001k, DVRTE001b);
mDVRTE002: line=(DVRTE002a,DVRTE002k, DVRTE002b);
mDHRTE001: line=(DHRTE001a,DHRTE001k, DHRTE001b);
mDHRTE002: line=(DHRTE002a,DHRTE002k, DHRTE002b);
mDHRTE003: line=(DHRTE003a,DHRTE003k, DHRTE003b);
mDVRTE003: line=(DVRTE003,DVRTE003K);
mDVRTE004: line=(DVRTE004,DVRTE004K);
mSPTEL101: line=(SPTEL101,SPTEL101K);
mSPTEL102: line=(SPTEL102,SPTEL102K);
! end of new model

! what are these ???
DHSTB001: sbend,l=1.353,angle=0.0;    !bend to ...???
! stop;
return;
