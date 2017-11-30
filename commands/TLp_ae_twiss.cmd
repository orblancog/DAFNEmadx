! TLp twiss
! Tech. Note. I-16 pag.~2
! IPAC 2014, THPRI015, Dafne Transfer Line for KLOE-2 PHYSICS run figs.~2 and 4
 betxacc := 3.07;
 betyacc := 4.041;
 alfxacc := 1.017;
 alfyacc := 0.458;
 dxacc   := 0.2166557213;
 dyacc   := 0.05440481193;
 dpxacc  := 0;
 dpyacc  := 0;

! forward twiss
! the envelopes
envx := 3.0*sqrt(emitx_ae*table(twiss,betx) 
           + (table(twiss,dx)*delp_ae)*(table(twiss,dx)*delp_ae));
envy := 3.0*sqrt(emity_ae*table(twiss,bety) 
           + (table(twiss,dy)*delp_ae)*(table(twiss,dy)*delp_ae));
select, flag=twiss,clear;
select, flag=twiss, column=NAME, KEYWORD, S, L, BETX, BETY, ALFX, ALFY,
  MUX, MUY, DX, DPX, DY, DPY, ANGLE,K1L, K2L, K3L, K4L, envx, envy,k0l,ddx,ddy;
!name,s,betx,bety,dx,dy,envx,envy, alfx,alfy,mux,RE56,
!angle,k1l,l;
!coguess, tolerance=1e10;
twiss,deltap=0,sequence=p_ae,BETX=betxacc,BETY=betyacc,
  ALFX=alfxacc,ALFY=alfyacc,dx=dxacc,dy=dyacc,dpx=dpxacc,dpy=dpyacc,
  file="outputs/tlp_ae.tls",tolerance=1e-10;
!stop;
return;


!!! Some test with backwards propagation from Catia
! reverse twiss 
e_ae_rev: line = (-e_ae);
use, sequence= e_ae_rev;
select, flag=twiss,clear;
envx := 3.0*sqrt(emitx_ae*table(twiss,betx)+(table(twiss,dx)*delp_ae)*(table(twiss,dx)*delp_ae));
envy := 3.0*sqrt(emity_ae*table(twiss,bety)+(table(twiss,dy)*delp_ae)*(table(twiss,dy)*delp_ae));
!select, flag=twiss, column=name,s,betx,bety,dx,dy,envx,envy, alfx,alfy,mux,muy;
select, flag=twiss, column=NAME, KEYWORD, S, L, BETX, BETY, ALFX, ALFY,
MUX, MUY, DX, DPX, DY, DPY, ANGLE,K1L, K2L, K3L, K4L, envx, envy,k0l,ddx,ddy;
!twiss,chrom,sequence=e_ae_rev,BETX=betxseptum,BETY=betyseptum,ALFX=alfxseptum,ALFY=alfyseptum,
!                          dx = dxseptum, dy = dyseptum, file="tle_ae_rev.tls",save;
! optic function at MRe injection septum 2012
betxseptum =  8.691565917;
muxseptum  = -0.01308398467;
alfxseptum =  0;
betyseptum =  1.155394601;
muyseptum  = -0.0255984716;
alfyseptum =  0.;
dxseptum = -1.2;
dyseptum = 0.0;
! oblancog
betxseptum =  9.389757597;
muxseptum  = 0;
alfxseptum =  0.05538605968;
betyseptum =  1.237891428;
muyseptum  = 0;
alfyseptum = 0.07187174582;
dxseptum = -1.401444589;
dpxseptum = 0.01389481764;
dyseptum = -0.005524226884;
dpyseptum = 0.001681025845;
twiss,chrom,sequence=e_ae_rev,BETX=betxseptum,BETY=betyseptum,
	ALFX=alfxseptum,ALFY=alfyseptum,
	dx = dxseptum, dy = dyseptum,
	dpx= dpxseptum,dpy= dpyseptum,
	file="tle_ae_rev.tls",save;
!system, "ps2pdf madx.ps";
return;

