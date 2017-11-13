
!ELECTRONS Exit from ACCUMULATOR FROM TR;

! end linac -> thin chamber;
TM1: line=(QLE0,DLTM0,DLTM1,QUATM001,QUATM001,DLTM2,QUATM002,QUATM002,BPSTM001,
             DLTM3,QUATM003,QUATM003,DLTM4,CHVTM001,DLTM5,CHVTM002,DLTM6,
             BPFTM01,DLTM7,QUATM004,QUATM004);

! thin chamber -> magnete pulsato;
TM2: line=(THIN1,DLTM8,DHSTB001,DLTM9A,THIN2,DLTM9B,THIN3,DLTM9C,
             CHVTM003,DLTM10,QUATM005,QUATM005,DLTM11,QUATM007,QUATM007,DLTM12,
             QUATM008,QUATM008,DL8A,CHVTM004,DL8,QUATM009,QUATM009,DL9,mDHPTT002);

! TM line;
TMLINE: line=(TM1,TM2);

! magnete pulsato -> bending DHPTT001;
!TT2: line=(D17,FL2TT002,QUATT006,QUATT006,BPSTT004,D16,CHVTT005,D16A);
TT2:    line=(D16A,CHVTT005,D16B,BPSTT004,D16C,
	      QUATT006,QUATT006,FL2TT002,D17);
! bending DHPTT001 -> splitter;
!TT1: line=(BPSTT003,FL2TT001,D15,QUATT005,QUATT005,D14,CHVTT004,D14A,
!           WCMTT001,QUATT004,QUATT004,D13,CHVTT003,D13A,QUATT003,QUATT003,D12,
!           CHVTT002,D12A,BPSTT002,D12B,QUATT002,QUATT002,D11,CHVTT001,
!           D11A,QUATT001,QUATT001,D10,BPSTT001);
TT1:    line=(BPSTT001,VALTT001,D10,
	      QUATT001,QUATT001,
	      D11A,CHVTT001,D11B,
	      QUATT002,QUATT002,
	      D12A,SIPTT001,BPSTT002,D12B,CHVTT002,D12C,
	      QUATT003,QUATT003,
	      D13A,CHVTT003,D13B,
              QUATT004,QUATT004,WCMTT001,SLTTT001,
	      D14A,CHVTT004,D14B,
	      QUATT005,QUATT005,
	      D15A,SIPTT002,D15B,FL2TT001,BPSTT003);
! TT line;
AI_TTLINE: line=(-TT2,mDHPTT001,-TT1);

! left transfer line (with vertical bends);

TL3: line=(WCMTL001,BPSTL002,D9A,D9B,QUATL005,QUATL005,D8A,CHVTL003,FL2TL002,D8);

TL2: line=(D7,QUATL004,QUATL004,D6A,CHVTL002,D6,QUATL003,QUATL003,D5,QUATL002,QUATL002,D4A,
           BPSTL001,CHVTL001,D4);

TL1: line= (D3,QUATL001,QUATL001,D2,FL2TL001);

! TL line;
TLLINE: line=(TL3,mDVRTL002,TL2,mDVRTL001,TL1);

! accu. splitters injection electrons;
!EINJSPL: line= (SPTA1001,D1,SPTA1002);

! accu.electron  injection septa
ASPTein: LINE= (SPTA1001,D1,SPTA1002);

! endlinac -> accum. inject. (with splitters);
e_AI: line=(TMLINE,AI_TTLINE,(DHYTT001,DHYTT001YR),
            TLLINE,ASPTein);


!***********************************************;
! acc. extr e-  FROM ACCUM.  TO TR;
! right tranfer line ; 
ASPTeout: line=(FL2A2001,mSPTA2001,D1,mSPTA2002);
TR1:      line=(D2A,FL2TR001,D2B,QUATR001,QUATR001,D3);
TR2:      line=(D4A,CHVTR001,BPSTR001,D4B,
                QUATR002,QUATR002,
		D5A,SIPTR001,D5B,
		QUATR003,QUATR003,
		D6A,CHVTR002,D6B,
		QUATR004,QUATR004,D7);
TR3:      line=(D8A,FL2TR002,D8B,CHVTR003,D8C,
	        QUATR005,QUATR005,
		D9A,WCMTR001,D9B,BPSTR002);
TRLINE:   line=(ASPTeout,TR1,mDVRTR001,TR2,mDVRTR002,TR3);
! tt line
TT3:      line=(D18A,CHVTT006,BPSTT005,D18B,FL1TT001);
TT4:      line=(D19,QUATT007,QUATT007,D20);

TT5: line = (KER5,FL1TT002,D21A,CHVTT007,D21B,QUATT008,QUATT008,BPSTT006,D22);

TT6: line = (KER1,D23A,D23B,QUATT009,QUATT009,D23C,BPSTT007,D24);

TT7: line = (KER2,D25A,CHVTT009,D25B,BPSTT008,D25C,
     	     QUATT010,QUATT010,FL1TT003,
	     D26A,CHVTT010,D26B,QUATT011,QUATT011,D26C,
	     DHRTP001);
TTLINE: line=(TT1,mDHPTT001,TT2,mDHPTT002,TT3,mDHRTT001,TT4,mDHSTT001,
              TT5,mDVRTT001,TT6,mDVRTT002,TT7);
! te line
TE1:    line=(D51A,BPSTE001,D51B,VALTE001,SIPTE001,D51C,KER3);
TE2:    line=(D52A,CHVTE001,D52B,QUATE001,QUATE001,
     	      D53A,BPSTE012,D53B);// or is it BPSTM003 ???
TE3:    line=(KER4,D54,QUATE002,QUATE002,
	      D55A,CHVTE002,D55B,BPSTE002,D55C);
TE4:    line=(D56A,SIPTE002,D56B,QUATE003,QUATE003,
	      D57,QUATE004,QUATE004,
	      D158A,BPSTE003,D158B,SCRTE001,D158C,QUATE104,QUATE104,
	      D58,FL1TE001,
	      D59,QUATE105,QUATE105,
	      D159,QUATE005,QUATE005,
	      D60A,CHVTE004,D60B,SIPTE003,D60C,QUATE006,QUATE006,
	      D61A,SXTTE001,D61B,BPSTE004,D61C);
TE5:    line=(KER6,WCMTE000,D62);
TE6:    line=(KER7,
     	      D63A,FL1TE002,D63B,QUATE007,QUATE007,SIPTE004,
	      D64A,CHVTE005,
	      D64B,QUATE008,QUATE008,
	      D65A,BPSTE005,D65B);
TE7:    line=(D66A,BPSTE006,D66B,CHVTE006,D66C,VUGTE002,D66D,QUATE009,QUATE009,
              D67A,FVLTE001,FL1TE003,VALTE003,D67B,
	      WCMTE001);//WCMTE001 NOT SEEN IN THE LINE!!
TELINE: line=(TE1,
	      mDVRTE001,TE2,mDVRTE002,
	      TE3,mDHRTE001,
	      TE4,mDHRTE002,
	      TE5,mDHRTE003,
	      TE6,
	      mDVRTE003,TE7,mDVRTE004);
!septum line
e_SPT:  line=(D68,mSPTEL101,D69A,SXPEL100,D69B,mSPTEL102,D70);
! accum -> dafne;
e_AE:   line=(TRLINE,mDHYTT001,TTLINE,TELINE,e_SPT,FL1EL101,D71,QUAEL101ENTRY);

! ***********************************************;
! positrons

! TP;
 tp1  : line = (D27,QUATP001,QUATP001,D28,mqtp02,
                QUATP002,QUATP002,FL1TP001,D29,Mqtp03,QUATP003,QUATP003,D30);
 tp2  : line = (D31,QUATP004,QUATP004,D32,FL1TP002); 

 p_SPT : line = (SPTPL101,D33,SPTPL102,D34); 

! linac -> accum
 p_Ai: line = (TMLINE,AI_TTLINE,mDHYTT001,-TRLINE);

! accum -> dafne
 p_AE : line = (-ASPTein,-TLLINE,(DHYTT001,DHYTT001YR),TTLINE,MDHRTP01, DHRTP001,
               tp1, DHRTP002,tp2,p_SPT,FL1PL101);

 return;

