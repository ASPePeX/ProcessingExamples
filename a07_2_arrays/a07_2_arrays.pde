/*
Aufgabe: 7.2 Arrays
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 26.11.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

int baumCnt = 0;

int schneeCnt = 400;
int[][] schneePos = new int[schneeCnt][2];
int vogelCnt = 5;
int[][] vogelPos = new int[vogelCnt][2];

int frameR = 30;
int frameCnt = 0;
int vogelDrawInst = 4;

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

  //Schnee und Vogle Array Prefill
  for (int i = 0; i < schneeCnt; i++) {
    schneePos[i][0] = int(random(width));
    schneePos[i][1] = int(random(height));
  }
  for (int i = 0; i < vogelCnt; i++) {
    vogelPos[i][0] = int(random(width));
    vogelPos[i][1] = int(random(height));
  }

}


void draw() {  
  updatePixels();

  drawSchwarm();
  drawVogel(mouseX, mouseY, #FFFFFF);
  drawSchnee();

  frameCnt++;
}




void drawWald(int xStartWald, int yStartWald, int xEndWald, int yEndWald, int drawCnt) {
  //Generierung y-Baumkoordinaten
  int[] xBaumx = new int[drawCnt];
  int[] yBaumx = new int[drawCnt];
  for (int i = 0; i < drawCnt; i++) {
    xBaumx[i] = int(random(xStartWald, xEndWald));
    yBaumx[i] = int(random(yStartWald, yEndWald));
  }
  //Sortierung der y-Koordinaten das beim Zeichnen keine überlappung entsteht
  yBaumx = sort(yBaumx);

  for (int i = 0; i < drawCnt; i++) {
    drawBaum(xBaumx[i], yBaumx[i]);
  }
}

void drawBaum(int xBaum, int yBaum) {
  noStroke();
  fill(#774400);
  rect(xBaum, yBaum -20, 20, 20);
  fill(int(random(0, 40)), int(random(120, 190)), int(random(0, 40)));
  triangle(xBaum -20, yBaum -20, xBaum +40, yBaum -20, xBaum +10, yBaum -50);
  triangle(xBaum -20, yBaum -40, xBaum +40, yBaum -40, xBaum +10, yBaum -70);
  triangle(xBaum -20, yBaum -60, xBaum +40, yBaum -60, xBaum +10, yBaum -90);
  baumCnt++;
}

void drawSchwarm() {
  for (int i = 0; i < vogelCnt; i++) {

    drawVogel(vogelPos[i][0], vogelPos[i][1], #8B4513);
    vogelPos[i][0] += int(random(-3, 3));
    vogelPos[i][1] += int(random(-3, 3));
  }
}

void drawVogel(int xVogel, int yVogel, color cVogel) {
  fill(cVogel);
  switch((frameCnt/(frameR/4))%vogelDrawInst) {
  case 0:
    text("\\(^v^)/", xVogel, yVogel);
    break;
  case 1:
    text("-(^v^)-", xVogel, yVogel);
    break;
  case 2:
    text("/(^v^)\\", xVogel, yVogel);
    break;
  case 3:
    text("-(^v^)-", xVogel, yVogel);
    break;
  }

  //  text("\\(^v^)/", xVogel, yVogel);
}

void drawSchnee() {
  for (int i = 0; i < schneeCnt; i++) {
    fill(#ffffff);
    ellipse(schneePos[i][0], schneePos[i][1], 10, 10);

    schneePos[i][0] += int(random(-3, 3));
    schneePos[i][1] += int(random(1, 5));

    if (schneePos[i][0] > width)  schneePos[i][0] -= width;
    if (schneePos[i][0] < 0)      schneePos[i][0] += width;
    if (schneePos[i][1] > height) schneePos[i][1] -= height;
  }
}

void drawBackground() {
  int bgYPos = 0;
  colorMode(RGB, height);
  while (bgYPos < height)
  {
    stroke(bgYPos);
    line(0, bgYPos, width-1, bgYPos);
    bgYPos++;
  }
  colorMode(RGB, 255);
}

void drawLandschaft() {
  fill(#cccccc);
  noStroke();
  beginShape();
  curveVertex(0, 150);
  curveVertex(0, 150);
  curveVertex(140, 150);
  curveVertex(280, 300);
  curveVertex(400, 300);
  curveVertex(600, 150);
  curveVertex(801, 150);
  curveVertex(900, 150);
  curveVertex(801, 601);
  curveVertex(0, 601);
  curveVertex(801, 601);
  endShape(CLOSE);
}

void drawMond() {  
  smooth();
  fill(#ffffff);
  noStroke();
  ellipse(700, 75, 100, 100);
}

void drawSchneemann() {  
  fill(#eeeeee);
  stroke(1);
  smooth();
  ellipse(450, 450, 150, 150);
  ellipse(450, 350, 130, 130);
  ellipse(450, 270, 110, 110);
  fill(#FF9900);
  triangle(425, 270, 425, 280, 380, 275);
  fill(#000000);
  ellipse(435, 250, 7, 10);
  ellipse(415, 248, 6, 9);
  ellipse(415, 330, 6, 9);
  ellipse(410, 355, 6, 9);
  ellipse(413, 380, 6, 9);
}

void drawVogelhaus() {  
  fill(#774400);
  stroke(0);
  rect(145, 400, 10, 90);
  rect(180, 380, 15, 5);
  rect(120, 340, 60, 60);
  fill(#663300);
  rect(110, 330, 80, 40);
}

void baumCount() {  
  fill(int(random(0, 40)), int(random(120, 190)), int(random(0, 40)));
  PFont font;
  font = loadFont("DroidLogo-24.vlw"); 
  textFont(font); 
  text("Bäume: " + baumCnt, 15, 30); 
  println("Bäume: " + baumCnt);
  baumCnt = 0;
}

