! DRIFT SECTION
!  25/03/2003

 D0:DRIFT ,L=0.;

!cambiamento del 28.1.93;
!******* START LIE1
 DL0:DRIFT ,L=1.000;
 DL1:DRIFT ,L=0.530;
 DL2:DRIFT ,L=2.620;
 DL3:DRIFT ,L=2.920;
 DL4:DRIFT ,L=.256;
 DL4A:DRIFT ,L=2.944;
 DL4A1:DRIFT ,L=2.944-0.015;
 DL4A2:DRIFT ,L=0.015;
!cambiamento del 12.4.94;
 DL5:DRIFT ,L=.428;
 DL5A:DRIFT ,L=.189;
!******* END LIE1

! START LIE2
 DL5A1:DRIFT ,L=1.185;
 DL5A2:DRIFT ,L=3.852;
 DL5A22:DRIFT ,L=.256;
 DL5B:DRIFT,L=0.4;
 dritm006        :drift l =     0.2000 ;
 DL6:DRIFT ,L=0.60;
 DL8A:DRIFT ,L=0.19;
 DL8:DRIFT ,L=0.51;
 DL9:DRIFT ,L=1.351;
! END LIE2 

! Drifts 

! ACCUMUL.SEPTUM - TR ;
 D1   :DRIFT,L=   0.390;
 D2A  :DRIFT,L=   0.4754/2.0;
 D2B  :DRIFT,L=   0.4754/2.0;
 D3   :DRIFT,L=   0.277;
! Vertical chicane drifts  TL;
 D4A  :DRIFT,L=   0.181+0.05;//+ half corrector size
 D4B  :DRIFT,L=   0.268+0.05;//+ half corrector size
 D5A  :DRIFT,L=   0.543/2.0;
 D5B  :DRIFT,L=   0.543/2.0;
 D6A  :DRIFT,L=   0.256;
 D6B  :DRIFT,L=   0.294;
 D7   :DRIFT,L=   0.550;
 D8A  :DRIFT,L=   1.523/2.0;
 D8B  :DRIFT,L=   1.523/2.0-0.256;
 D8C  :DRIFT,L=   0.256;
 D9A  :DRIFT,L=   0.963/2.0;
 D9B  :DRIFT,L=   0.963/2.0;
!4 beams line drifts TT-LLE3;
 D10  :DRIFT,L=   1.772;
 D11A :DRIFT,L=   1.970-0.256;
 D11B :DRIFT,L=   0.256;
 D12A :DRIFT,L=   1.700/2.0;
 D12B :DRIFT,L=   1.700/2.0-0.256;
 D12C :DRIFT,L=   0.256;
 D13A :DRIFT,L=   1.700-0.256;
 D13B :DRIFT,L=   0.256;
 D14A :DRIFT,L=   2.045-0.256;
 D14B :DRIFT,L=   0.256;
 D15A :DRIFT,L=   1.650/2.0;
 D15B :DRIFT,L=   1.650/2.0;
! wall drifts TT-LLE4;
 D16A :DRIFT,L=   4.189;
 D16B :DRIFT,L=   0.561/2.0;
 D16C :DRIFT,L=   0.561/2.0;
 D17  :DRIFT,L=   4.349;

! drifts for injection into Dafne;
 DQ: DRIFT,L=0.2;
 D20A:DRIFT,L=0.4;
 D20B:DRIFT,L=0.475;
 D18A:DRIFT ,L=1.081-.834;
 D18B:DRIFT ,L=.834;
 D19:DRIFT ,L=0.424;
 D20:DRIFT ,L=0.457;


 D21A   : DRIFT , L =   2.5-0.256;
 D21B   : DRIFT , L =   0.256;
 D22    : DRIFT , L =   2.387;
 D23A   : DRIFT , L =   0.907-.256;
 D23B   : DRIFT , L =   0.256;
 D23C   : DRIFT , L =   0.4;!???
 D24    : DRIFT , L =   1.109-0.4;

 D25A   : DRIFT , L =   1.418;
 D25B   : DRIFT , L =   0.2945;
 D25C   : DRIFT , L =   0.2945;
 D26A   : DRIFT , L =   3.696-1.18-0.37-0.5;
 D26B   : DRIFT , L =   0.5-0.1;! -half a magnet
 D26C   : DRIFT , L =   1.18+0.37-0.1;! -half a magnet

! TP
 D27:DRIFT ,L=1.863-0.45;
 D28:DRIFT ,L=1.884+0.45;
 D29:DRIFT ,L=1.884;
 D30:DRIFT ,L=1.708389;
 D31:DRIFT ,L=1.227;
 D32:DRIFT ,L=1.212023;
 D33:DRIFT ,L=0.390536;
 D34:DRIFT ,L=0.0;
! END TP;

! TE
 D51A   : DRIFT,L=   0.55;
 D51B   : DRIFT,L=   0.24;
 D51C   : DRIFT,L=   2.87;
 D52A   : DRIFT,L=   1.31;
 D52B   : DRIFT,L=   0.26;! ??? unknow distances btw vertical dipoles
 D53A   : DRIFT,L=   1.10;
 D53B   : DRIFT,L=   0.51;
 D54    : DRIFT,L=   1.74;
 D55A   : DRIFT,L=   1.05+0.05;//+ half corrector size
 D55B   : DRIFT,L=   0.33+0.05;//+ half corrector size
 D55C   : DRIFT,L=   0.40;
 D56A   : DRIFT,L=   0.50;
 D56B   : DRIFT,L=   1.61;
 D57    : DRIFT,L=   3.20;
 D158A  : DRIFT,L=   0.20;
 D158B  : DRIFT,L=   0.51;
 D158C  : DRIFT,L=   3.56-0.51;
 D58    : DRIFT,L=   1.78;
 D59    : DRIFT,L=   2.49;
 D159   : DRIFT,L=   4.00;
 D60A   : DRIFT,L=   0.40;//+ half corrector size
 D60B   : DRIFT,L=   1.12;//+ half corrector size
 D60C   : DRIFT,L=   1.40;
 D61A   : DRIFT,L=   0.58; 
 D61B   : DRIFT,L=   0.81-0.55;
 D61C   : DRIFT,L=   0.55;
 D62    : DRIFT,L=   0.87;
 D63A   : DRIFT,L=   0.80-0.45;
 D63B   : DRIFT,L=   0.45;
 D64A   : DRIFT,L=   0.58+0.05;//+ half corrector size
 D64B   : DRIFT,L=   0.13+0.05;//+ half corrector size
 D65A   : DRIFT,L=   0.82-0.22;
 D65B   : DRIFT,L=   0.22;
 D66A   : DRIFT,L=   1.050;
 D66B   : DRIFT,L=   0.10+0.05;//+ half corrector size
 D66C   : DRIFT,L=   0.14+0.05;//+ half corrector size
 D66D   : DRIFT,L=   0.30;
 D67A   : DRIFT,L=   0.36;
 D67B   : DRIFT,L=   1.46;
 D68    : DRIFT,L=   0.250;
 D69A   : DRIFT,L=   0.20;
 D69B   : DRIFT,L=   0.14;
 D70    : DRIFT,L=   0.12;
 D71    : DRIFT,L=   0.21;
! end TE
! DQ: DRIFT ,L=0.2; already defined

! DRIFT in the range LtoPM;
 DLTM0       :drift, l=1.000+0.950;
 DLTM1       :drift, l=0.530;
 DLTM2       :drift, l=2.570;
 DLTM3       :drift, l=2.820;
 DLTM4       :drift, l=0.206;
 DLTM5       :drift, l=1.902;
 DLTM6       :drift, l=0.632;
 DLTM7       :drift, l=0.300;
 DLTM8       :drift, l=0.377;
 DLTM9A      :drift, l=1.021;
 DLTM9B      :drift, l=0.880;
 DLTM9C      :drift, l=3.4858;
! DLTM9       :drift, l=5.3868;
 DLTM10      :drift, l=0.646;
 DLTM11      :drift, l=0.600;
 DLTM12      :drift, l=2.810;
RETURN;
