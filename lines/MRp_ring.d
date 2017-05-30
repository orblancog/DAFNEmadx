// =====================================================================
// POSITRON ARCS AND RING DEFINITION
// =====================================================================
//
// Notes:
// ------
// Complex magnets (multipole components, special elements inside)
// are simulated as lines of segments. The name of the physical object
// is used for the equivalent line segment. 
//
// ---------------------------------------------------------------------
// ----------------------------------------------------------------------------
TITLE, "DAFNE 2013 positron ring";

call,file = "parameters/MRp_cwkloe.par";
call,file = "elements/MRp_kickers.d";
call,file = "elements/MRp_bpm.d";
call,file = "magnets/MRp_dipoles.d";
call,file = "magnets/MRp_quadrupoles.d";
call,file = "magnets/MRp_correctors.d";
call,file = "magnets/MRp_skew.d";
call,file = "magnets/MRp_sextupoles.d";
call,file = "magnets/MRp_octupoles.d";
call,file = "magnets/MRp_wiggler.d";
call,file = "elements/MRp_drifts.d";
call,file = "lines/MRp_rcr.d";
call,file = "lines/MRp_kloeir.d";


// ============================     PL1    =============================

PL1: LINE=(sept_quad,ll13a,SXPPL100,LL13b,
	   2*(QUAPL101),
	   LL12a,CHVPL101,
	   CHVPL101,LL12b,OCTPL101,LL12c,BPBPL101,
	   LL12d,OCTPL201,LL12e,
	   SXPPL101,LL9,
	   2*(QUAPL102),
	   LL8a,CHVPL102,CHVPL102,LL8b,
	   QUAPL103, // equivalent line segment
	   ll7_1,ll7,
	   2*(QUAPL104),
	   LL5a,BPBPL102,LL5b,
	   QSKPL103, // equivalent line segment
	   LL4,
	   2*(QUAPL114),
	   LL1,
	   DHRPL101, // equivalent line segment
	   LCL13,
	   BPBPL103,LCL12,
	   2*(QUAPL105),
	   LCL11,
	   CHVPL104,CHVPL104,LCL10,SXPPL102,LCL9,
	   BPBPL104,LCL8,
	   WIGGLERPL1, // equivalent line segment
	   LCL7,BPBPL105,
	   LCL6,
	   QUAPL106,
	   LCL5,CHVPL105,CHVPL105,LCL4,
	   SXPPL103,LCL3,
	   QUAPL107, // equivalent line segment
	   LCL2,BPBPL106,LCL1,
	   DHSPL102, // equivalent line segment
	   LML9,mmm,
	   QSKPL106, // equivalent line segment
	   LMS8_2,BPBPL107,LMS8_1,
	   SXPPL104,
	   LMS6,
	   2*(QUAPL108),
	   LMS5_1,BPBPL108,LMS5_2,
	   2*(QUAPL109),
	   LMS3_1,LMS3_2,
	   -(SOLI1001), // equivalent line segment (inverted)
	   LMS3,
	   DHCPL101,M_DHCPL101,M_DVCPL101,DHCPL101,
	   LMS2,
	   2*(QUAPL110),
	   LMS1b_1,BPBPL109,LMS1b);
// =============================     PS1   =================================

PS1: LINE = (LMS1b,BPBPS100,LMS1b_1,
     	     2*(QUAPS101),
	     LMS2,
	     DHCPS101,M_DHCPS101,M_DVCPS101,DHCPS101,
	     LMS3_0,
	     SOLI1002, // equivalent line segment
	     LMS3_1,BPBPS101,LMS3_2,
	     2*(QUAPS102),
	     LMS5,
	     2*(QUAPS103),
	     LMS6_1,BPBPS102,LMS6_2,SXPPS101,
	     LMS8,
	     QSKPS101, // equivalent line segment
	     LMS9,
	     DHSPS101, // equivalent line segment
	     lcs1,BPBPS103,LCS2,
	     QUAPS104, // equivalent line segment
	     LCS3,SXPPS102,LCS4,
	     CHVps102,CHVps102,lcs5,
	     QUAPS105,
	     LCS6,
	     BPBPS104,lcs7,
	     WIGGLERPS1, // equivalent line segment
	     lcs8,BPBPS105,
	     lcs9,SXPPS103,LCS10,CHVps103,CHVps103,
	     lcs11,
	     2*(QUAPS106),
	     lcs12,BPBPS106,
	     lcs13,
	     DHRPS102, // equivalent line segment
	     ls1_1,
	     2*(QUAPS107),
	     LS2_1,
	     QSKPS104, // equivalent line segment
	     LS3_1,BPBPS107,ls4,ls4a,OCTPS104,ls4b,
	     LS5_1,
	     2*(QUAPS108),
	     LS6_1,2*(rfcav),ls7,
	     CHVps105,CHVps105,lS8,
	     2*(QUAPS109),LS9,
	     BPBPS108,ls10,ls11,
	     2*(QUAPS110));
// ============================    PS2   ================================

PS2: LINE = (ls10a,BPBPS201,ls9b,CHVps106,CHVps106,
	     ls9b_1,ktrh,
	     LS9a_1,LS9a_2,
	     2*(QUAPS201),
	     ls9c,BPBPS202,ls7c,
	     LS7b,CHVps201,CHVps201,ls6b,ktrv,ls6c,
	     2*(QUAPS202),
	     ls5,SXPPS201,LS4_1,BPBPS203,
	     LS3,
	     QSKPS202, // equivalent line segment
	     LS2,
	     2*(QUAPS203),
	     ls1,
	     DHRPS201, // equivalent line segment
	     lcs13,
	     BPBPS204,lcs12,
	     2*(QUAPS204),
	     lcs11,
	     CHVps203,CHVps203,LCS10,SXPPS202,lcs9,
	     BPBPS205,lcs8_1,
	     WIGGLERPS2, // equivalent line segment
	     lcs7_1,BPBPS206,
	     LCS6,
	     QUAPS205, // equivalent line segment
	     lcs5,CHVps204,CHVps204,
	     LCS4,SXPPS203,LCS3,
	     QUAPS206, // equivalent line segment
	     LCS2,BPBPS207,LCS1,
	     DHSPS202, // equivalent line segment
	     LMS9_2,
	     QSKPS205, // equivalent line segment
	     LMS10,
	     2*(QUAPS207),
	     LMS11s_1,BPBPS208,LMS11s,
	     2*(QUAPS208),LMS12s_1,
	     BPBPS209,LMS12s,DHCPS201,
	     M_DHCPS201,M_DVCPS201,DHCPS201,LMS13_1,
	     2*(QUAPS209),
	     LMS14_2,
	     BPBPS210,
	     LMS14_1,LMS15);

// ===============================   PL2  ============================

PL2: LINE = (LMS15,LMS14_3,BPBPL299,LMS14_4,
     	     2*(QUAPL201),
	     LMS13,DHCPL201,
	     M_DHCPL201,M_DVCPL201,DHCPL201,
	     LMS12l,BPBPL200,LMS12l_1,BPBPL201,LMS12l_2,
	     2*(QUAPL202),
	     LMS11l,
	     BPBPL202,LMS11l_1,
	     2*(QUAPL203),
	     LMS10,
	     QSKPL201, // equivalent line segment
	     LML9_2,
	     DHSPL201, // equivalent line segment
	     lcl1,BPBPL203,LCL2,
	     QUAPL204, // equivalent line segment
	     LCL3,SXPPL202,LCL4,
	     CHVpl202,CHVpl202,lcl5,
	     QUAPL205,LCL6,
	     BPBPL204,lcl7_1,
	     WIGGLERPL2,  // equivalent line segment
	     lcl8_1,BPBPL205,
	     lcl9,SXPPL203,LCL10,CHVpl203,CHVpl203,
	     lcl11,
	     2*(QUAPL206),
	     LCL12,BPBPL206,lcl13,
	     DHRPL202, // equivalent line segment
	     ll1,
	     2*(QUAPL217),
	     LL4,
	     QSKPL201,  // equivalent line segment
	     LL5c,BPBPL207,LL5d,
	     2*(QUAPL207),
	     ll7,ll7_1,
	     QUAPL208,  // equivalent line segment
	     LL8c,CHVPL205,CHVPL205,LL8d,
	     2*(QUAPL209),
	     LL9a,BPBPL208,LL9b,SXPPL204,LL12f,CHVPL206,CHVPL206,LL12g,
	     2*(QUAPL210),
	     LL13c,BPBPL209,LL13,sept_quad);

// RING 

whole: LINE = (PL1,KLOElCW,IP1,KLOEsCW,PS1,PS2,
	       finudashort,IP2,finudalong,PL2);

return;
