/*
Aufgabe: 5a for/switch (2d)
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 11.11.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

int drawCount = 30;
int draws = 0;

void setup() {
  size(800, 600);
  background(#000000);
  smooth();
  frameRate(5);
  PFont font;
  font = loadFont("DroidLogo-16.vlw"); 
  textFont(font);
}

void draw() {
  draw1();
}

void draw1() {
  if (drawCount > draws) {
    int wid = int(random(width/30, width/6));
    int hei = int(random(height/30, height/6));
    float rot = random(0, 2*PI);
    pushMatrix();
    translate(random(wid, width-wid), random(hei, height-hei));
    rotate(rot);
    fill(0, random(0, 256), 0, random(0, 256));
    int swi = int(random(0, 2));
    switch(swi) {
    case 0:
      rect(-wid/2, -hei/2, wid, hei);
      break;
    case 1:
      ellipse(0, 0, wid, hei);
      break;
    }
    int iter = int(random(3, 20));
    for (int i=0; i<iter;i++)
    {
      int strwei = int(random(1, 8));
      noFill();
      strokeWeight(strwei);
      stroke(0, random(0, 256), 0, random(0, 256));
      wid = wid+strwei;
      hei = hei+strwei;
      switch(swi) {
      case 0:
        rect(-wid/2, -hei/2, wid, hei);
        break;
      case 1:
        ellipse(0, 0, wid, hei);
        break;
      }
    }
    popMatrix();
    draws++;
  }
  else {

    fill(0, random(0, 256), 0);
    text("CLICK", 15, height-15);
  }
}

void mouseClicked() {
  background(#000000);
  draws = 0;
}

