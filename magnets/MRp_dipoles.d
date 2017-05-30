// ===========================================
// ELECTRON RING DIPOLES DEFINITION
// ===========================================
//
// Notes:
// ------
// nominal values of Fint's and beta's
// Betas computed December 07
//
betass :=  0.0480;
betasl := -0.0165;
betaps := -0.0275;
betapl := -0.0370;

fin1 := 0.03969;
fin2 := 0.04317;
fin3 := 0.04073;
fin4 := 0.04656;

finol1 := fin1/(2*0.0375);
finol2 := fin2/(2*0.0375);
finol3 := fin3/(2*0.0375);
finol4 := fin4/(2*0.0375);

// Dipoles of short arc cell
// small angle := 40.5 degree  (DHRPS102,DHRPS201)
// small angle := 44.89 degree (DHSPS101,DHSPS202)

angps := 0.78343786;
angpp := 0.706858347;
LBB   := 0.989997526;
LBBs  := 0.99476082;

//  sector short
BS1A:SBEND,L:=LBBs/2,ANGLE:=angps/2,e1:=betass,hgap:=.0375,fint:=finol1,fintx:=0.0;
BS1B:SBEND,L:=LBBs/2,ANGLE:=angps/2,e2:=betass,hgap:=.0375,fint:=0.0,fintx:=finol1;

//  parallel short (described as sector)
BS2A:SBEND,L:=LBB/2,ANGLE:=angpp/2,e1:=angpp/2+betaps,hgap:=.0375,fint:=finol2,fintx:=0.0;
BS2B:SBEND,L:=LBB/2,ANGLE:=angpp/2,e2:=angpp/2+betaps,hgap:=.0375,fint:=0.0,fintx:=finol2;

//Dipoles of cell for long arc
//small angle := 45.11 gradi (DHSPL102, DHSPL201)
//large angle := 49.5 gradi  (DHRPL101, DHRPL202)

anggs := 0.78735861;
anggp := 0.86393786; 
LLBB  := 1.20999681; 
LLBBs := 1.20356303; 

// sector long
BL1A: SBEND,L:=LLBBs/2,ANGLE:=anggs/2,e1:=betasl,hgap:=.0375,fint:=finol3,fintx:=0.0;
BL1B: SBEND,L:=LLBBs/2,ANGLE:=anggs/2,e2:=betasl,hgap:=.0375,fint:=0.0,fintx:=finol3;

// parallel long
BL2A: SBEND,L:=LLBB/2,ANGLE:=anggp/2,e1:=anggp/2+betapl,hgap:=.0375,fint:=finol4,fintx:=0.0; 
BL2B: SBEND,L:=LLBB/2,ANGLE:=anggp/2,e2:=anggp/2+betapl,hgap:=.0375,fint:=0.0,fintx:=finol4;

// Backleg windings
c_PesSls := -0.36E-03;
c_PelSll := -0.53E-03;

BKLPL101: kicker, l:= 0.0, hkick := (c_PelSll * IHRPL101)/3.0;
BKLPL102: kicker, l:= 0.0, hkick := (c_PelSll * IHSPL102)/3.0;
BKLPS101: kicker, l:= 0.0, hkick := (c_PesSls * IHSPS101)/3.0;
BKLPS102: kicker, l:= 0.0, hkick := (c_PesSls * IHRPS102)/3.0;
BKLPS201: kicker, l:= 0.0, hkick := (c_PesSls * IHRPS201)/3.0;
BKLPS202: kicker, l:= 0.0, hkick := (c_PesSls * IHSPS202)/3.0;
BKLPL201: kicker, l:= 0.0, hkick := (c_PelSll * IHSPL201)/3.0;
BKLPL202: kicker, l:= 0.0, hkick := (c_PelSll * IHRPL202)/3.0;

// sextupole component
mDIPk2l := -0.6;
mDIP: multipole, knl :={0.0,0.0,mDIPk2l};

// dipoles definition (equivalent lines)
DHRPL101: line=(BKLPL101,BL2A,BKLPL101,BL2B,BKLPL101);
DHSPL102: line=(BKLPL102,mDIP,BL1A,BKLPL102,BL1B,mDIP,BKLPL102);
DHSPS101: line=(BKLPS101,BS1A,BKLPS101,BS1B,BKLPS101);
DHRPS102: line=(BKLPS102,BS2A,BKLPS102,BS2B,BKLPS102);
DHRPS201: line=(BKLPS201,BS2A,BKLPS201,BS2B,BKLPS201);
DHSPS202: line=(BKLPS202,BS1A,BKLPS202,BS1B,BKLPS202);
DHSPL201: line=(BKLPL201,mDIP,BL1A,BKLPL201,BL1B,mDIP,BKLPL201);
DHRPL202: line=(BKLPL202,BL2A,BKLPL202,BL2B,BKLPL202);

return;
