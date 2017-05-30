// =====================================================================
// ELECTRON RING DRIFT SECTION DEFINITION
// =====================================================================
//
// Notes:
// ------
// Drift Sections:
// modified by C.M July 2010 KLOE-2 run with Crab-Waist collision scheme
// November 2010 QUADS positions in the RCR set according measurements
// November 2010 misurate le distanze relative dei QUADS nelle short, 
// inserite nel modello distanze uguali per e+ ed e- 
//
// ---------------------------------------------------------------------

LCS7:   DRIFT,L=0.22820000;
LCS8:   DRIFT,L:=0.091799997;
LCS7_1: DRIFT,L:=0.20180000;
LCS8_1: DRIFT,L:=0.11820000;
LCL7_1: DRIFT,L:=0.22820000;
LCL8_1: DRIFT,L:=0.091799997;
LCL7:   DRIFT,L:=0.2018;
LCL8:   DRIFT,L:=0.1182;

//list of drifts

LB11 =0.156;
LB12 =0.144;
LB21 =0.165;
LB22 =0.135;
LB31 =0.08;
LB33 =0.27;
LB41 =0.14;
LB42 =2.3695;
LB43 =0.05;
LB1k: DRIFT,L:=0.156;
LB2k: DRIFT,L:=0.144;
LB3k: DRIFT,L:=0.165;
LB4k: DRIFT,L:=0.145;
LB5k: DRIFT,L:=0.12;
LB6k: DRIFT,L:=0.25;
LB7k: DRIFT,L:=0.15;

//Drifts in PS1 IP1 -> PS1
//       in PL1 PL1 -> IP1

LLMS1    = 0.52906173;           
LLMS1a   = 0.82 -0.533;  
LQPS101  = 0.81;
LLMS1b   = 1.64909323 - lqps101 -0.30599+0.10;   //   messo per eliminare QUAPS100 +.10 per eliminare QSKPS100
LLMS1b_1 = 0.30599;
LLMS1_1  = 0.53303152;
LLMS1S   = 2.573785;
LLMS2    = 0.081589 + lqps101;
LLMS3_0  = 0.45709;
LLMS3_1  = 0.37506801;          // inserito il compensatore
lqs102   = 0.0;
LLMS3_2  = 0.02;
LLMS5    = 0.475026;
LLMS3    = 0.45709;
LLMS5_2  = 0.12502600;
LLMS5_1  = 0.35;
LLMS6    = 0.070009999 + lcws;   // lcws parametro usato per spostare i CW SXT
LLMS6_1  = 0.073009998;
LLMS6_2  = 0.0089999996+ lcws;
LLMS8    = 0.22901100- lcws;     // distanza sxp skew
LLMS8_1  = 0.021011000- lcws;  // distanza sxp skew
LLMS8_2  = 0.22; 
LLMS6s   = 0.12501;
LLMS8s   = 0.23601;

LMS1:    DRIFT,L:= llms1;
LMS1a:   DRIFT,L:= llms1a;
LMS1b:   DRIFT,L:= LLMS1b;      // messo per eliminare QUAPS100
LMS1b_1: DRIFT,L:= LLMS1b_1;
LMS1_1:  DRIFT,L:= llms1_1;
LMS2:    DRIFT,L:= lLMS2;
LMS3:    DRIFT,L:= lLMS3;
LMS3_0:  DRIFT,L:= lLMS3_0;
LMS3_1:  DRIFT,L:= lLMS3_1;
LMS3_2:  DRIFT,L:= lLMS3_2;
LMS5:    DRIFT,L:= lLMS5;
LMS5_1:  DRIFT,L:= lLMS5_1;
LMS5_2:  DRIFT,L:= lLMS5_2;
LMS6:    DRIFT,L:= lLMS6;
LMS6_1:  DRIFT,L:= lLMS6_1;
LMS6_2:  DRIFT,L:= lLMS6_2;
LMS8:    DRIFT,L:= lLMS8;
LMS8_1:  DRIFT,L:= lLMS8_1;
LMS8_2:  DRIFT,L:= lLMS8_2;

//Drifts of matching between low beta and cells for short arc
 
LMS9:   DRIFT,L := 0.30337000;
LMS9_2: DRIFT,L :=0.303531;
LLML9 = 0.426235;
LML9:   DRIFT,L:= LLML9;
LML9_2: DRIFT,L:= 0.42623401;

//Cell for short arc
//Drifts of short arc cell

LC05:  DRIFT,L := 0.415;
LC15:  DRIFT,L := 0.15;
LCS1:  DRIFT,L := 0.45289701;
LCS2:  DRIFT,L := 0.205; //
LCS3:  DRIFT,L := 0.130; // 
LCS4:  DRIFT,L := 0.135;
LCS5:  DRIFT,L := 0.095;  //
LCS6:  DRIFT,L := 0.390;  //
LCS9:  DRIFT,L := 0.045;
LCS10: DRIFT,L := 0.125;
LCS11: DRIFT,L := 0.080; //
LCS12: DRIFT,L := 0.205; //
LCS13: DRIFT,L := 0.40;

// Drift of central section of short arc

lldummy: DRIFT, L:= 0.20;

LS1_1:  DRIFT,L := 0.37465-0.0007-0.0118;
LS2_1:  DRIFT,L := 0.1283+0.0007+0.0013+0.0118;
LS3_1:  DRIFT,L := 0.1484970-0.0013;
LS1:    DRIFT,L := 0.4377472-0.0637008+0.0003-0.0017;
LS2:    DRIFT,L := 0.1121998-0.04149800-0.0052998+0.0637008 -0.0003+0.0017;
LS3:    DRIFT,L := 0.142998+ 0.0052998;
LS4:    DRIFT,L := 0.0685;
LS4_1:  DRIFT,L := 0.0639+0.0003;
LS4a:   DRIFT,L := 0.05-0.0025+0.0132;
LS4b:   DRIFT,L := 0.05+0.0025-0.0132;
LS4_O:  DRIFT,L := 0.050;
LS5_1:  DRIFT,L := 0.130-0.0127-0.0001-0.012;
LS6_1:  DRIFT,L := 0.075000003+0.0127+0.0001+0.012;
LS5:    DRIFT,L := 0.130- 0.0235+ 0.0046+ 0.0004-0.0003-0.0017;   //-5 mm rispetto a d13r
LS6:    DRIFT,L := 0.075000003;      //+5 mm rispetto a d13r
LS6b:   DRIFT,L := 0.51450002-0.043299-0.0039;     //+5 mm rispetto a d13r
LS6c:   DRIFT,L := 0.47350001+0.0235-0.0004+0.0017;
LS7:    DRIFT,L := 0.072999999+0.0059+0.008;     // ---> da parameter list
LS7b:   DRIFT,L := 0.90499997+0.043299+0.0039;      // da parameter list
LS7c:   DRIFT,L := 0.0885;        // ---> da parameter list
LS8:    DRIFT,L := 0.1308 ; // ADS
LS9:    DRIFT,L := 0.0988077 ; //0.1095070-0.0118993+0.0007+0.0005;     // ---> da parameter list
LS9a_1: DRIFT,L := 0.06204;//377326 ; // ADS
LS9a_2: DRIFT,L := 0.0 ;       // ADS
LS9b:   DRIFT,L := 0.27826  ; // ADS
LS9b_1: DRIFT,L := 0.0647   ; //0.1142 -0.05;
LS9c:   DRIFT,L := 0.1512 ; // ADS 
LS10:   DRIFT,L := 0.5026923 ; // ADS 
LS10a:  DRIFT,L := 0.0965;
LS11:   DRIFT,L := 0.0; // ADS

// DRIFTs in PS2  PS2 -> IP2
//        in PL2  IP2 -> PL2
LMS10:    DRIFT,L := 0.44102141 + 0.0047  +0.023 -0.011;
LMS11:    DRIFT,L := 1.0600497;
LMS11s:   DRIFT,L := 0.99837261 - 0.3668;
LMS11s_1: DRIFT,L := 0.431627 - 0.0047;
LMS12:    DRIFT,L := 1.8511339;
LMS12s:   DRIFT,L := 0.57704753;
LMS12s_1: DRIFT,L := 0.90413248+ 0.3668;
LMS11l:   DRIFT,L := 0.98950237 + 0.0032;
LMS11l_1: DRIFT,L := 0.0705472 - 0.0047;
LMS12l:   DRIFT,L := 0.62258468;
LMS12l_1: DRIFT,L := 1.1755493- 0.0032;
LMS12l_2: DRIFT,L := 0.053 - 0.02;
LMS13:    DRIFT,L := 0.393 + 0.02;
LMS13_1:  DRIFT,L := 0.393;
LMS14_3:  DRIFT,L := 0.383883+0.0006;
LMS14_4:  DRIFT,L := 2.2585909 - 0.023+0.011-0.0006;
LMS14_2:  DRIFT,L := 2.258903 - 0.023 +0.011-0.0009;
LMS14_1:  DRIFT,L := 0.38357100+0.0009;
LMS15:    DRIFT,L := 0.155;
//
//LONG ARC
//
// Matching between low beta and cells of long arc
// Drifts of matching between low beta and cells of long arc
//
// CELL for long arc
// Drifts of cell for long arc
//
LCL1:  DRIFT,L := 0.32353842;
LCL2:  DRIFT,L := 0.205;
LCL3:  DRIFT,L := 0.130;
LCL4:  DRIFT,L := 0.135;
LCL5:  DRIFT,L := 0.095;
LCL6:  DRIFT,L := 0.390;
LCL9 : DRIFT,L := 0.045;
LCL10: DRIFT,L := 0.125;
LCL11: DRIFT,L := 0.080;
LCL12: DRIFT,L := 0.205;
LCL13: DRIFT,L := 0.4;

// Central section of long arc
// Drifts of central section of long arc
//
//
// quapl210& quapl101 moved closer to septum  p.r.
// and added a sextupole on the septum

LL13:  DRIFT,l:=1.36093247;
LL13a: DRIFT,L := 0.343;
LL13b: DRIFT,L := 1.022;
LL13c: DRIFT, l:= 0.10406753;	
LL12f: DRIFT,L := 0.43;
LL12g: DRIFT,L := 0.535;
LL12:  DRIFT,L := 1.065;
LL12a: DRIFT,L := 0.185;
LL12b: DRIFT,L := 0.252;
LL12c: DRIFT,L := 0.229;
LL12d: DRIFT,L := 0.144;
LL12e: DRIFT,L := 0.155;
LL9:   DRIFT,L := 0.175;
LL9a:  DRIFT,L := 0.078;
LL9b:  DRIFT,L := 0.097;
LL8:   DRIFT,L := 1.11;
LL8a:  DRIFT,L := 0.115;
LL8b:  DRIFT,L := 0.940 + 0.163;
LL8c:  DRIFT,L := 0.75999999+0.163;
LL8d:  DRIFT,L := 0.295;
LL7:   DRIFT,L := 0.6280 - 0.163;
LL7_1: DRIFT,L := 0.08; 
LL5:   DRIFT,L := 0.384;
LL5a:  DRIFT,L := 0.257;
LL5b:  DRIFT,L :=.067;
LL5c:  DRIFT,L :=.022;
LL5d:  DRIFT,L := 0.302;
LL4:   DRIFT,L := 0.094999999;
LL1:   DRIFT,L := 0.34055600;

return;


