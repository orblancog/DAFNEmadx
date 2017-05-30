// =====================================================================
// ELECTRON ARCS AND RING DEFINITION
// =====================================================================
//
// Notes:
// ------
// Complex magnets (multipole components, special elements inside)
// are simulated as lines of segments. The name of the physical object
// is used for the equivalent line segment. 
//
// ---------------------------------------------------------------------

TITLE, "DAFNE 2013 electron ring";

call,file = "parameters/MRe_cwkloe.par";
call,file = "elements/MRe_kickers.d";
call,file = "elements/MRe_bpm.d";
call,file = "magnets/MRe_dipoles.d";
call,file = "magnets/MRe_quadrupoles.d";
call,file = "magnets/MRe_correctors.d";
call,file = "magnets/MRe_skew.d";
call,file = "magnets/MRe_sextupoles.d";
call,file = "magnets/MRe_octupoles.d";
call,file = "magnets/MRe_wiggler.d";
call,file = "elements/MRe_drifts.d";
call,file = "lines/MRe_rcr.d";
call,file = "lines/MRe_kloeir.d";


// ============================     EL1    =============================

EL1: LINE=(sept_quad,ll13a,SXPEL100,LL13b,
	   2*(QUAEL101),
	   LL12a,CHVEL101,
	   CHVEL101,LL12b,OCTEL101,LL12c,BPBEL101,
	   LL12d,OCTEL201,LL12e,
	   SXPEL101,LL9,
	   2*(QUAEL102),
	   LL8a,CHVEL102,CHVEL102,LL8b,
	   QUAEL103, // equivalent line segment
	   ll7_1,ll7,
	   2*(QUAEL104),
	   LL5a,BPBEL102,LL5b,
	   QSKEL103, // equivalent line segment
	   LL4,
	   2*(QUAEL114),
	   LL1,
	   DHREL101, // equivalent line segment
	   LCL13,
	   BPBEL103,LCL12,
	   2*(QUAEL105),
	   LCL11,
	   CHVEL104,CHVEL104,LCL10,SXPEL102,LCL9,
	   BPBEL104,LCL8,
	   WIGGLEREL1, // equivalent line segment
	   LCL7,BPBEL105,
	   LCL6,
	   QUAEL106, // equivalent line segment
	   LCL5,CHVEL105,CHVEL105,LCL4,
	   SXPEL103,LCL3,
	   QUAEL107, // equivalent line segment
	   LCL2,BPBEL106,LCL1,
	   DHSEL102, // equivalent line segment
	   LML9,mmm,
	   QSKEL106, // equivalent line segment
	   LMS8_2,BPBEL107,LMS8_1,
	   SXPEL104,
	   LMS6,
	   2*(QUAEL108),
	   LMS5_1,BPBEL108,LMS5_2,
	   2*(QUAEL109),
	   LMS3_1,LMS3_2,
	   -(SOLI1001), // equivalent line segment (inverted)
	   LMS3,
	   DHCEL101,M_DHCEL101,M_DVCEL101,DHCEL101,
	   LMS2,
	   2*(QUAEL110),
	   LMS1b_1,BPBEL109,LMS1b);
// =============================     ES1   =================================

ES1: LINE = (LMS1b,BPBES100,LMS1b_1,
	     2*(QUAES101),
	     LMS2,
	     DHCES101,M_DHCES101,M_DVCES101,DHCES101,
	     LMS3_0,
	     SOLI1002, // equivalent line segment
	     LMS3_1,BPBES101,LMS3_2,
	     2*(QUAES102),
	     LMS5,
	     2*(QUAES103),
	     LMS6_1,BPBES102,LMS6_2,SXPES101,
	     LMS8,
	     QSKES101, // equivalent line segment
	     LMS9,
	     DHSES101, // equivalent line segment
	     lcs1,BPBES103,LCS2,
	     QUAES104, // equivalent line segment
	     LCS3,SXPES102,LCS4,
	     CHVes102,CHVes102,lcs5,
	     QUAES105, // equivalent line segment
	     LCS6,
	     BPBES104,lcs7,
	     WIGGLERES1, // equivalent line segment
	     lcs8,BPBES105,
	     lcs9,SXPES103,LCS10,CHVes103,CHVes103,
	     lcs11,
	     2*(QUAES106),
	     lcs12,BPBES106,lcs13,
	     DHRES102, // equivalent line segment
	     ls1_1,
	     2*(QUAES107),
	     LS2_1,
	     QSKES104, // equivalent line segment
	     LS3_1,BPBES107,ls4,ls4a,OCTES104,ls4b,
	     LS5_1,
	     2*(QUAES108),
	     LS6_1,2*(rfcav),ls7,
	     CHVes105,CHVes105,lS8,
	     2*(QUAES109),
	     LS9,BPBES108,ls10,ls11,
	     2*(QUAES110));
// ============================    ES2   ================================

ES2: LINE = (ls10a,BPBES201,ls9b,CHVes106,CHVes106,
	     ls9b_1,ktrh,
	     LS9a_1,LS9a_2,
	     2*(QUAES201),
	     ls9c,BPBES202,ls7c,
	     LS7b,CHVES201,CHVES201,ls6b,ktrv,ls6c,
	     2*(QUAES202),
	     ls5,SXPES201,LS4_1,BPBES203,
	     LS3,
	     QSKES202, // equivalent line segment
	     LS2,
	     2*(QUAES203),
	     ls1,
	     DHRES201, // equivalent line segment
	     lcs13,
	     BPBES204,lcs12,
	     2*(QUAES204),
	     lcs11,CHVES203,CHVes203,LCS10,SXPES202,lcs9,
	     BPBES205,lcs8_1,
	     WIGGLERES2, // equivalent line segment
	     lcs7_1,BPBES206,
	     LCS6,
	     QUAES205, // equivalent line segment
	     lcs5,CHVes204,CHVes204,
	     LCS4,SXPES203,LCS3,
	     QUAES206, // equivalent line segment
	     LCS2,BPBES207,LCS1,
	     DHSES202, // equivalent line segment
	     LMS9_2,
	     QSKES205, // equivalent line segment
	     LMS10,
	     2*(QUAES207),
	     LMS11s_1,BPBES208,LMS11s,
	     2*(QUAES208),
	     LMS12s_1,BPBES209,LMS12s,DHCES201,
	     M_DHCES201,M_DVCES201,DHCES201,LMS13_1,
	     2*(QUAES209),
	     LMS14_2,
	     BPBES210,
	     LMS14_1,LMS15);

// ===============================   EL2  ============================

EL2: LINE = (LMS15,LMS14_3,BPBEL299,LMS14_4,
     	     2*(QUAEL201),
	     LMS13,DHCEL201,
	     M_DHCEL201,M_DVCEL201,DHCEL201,
	     LMS12l,BPBEL200,LMS12l_1,BPBEL201,LMS12l_2,
	     2*(QUAEL202),
	     LMS11l,
	     BPBEL202,LMS11l_1,
	     2*(QUAEL203),
	     LMS10,
	     QSKEL201, // equivalent line segment
	     LML9_2,
	     DHSEL201, // equivalent line segment
	     lcl1,BPBEL203,LCL2,
	     QUAEL204, // equivalent line segment
	     LCL3,SXPEL202,LCL4,
	     CHVel202,CHVel202,lcl5,
	     QUAEL205, // equivalent line segment
	     LCL6,
	     BPBEL204,lcl7_1,
	     WIGGLEREL2, // equivalent line segment
	     lcl8_1,BPBEL205,
	     lcl9,SXPEL203,LCL10,CHVel203,CHVel203,
	     lcl11,
	     2*(QUAEL206),
	     LCL12,BPBEL206,lcl13,
	     DHREL202, // equivalent line segment
	     ll1,
	     2*(QUAEL217),
	     LL4,
	     QSKEL201, // equivalent line segment
	     LL5c,BPBEL207,LL5d,
	     2*(QUAEL207),
	     ll7,ll7_1,
	     QUAEL208, // equivalent line segment
	     LL8c,CHVEL205,CHVEL205,LL8d,
	     2*(QUAEL209),
	     LL9a,BPBEL208,LL9b,SXPEL204,LL12f,CHVEL206,CHVEL206,LL12g,
	     2*(QUAEL210),
	     LL13c,BPBEL209,LL13,sept_quad);
// RING 

whole: LINE = (EL1,KLOElCW,IP1,KLOEsCW,ES1,ES2,
	       finudashort,IP2,finudalong,EL2);

return;
