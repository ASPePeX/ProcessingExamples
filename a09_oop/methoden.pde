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

