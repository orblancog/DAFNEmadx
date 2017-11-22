!call, file="TL_dipoles.d";

!!!!!!!!!!!!! ... now the magnets definitions ... 
! ! old bending definition
! SPTA2001: SBEND,L= .623,              ANGLE= 0.0349066;
! SPTA2002: SBEND,L=1.233,              ANGLE= 0.593411946; 
! DVRTR001: SBEND,L= .35 ,TILT:=twopi/4,ANGLE= 0.191986,    E1=0.095993,   E2=0.095993;
! DVRTR002: SBEND,L= .35 ,TILT:=twopi/4,ANGLE=-0.191986,    E1=0.095993,   E2=0.095993;  
! DHYTT001: SBEND,L=1.   ,              ANGLE=-0.6283185308,E1=0.6283185308;
! DHPTT001: SBEND,L=1.113,              ANGLE= 0.785398163;
! DHPTT002: SBEND,L=1.113,              ANGLE=-0.785398163;
! DHRTT001: SBEND,L=0.757,              ANGLE=-0.52359878,  E1=0.261799388,E2=0.261799388;
! DHSTT001: SBEND,L=1.113,              ANGLE=-0.785398163;
! DVRTT001: SBEND,L=.35,  TILT:=twopi/4,ANGLE= 0.191986,    E1=0.095993,   E2=0.095993;
! DVRTT002: SBEND,L=.35,  TILT:=twopi/4,ANGLE=-0.191986,    E1=0.095993,   E2=0.095993;
! DVRTE001: SBEND,L=.35,  TILT:=twopi/4,ANGLE= 0.191986,    E1=0.095993,   E2=0.095993;
! DVRTE002: SBEND,L=.35,  TILT:=twopi/4,ANGLE=-0.191986,    E1=0.095993,   E2=0.095993;
! DHRTE001: SBEND,L=0.757,              ANGLE=.528679953,   E1=.26433976,  E2=.26433976;
! DHRTE002: SBEND,L=0.757,              ANGLE=-.542099266,  E1=-.271049633,E2=-.271049633;
! DHRTE003: SBEND,L=0.757,              ANGLE=-.542099266,  E1=-.271049633,E2=-.271049633;
! DVRTE003: SBEND,L=.35,  TILT:=twopi/4,ANGLE=-.191986,     E1=0.095993,   E2=0.095993;
! DVRTE004: SBEND,L=.35,  TILT:=twopi/4,ANGLE= .191986,     E1=0.095993,   E2=0.095993;
! SPTEL101: SBEND, L = 1.233,           ANGLE = -0.593411946;
! SPTEL102: SBEND, L = 0.623,           ANGLE = -0.034906585;
! ! old model
! mSPTA2001: line=(SPTA2001);
! mSPTA2002: line=(SPTA2002);
! mDHYTT001: line=(DHYTT001);
! mDHPTT001: line=(DHPTT001);!
! mDHPTT002: line=(DHPTT002);
! mDHRTT001: line=(DHRTT001);
! mDHSTT001: line=(DHSTT001);
! mDHRTE001: line=(DHRTE001);
! mDHRTE002: line=(DHRTE002);
! mDHRTE003: line=(DHRTE003);
! mSPTEL101: line=(SPTEL101);
! mSPTEL102: line=(SPTEL102);
! ! vertical
! mDVRTR001: line=(DVRTR001);
! mDVRTR002: line=(DVRTR002);
! mDVRTT001: line=(DVRTT001);
! mDVRTT002: line=(DVRTT002);
! mDVRTE001: line=(DVRTE001);
! mDVRTE002: line=(DVRTE002);
! mDVRTE003: line=(DVRTE003);
! mDVRTE004: line=(DVRTE004);
! ! end of old def

