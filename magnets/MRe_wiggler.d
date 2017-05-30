// =====================================================================
// ELECTRON RING WIGGLER DEFINITION
// =====================================================================
//
// Notes:
// ------
//
//  Wiggler model scaled for 400 A
//
// title,"Shifted poles model"
//
// Per ora: messe tutte le lenti sottili FC uguali tra loro, cosi come HC
// per il dipolo ed il drift messe le dimensioni corrette. Nella 
// lente sottile all'inizio metto anche termine dipolare = I0 solito 
// sul semiperiodo-I0 calcolato nella lunghezza del dipolo
//
// The names of the poles are (starting from the left):
// HC1, FC1, FC2, FC3, FC4, FC5 and HC2.
// a, b and c refer to the first, the second and the third lense in each 
// semiperiod of the full poles
// respectively.
//
// ----------------------------------------------------------------------

Fint_wig := 0.37;     // 0.308 nominal value,0.37 to match Rmatrix,

LFC := 0.05375-0.0115; // Di FC
LHC := 0.054-0.0127; // Tra HC e FC

Lungh_HC := 0.1369;  //Lunghezza in z di HC
Lungh_FC := 0.2355;   // Lunghezza in z di FC
LSTART := (2.0126-5*Lungh_FC-2*Lungh_HC-2*LHC-10*LFC)/2.d0;      //Prima di HC1 e dopo HC2
//!LSTART := (2.0126-2*Lungh_HC-5*(2*LFC+Lungh_FC)-2.0*LHC)/2.d0;
LSTART := (2.0126-5*Lungh_FC-2*Lungh_HC-3*LHC-10*LFC)-0.00005+0.013225;

//Dipoles.

//ang_w := -0.1127;   !Wiggler a 400 Amps parametro nel file .loc



HC1b: SBEND,L:=Lungh_HC,  ANGLE:= ang_w,E1:=0,E2:= ang_w,Fint:=Fint_wig,Fintx:=Fint_wig,HGAP:=0.0185;

FCma: SBEND,L:=Lungh_FC/2,ANGLE:=-ang_w,E1:=-ang_w,E2:=0,Fint:=Fint_wig,Fintx:=0.0,HGAP:=0.0185;
FCmb: SBEND,L:=Lungh_FC/2,ANGLE:=-ang_w,E1:=0,E2:=-ang_w,Fint:=0.0,Fintx:=Fint_wig,HGAP:=0.0185;

FCpa: SBEND,L:=Lungh_FC/2,ANGLE:= ang_w,E1:= ang_w,E2:=0,Fint:=Fint_wig,Fintx:=0.0,HGAP:=0.0185;
FCpb: SBEND,L:=Lungh_FC/2,ANGLE:= ang_w,E1:=0,E2:= ang_w,Fint:=0.0,Fintx:=Fint_wig,HGAP:=0.0185;

HC2b: SBEND,L:=Lungh_HC,  ANGLE:= ang_w,E1:= ang_w,E2:=0,Fint:=Fint_wig,Fintx:=Fint_wig,HGAP:=0.0185;

// Drifts.
// I define the drift as DRFC1a and DRFC1b for the two regions of drift at the 
// beginning and at the end of the poles.

DRHC1a: DRIFT,L:=LSTART;

DRHC: DRIFT,L:=LHC;
DRFC: DRIFT,L:=LFC;

// Thin lenses. In a e c metto come dipolo quello che mi avanza dalle due metà dei dipoli.
// Aggiungi pero  anche l angolo di bending.
// Usata mappa a passo di 2 mm per calcolare gli integrali


// K1FW := -2.052595E-03;
k3lepw  := -1.3;
k3lipw  := -1.9;
k2lepw  :=  1.0;
k2lipw  :=  2.8;

// K1FW := -2.052595E-03;
k2lepw  := 1.0;
k2lipw  := 2.8;

k2lepw  :=  1.309;
k2lipw  :=  4.;

k2lepw  :=  0.7;
k2lipw  :=  4.;
mdipk2l := -0.6;


//  riproduce mediamente meglio tutte le misure
// mdipk2l = -0.38;
// k2lipw =  .8;
// k2lepw = .31;

//  fit finale
// k1fw =       -0.002052595 ;
// k3lepw =               -1.3;
// k3lipw =               -1.9;
// k2lepw =       0.9469361246;
// k2lipw =                  4.;
// mdipk2l =               -0.6;

// ak2l = -1.21675e-01;
// ak2l = 1.;
// k2lepw := .7*ak2l;
// k2lipw := 2.88256e+00*ak2l;


// WMHC: multipole,TYPE = wgl,knl:={0.,-0.00065,k2lepw,k3lepw,8200*2.}; 
// WMFCmb:multipole,TYPE = wgl,knl:={0.,0.0147+k1fw,-k2lipw,k3lipw,-14800.*2.};
// WMFCpb:multipole,TYPE = wgl,knl:={0.,0.0147+k1fw, k2lipw,k3lipw,14800.*2.};

WMHC:   multipole,TYPE = wgl,knl:={0.,-0.00065,k2lepw,k3lepw}; 
WMFCmb: multipole,TYPE = wgl,knl:={0.,0.0147+k1fw,-k2lipw,k3lipw};
WMFCpb: multipole,TYPE = wgl,knl:={0.,0.0147+k1fw, k2lipw,k3lipw};


// I make each single pole
HC1: line=(DRHC1a,WMHC,HC1b,WMHC,DRHC);
FCm: line=(DRFC,FCma,WMFCmb,FCmb,DRFC);
FCp: line=(DRFC,FCpa,WMFCpb,FCpb,DRFC);
HC2: line=(DRHC,WMHC,HC2b,WMHC,DRHC1a);

// I make the wiggler
// Wiggler: line = (HC1,FC1,FC2,FC3,FC4,FC5,HC2);

Wig_in :marker;
Wig_out :marker;

WIGGLERES1: line= (Wig_in,HC1,FCm,FCp,FCm,FCp,FCm,HC2,Wig_out);
WIGGLERES2: line= (HC1,FCm,FCp,FCm,FCp,FCm,HC2);
WIGGLEREL1: line= (HC1,FCm,FCp,FCm,FCp,FCm,HC2);
WIGGLEREL2: line= (HC1,FCm,FCp,FCm,FCp,FCm,HC2);

return;
