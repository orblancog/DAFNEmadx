// oblancog. 2016.09.xx Drawing beam profiles
// this code was used to generate the initial coordinates of the particles
// now it plots beam profiles

// For the particle generation
#include "TRandom2.h"//period=10**26, fast, 32 bits for the state
// To check if the courant-snyder invariant 
#include "TMath.h"
// To read/write into a file
#include <iostream>
#include "TFile.h"
#include <fstream>
#include <stdio.h>
#include <string>

using namespace std;

int DrawProfileZoom (const char * k, const char * invaxis = NULL) {//k is the flag name 
  cout << "  Using flag : "<< k << endl;
  TString * myflname = new TString(k);
  int xsgn = 1;
  int ysgn = 1;
  if (invaxis != NULL){
    cout << "    flag inverts profile in : "<< invaxis << endl;
    if ( strcmp(invaxis,"x") == 0 ){ xsgn = -1;}
    if ( strcmp(invaxis,"y") == 0 ){ ysgn = -1;}
    if ( strcmp(invaxis,"xy")== 0 ){ xsgn = -1; ysgn = -1;}
  }
  //Beam geometrical emittances
  double_t ex = 1;
  double_t ey = 1;
  double_t et = 1;
  // Phase space at input
  double_t gammax = 0.5;
  double_t betax = 2;
  double_t alfax = -0.5;
  double_t gammay = 1;
  double_t betay = 1;
  double_t alfay = 0;
  double_t Energyspread = 1;
  double_t etax=1;//off-momentum function
  double_t etapx=1;//off-momentum function
  double_t etay=0;//off-momentum function
  double_t etapy=0;//off-momentum function
  // Linear beam sizes from emittances and twiss
  double_t sigmax0 = 0;
  double_t sigmapx0 = 0;
  double_t sigmay0 = 0;
  double_t sigmapy0 = 0;
  double_t sigmas0 = 0;
  double_t sigmad0 = 0;
  double_t offsetx0 = 0;
  double_t offsety0 = 0;

  ofstream mydebug;
  ofstream mymadxtrac;
  ifstream beta0in;
  string beta0string;
  ifstream beam0in;
  string beam0string;
  ifstream track0in;
  string track0string;

  int nlines;
  char beta0line[80];
  char beam0line[80];
  char track0line[80];

  char madx00[20];
  char madx01[20];
  char madx02[20];
  char madx03[20];
  char madx04[20];

  char track00[20];
  char track01[20];
  char track02[20];
  char track03[20];
  char track04[20];
  char track05[20];
  char track06[20];
  char track07[20];
  char track08[20];
  char track09[20];
  char track10[20];

  // Read twiss info
  TString * betafl = new TString("beta");
  betafl->Append(k);
  betafl->Append(".txt");
  beta0in.open(betafl->Data());
  if (!beta0in) {
    // if we cannot open the file, 
    // print an error message and return immediatly
    cout << "Error: cannot open "<<betafl->Data()<<" !"<<endl;
    //    printf("Error: cannot open betaXXXX.txt!\n");
    //return 1;
  }else{
  cout << "  ... reading file "<<betafl->Data()<<" (twiss params at input)"<<endl;
  beta0in >>  madx00 >> madx01 >> madx02 >> madx03;
  while(!beta0in.eof()){
    beta0in >> madx00 >> madx01 >> madx02 >> madx03 >> madx04;
    //    cout << madx01<<endl;
    if (!strcmp(madx01,"betx")) {cout<<"    "<<madx01<<" "<<madx04<<endl;betax=atof(madx04);}
    if (!strcmp(madx01,"alfx")) {cout<<"    "<<madx01<<" "<<madx04<<endl;alfax=atof(madx04);}
    if (!strcmp(madx01,"bety")) {cout<<"    "<<madx01<<" "<<madx04<<endl;betay=atof(madx04);}
    if (!strcmp(madx01,"alfy")) {cout<<"    "<<madx01<<" "<<madx04<<endl;alfay=atof(madx04);}
    if (!strcmp(madx01,"dx")) {cout<<"    "<<madx01<<" "<<madx04<<endl;etax=atof(madx04);}
    //    if (!strcmp(madx01,"dpx")) {cout<<"    "<<madx01<<" "<<madx04<<endl;etapx=atof(madx04);}
    if (!strcmp(madx01,"dy")) {cout<<"    "<<madx01<<" "<<madx04<<endl;etay=atof(madx04);}
    //if (!strcmp(madx01,"dpy")) {cout<<"    "<<madx01<<" "<<madx04<<endl;etapy=atof(madx04);}
  }
  cout << "    ... all others ignored.";
  cout << "  "<<betafl->Data()<<" read."<<endl;
  beam0in.close();
  cout << "  Calculating gamma[xy]..."<<endl;
  gammax = (1 + alfax*alfax )/betax;
  gammay = (1 + alfay*alfay )/betay;
  cout <<"    optics gammax "<<gammax<<endl;
  cout <<"    optics gammay "<<gammay<<endl;
  }
  // Reading beam info
  beam0in.open("beam0.txt");
  if (!beam0in) {
    // if we cannot open the file, 
    // print an error message and return immediatly
    printf("Error: cannot open beam0.txt!\n");
    //return 1;
  }else{
  cout << "  ... reading file beam0.txt (beam params)"<<endl;
  beam0in >>  madx00 >> madx01 >> madx02 >> madx03;
  while(!beam0in.eof()){
    beam0in >> madx01;// >> madx02 >> madx03 >> madx04;
    //    cout << madx01<<endl;
    //    cout << madx01<<endl;
    if (!strcmp(madx01,"ex")){
      beam0in >> madx02;
      beam0in >> madx03;
      beam0in >> madx04;
      cout<<"    "<<madx01<<" "<<madx04<<endl;
      ex=atof(madx04);}
    if (!strcmp(madx01,"ey")){
      beam0in >> madx02;
      beam0in >> madx03;
      beam0in >> madx04;
      cout<<"    "<<madx01<<" "<<madx04<<endl;
      ey=atof(madx04);}
    if (!strcmp(madx01,"sige")){
      beam0in >> madx02;
      beam0in >> madx03;
      beam0in >> madx04;
      cout<<"    "<<madx01<<" "<<madx04<<endl;
      Energyspread=atof(madx04);}
  }
  cout << "    ... all others ignored.";
  cout << "    beam0.txt read."<<endl;
  beam0in.close();
  }
  // Calculate sigma0
  sigmax0  = TMath::Sqrt(ex*betax + etax*etax*Energyspread*Energyspread);
  sigmapx0 = TMath::Sqrt(ex/betax);
  sigmay0  = TMath::Sqrt(ey*betay + etay*etay*Energyspread*Energyspread);
  sigmapy0 = TMath::Sqrt(ey/betay);
  sigmas0  = TMath::Sqrt(et*0);
  offsetx0 = etax*Energyspread;
  offsety0 = etay*Energyspread;
  //  sigmad0  = TMath::Sqrt(et*0);
  cout << "  Calculating gamma[xy]..."<<endl;
  gammax = (1 + alfax*alfax )/betax;
  gammay = (1 + alfay*alfay )/betay;
  cout <<"    gammax "<<gammax<<endl;
  cout <<"    gammay "<<gammay<<endl;

  float scalehv=1e3;//mm
  Double_t w =  600;
  Double_t h =  600;
  TCanvas * c1 = new TCanvas(betafl->Data(),betafl->Data(), w, h);
  c1->SetGrid();
  //  c1->Divide(2,1,0.01,0.01);
  c1->SetWindowSize(w + (w - c1->GetWw()), h + (h - c1->GetWh()));
  //  TCanvas *c1 = new TCanvas("c1");
  //  c1->cd(1);

  c1->Range(-40e-3*scalehv,-40e-3*scalehv,40e-3*scalehv,40e-3*scalehv);
  //  c1->SetTicks(3,3);
  c1->SetGrid();
  //  c1->SetFillColor(42);
  //  c1->SetGrid(5,5);
  //    c1->SetGridx(3);
  // c1->SetGridy(3);
  c1->SetFillStyle(4000);
  // c1->Draw();
  // c1->Update();
  // int x0[1]={0};
  // int y0[1]={0};
  // TGraph *gr = new TGraph(1,x0,y0);
  // gr->Draw("AC*");
  // gr->SetTitle(betafl->Data());//input parameter
  // gr->GetXaxis()->SetLimits(-40e-3*scalehv,40e-3*scalehv);
  // gr->SetMinimum(-40e-3*scalehv);
  // gr->SetMaximum(40e-3*scalehv);
  // gr->GetXaxis()->CenterTitle();
  // gr->GetYaxis()->CenterTitle();
  // gr->GetXaxis()->SetNdivisions(10);
  // gr->GetYaxis()->SetNdivisions(10);
  // //  gr->GetYaxis()->SetLabelOffset(10e-3*scalehv); 
  // //  gr->GetXaxis()->SetLabelOffset(10e-3*scalehv);
  // c1->Update();


  TEllipse *bpipe=new TEllipse(0,0,44e-3*scalehv,44e-3*scalehv);
   bpipe->SetFillColorAlpha(kWhite,0.0);
   bpipe->SetFillStyle(4000);
   bpipe->SetLineWidth(2);
  // TEllipse *el1 = new TEllipse(offsetx0*scalehv,offsety0*scalehv,sigmax0*scalehv,sigmay0*scalehv);
  // el1->SetFillColor(21);
  TEllipse *el2 = new TEllipse(offsetx0*scalehv,offsety0*scalehv,3*sigmax0*scalehv,3*sigmay0*scalehv);
  el2->Draw();
  el2->SetFillColor(31);
  TText* psigmax = new TText(-15,-20,Form("sigmax=%.1f",sigmax0*scalehv));
  psigmax->Draw();
  // //  psigmax->SetTextSize(4);
  TText* psigmay = new TText(-15,-25,Form("sigmay=%.1f",sigmay0*scalehv));
   psigmay->Draw();
  // TText* poffsetx = new TText(-15,-30,Form("offsetx=%.1f",offsetx0*scalehv));
  // poffsetx->Draw();
  // TText* poffsety = new TText(-15,-35,Form("offsety=%.1f",offsety0*scalehv));
  // poffsety->Draw();

  cout << "  Beam sizes from twiss are : sigmax= " << sigmax0*scalehv << " [mm], sigmay= " << ' ' << sigmay0*scalehv<<" [mm]"<<endl;
  // //  gr->GetXaxis()->SetNdivisions(10);
  // //  gr->GetYaxis()->SetNdivisions(10);
  // gr->GetXaxis()->SetTitle("x [mm]");
  // gr->GetYaxis()->SetTitle("y [mm]");
  // el1->Draw();
  // c1->RedrawAxis();
  //  bpipe->Draw();
  //  el2->Draw();
  // //  gPad->WaitPrimitive();
  // //  c1->SaveAs(myflname->Append(".pdf"));

  // From tracking
  // Read trackinfo
  //  TCanvas * c2 = new TCanvas("c2", "c2", w, h);

  TString * trackfl = new TString("track");
  trackfl->Append(k);
  TH2 * trackh = new TH2F(trackfl->Data(),trackfl->Data(),90,-18,18,90,-18,18);
  //  betafl->Append(".txt");
  track0in.open(trackfl->Data());
  //  track0in.open("trackSTART");
  if (!track0in) {
    // if we cannot open the file, 
    // print an error message and return immediatly
    cout<<"Error: cannot open file "<<trackfl->Data()<<"\n";
    return 1;
  }
  cout << "  ... reading file "<<trackfl->Data()<<" (tracking results)"<<endl;
  //  track0in >>  madx00 >> madx01 >> madx02 >> madx03;

  while(!track0in.eof()){
    track0in >> track01 >> track02 >> track03 >> track04 >> track05 >> track06 >> track07 >> track08 >> track09 >> track10;
    //    cout << track03<<track05<< endl;
    trackh->Fill(xsgn*atof(track03)*scalehv,ysgn*atof(track05)*scalehv);

  }
  //  cout << "    ... all others ignored.";
  cout << "  "<<trackfl->Data()<<" read."<<endl;
  track0in.close();
  //  c1->cd(2);
  //  trackh->SetNdivisions(306,"XY");
  //xaxis = trackh->GetXAxis();
  //yaxis = trackh->GetYAxis();
  //  trackh->GetXAxis()->SetMaxDigits(8);
  
  TPad * center_pad = new TPad("center_pad", "center_pad",0.0,0.0,0.6,0.6);
  center_pad->Draw();

  TPad * right_pad = new TPad("right_pad", "right_pad",0.55,0.0,1.0,0.6);
  right_pad->Draw();

  TPad * top_pad = new TPad("top_pad", "top_pad",0.0,0.55,0.6,1.0);
  top_pad->Draw();

  TPad * diag_pad = new TPad("diag_pad", "diag_pad",0.55,0.55,1.0,1.0);
  diag_pad->Draw();


  TH1D * projh2X = trackh->ProjectionX();
  TAxis * xaxis  = projh2X->GetXaxis();
  TH1D * projh2Y = trackh->ProjectionY();
  TAxis * yaxis  = projh2Y->GetXaxis();

  center_pad->cd();
  center_pad->SetGrid();

  if ( strcmp(k,"FL2A1001") == 0 || 
       strcmp(k,"FL1PL101") == 0 || 
       strcmp(k,"FL2A2001") == 0 || 
       strcmp(k,"FL2EL101") == 0 )
    {
      yaxis->SetNdivisions(118,kFALSE);
      xaxis->SetNdivisions(118,kFALSE);
      trackh->SetNdivisions(-118,"xy");
  }else{
      yaxis->SetNdivisions(312,kFALSE);
      xaxis->SetNdivisions(312,kFALSE);
      trackh->SetNdivisions(-312,"xy");
  }

  trackh->Draw("colz");

  
  trackh->SetTitle(trackfl->Data());
  if (xsgn == -1)  trackh->GetXaxis()->SetTitle("x [mm] (mirror)");
  else trackh->GetXaxis()->SetTitle("x [mm]");
  if (ysgn == -1)  trackh->GetYaxis()->SetTitle("y [mm] (mirror)");
  else trackh->GetYaxis()->SetTitle("y [mm]");
  trackh->GetXaxis()->CenterTitle();
  trackh->GetYaxis()->CenterTitle();
  cout << "  Correlation : "<< trackh->GetCorrelationFactor()<< endl;
  
  top_pad->cd();
  //  top_pad->SetGrid();
  projh2X->SetFillColor(kBlue+1);
  projh2X->Draw("bar");

  right_pad->cd();
  //  right_pad->SetGrid();
  projh2Y->SetFillColor(kBlue-2);
  projh2Y->Draw("hbar");

  c1->cd();

  //bpipe->Draw();
  //  el2->Draw();
  cout << "Setting grid..."<<c1->GetGridx()<<endl;
  c1->RedrawAxis();

  
  //  c1->SaveAs(myflname->Append("prof.pdf"));

  return 0;
}

