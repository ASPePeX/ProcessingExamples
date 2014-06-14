/*
Aufgabe: 10.1 Konstruktoren, Vererbung, Polymorphie
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 17.12.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

int baumCnt = 0;


int schneeCntS = 300;
cSchnee[] schnee = new cSchnee[schneeCntS];
int schneeCntL = 50;
cSchneeEx[] schneeEx = new cSchneeEx[schneeCntL];

int vogelCnt = 5;
cVoegel[] voegel = new cVoegel[vogelCnt];

int frameR = 30;
int frameCnt = 0;


void setup() {
  size(800, 600);
  smooth();
  frameRate(frameR);

  drawBackground();
  drawLandschaft();
  drawMond();
  drawSchneemann();
  drawVogelhaus();
  //Wald Links
  drawWald(20, 180, 180, 310, int(random(8, 16)));
  //Wald Rechts
  drawWald(580, 170, 780, 470, int(random(30, 45)));
  //Noch n Baum einzeln
  drawBaum(300, 350);
  baumCount();

  loadPixels();

  for (int i = 0; i < schnee.length; i++) {
    schnee[i] = new cSchnee();
  }
  for (int i = 0; i < schneeEx.length; i++) {
    schneeEx[i] = new cSchneeEx();
  }

  for (int i = 0; i < voegel.length-1; i++) {
    voegel[i]   = new cVoegel(#8B4513);
  }
  voegel[voegel.length-1] = new cVoegelEx(#FFFFFF);
}


void draw() {  
  updatePixels();

  for (int i = 0; i < voegel.length; i++) {
    voegel[i].auto();
  }

  for (int i = 0; i < schnee.length; i++) {  
    schnee[i].auto();
  }
  for (int i = 0; i < schneeEx.length; i++) {  
    schneeEx[i].auto();
  }

  frameCnt++;
}




