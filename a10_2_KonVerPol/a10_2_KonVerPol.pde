/*
Aufgabe: 10.2 Konstruktoren, Vererbung, Polymorphie
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 17.12.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

PVectorEx v1 = new PVectorEx(-200, 100);
PVectorEx v2 = new PVectorEx(200, 100);
PVectorEx v3 = new PVectorEx();

PVectorEx v1n = new PVectorEx();
PVectorEx v2n = new PVectorEx();
PVectorEx v3n = new PVectorEx();


void setup() {
  size(800, 600);
  smooth();

  background(#ffffff);

  pushMatrix();
  translate(width/2, height/2);
  stroke(#cccccc);
  line(0, height, 0, -height);
  line(width, 0, -width, 0);
  noFill();
  if (width >= height) {
    ellipse(0, 0, height-100, height-100);
  }
  else {    
    ellipse(0, 0, width-100, width-100);
  }
  popMatrix();
  loadPixels();
}

void draw() {

  pushMatrix();
  translate(width/2, height/2);

  updatePixels();


  v1.paint(v2.x, v2.y, #cccccc);
  v2.paint(v1.x, v1.y, #cccccc);

  fill(#ff0000);
  v1.paint(0, 0, #ff0000);
  text(v1.toString(), v1.x+5, v1.y);

  fill(#00ff00);
  v2.paint(0, 0, #00ff00);
  text(v2.toString(), v2.x+5, v2.y);

  fill(#0000ff);
  v3.set(v1);
  v3.add(v2);
  v3.paint(0, 0, #0000ff);
  text(v3.toString(), v3.x+5, v3.y);

  popMatrix();

  //Normalisirte Miniaturansicht

  pushMatrix();
  translate(40, 40);

  fill(#ff0000);
  text(v1.toPolar(), 40, -10);
  fill(#00ff00);
  text(v2.toPolar(), 40, 5);
  fill(#0000ff);
  text(v3.toPolar(), 40, 20);

  fill(#cccccc);
  stroke(#666666);
  ellipse(0, 0, 40, 40);

  v1n.set(v1);
  v1n.normalize();
  v1n.mult(20);
  v1n.paint(0, 0, #ff0000, 4);

  v2n.set(v2);
  v2n.normalize();
  v2n.mult(20);
  v2n.paint(0, 0, #00ff00, 4);

  v3n.set(v3);
  v3n.normalize();
  v3n.mult(20);
  v3n.paint(0, 0, #0000ff, 4);

  popMatrix();
}



void mouseDragged() {
  vektorMove();
}
void mousePressed() {
  vektorMove();
}
void mouseReleased() {
  vektorMove();
}

void vektorMove() {  
  if (mouseButton==LEFT) {
    v1.x=mouseX-width/2;
    v1.y=mouseY-height/2;
  } 
  if (mouseButton==RIGHT) {
    v2.x=mouseX-width/2;
    v2.y=mouseY-height/2;
  }
}

