! Dipoles of DAFNE TRANSFER LINE
!March 2003 
!beam out EXTRACTION POSITRONS FROM ACCUM. TO TL

 SPTA1001: SBEND, L = 0.623, ANGLE = -0.0349066;    !SSE1,SP1 
 SPTA1002: SBEND, L = 1.233, ANGLE = -0.593411946;     !SSE2,SP2


!beam out (not used = TTE1) EXTRACTION e+ FROM ACCUMULATOR INTO DAFNE 
 DHYTT001: SBEND,L=1.,E1=.6283185308,ANGLE=.6283185308;  !TP1

!Horizontal magnets for e+ ****************  POSITRONS   **********
 DHRTP001  : SBEND,L=0.45171748,ANGLE=-.318784388,E1=-.159392194,
             E2=-.159392194;  ! HP5

 DHRTP002: SBEND,L=0.45144977,ANGLE=-.236732969,E1=-.118366485,
            E2=-.118366485; !HP6


!Septa in Dafne 
! for positrons
 SPTPL101: SBEND, L = 1.233, ANGLE = -0.593411946;  !SPD2       
 SPTPL102: SBEND, L = 0.623, ANGLE = -0.034906585;          !SPD1

 DHPTT001: SBEND, L = 1.113, ANGLE =  0.785398163;    !HPE1
 DHPTT002: SBEND, L = 1.113, ANGLE = -0.785398163;    !HPE2

 DHRTT001: SBEND,L=0.757,ANGLE=-.52359878,E1=-.261799388,E2=-.261799388; !HPE3

 DVRTT001: SBEND,L=.35,TILT := pi/2,ANGLE=.191986,E1=0.095993,E2=0.095993;

 DVRTT002: SBEND,L=.35,TILT := pi/2,ANGLE=-.191986,E1=-0.095993,E2=-0.095993;

! magnets in the range WCMTL01toD8
 DVRTL002: SBEND, L = 0.35, TILT := pi/2, ANGLE = -0.191986,E1=-0.095993,E2=-0.095993; ! Bends upward

! magnets in the range D7toD4
 DVRTL001: SBEND, L = 0.35, TILT := pi/2, ANGLE = 0.191986, E1 = 0.095993, E2 = 0.095993;  ! Bends downward

 DHSTT001: SBEND, L = 1.113, ANGLE = -0.785398163;   !HPE4

 return;