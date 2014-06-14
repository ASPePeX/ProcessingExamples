/*
Aufgabe: 9 Klassen und Objekte
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 10.12.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

int baumCnt = 0;

int schneeCnt = 400;
cSchnee[] schnee = new cSchnee[schneeCnt];

int vogelCnt = 5;
cVoegel[] voegel = new cVoegel[vogelCnt];
cVoegel mausvogel = new cVoegel();

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
    schnee[i].x = random(width);
    schnee[i].y = random(height);
  }

  for (int i = 0; i < voegel.length; i++) {
    voegel[i]   = new cVoegel();
    voegel[i].x = random(width);
    voegel[i].y = random(height);
    voegel[i].c = #8B4513;
  }
}


void draw() {  
  updatePixels();

  for (int i = 0; i < voegel.length; i++) {
    voegel[i].auto();
  }
  mausvogel.x = mouseX;
  mausvogel.y = mouseY;
  mausvogel.c = #FFFFFF;
  mausvogel.show();
  
  for (int i = 0; i < schnee.length; i++) {  
    schnee[i].auto();
  }

  frameCnt++;
}





