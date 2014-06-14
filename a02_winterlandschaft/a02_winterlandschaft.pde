/*
Aufgabe: 2 Winterlandschaft
Name: Scheurer, Alexander
Matrikel: 238205
Datum: 13.10.11
Hiermit versichere ich, dass ich diesen Code selbst geschrieben
habe. Er wurde nicht kopiert und auch nicht diktiert.
*/

size(800,600);
background(#000033);  

// Landschaft
smooth();
fill(#cccccc);
noStroke();
beginShape();
curveVertex(0,150);
curveVertex(0,150);
curveVertex(140,150);
curveVertex(280,300);
curveVertex(400,300);
curveVertex(600,150);
curveVertex(801,150);
curveVertex(900,150);
curveVertex(801,601);
curveVertex(0,601);
curveVertex(801,601);
endShape(CLOSE);

//Mond
smooth();
fill(#ffffff);
noStroke();
ellipse(700,75,100,100);

//Schneemann
fill(#eeeeee);
stroke(1);
smooth();
ellipse(450,450,150,150);
ellipse(450,350,130,130);
ellipse(450,270,110,110);
fill(#FF9900);
triangle(425,270,425,280,380,275);
fill(#000000);
ellipse(435,250,7,10);
ellipse(415,248,6,9);
ellipse(415,330,6,9);
ellipse(410,355,6,9);
ellipse(413,380,6,9);

//Bäume
noStroke();
pushMatrix();
translate(0,150);
fill(#774400);
rect(48,70,20,20);
fill(#006600);
triangle(30, 75, 58, 20, 86, 75);
translate(0,-30);
triangle(30, 75, 58, 20, 86, 75);
translate(0,-30);
triangle(30, 75, 58, 20, 86, 75);
popMatrix();
pushMatrix();
translate(45,160);
fill(#774400);
rect(48,70,20,20);
fill(#006600);
triangle(30, 75, 58, 20, 86, 75);
translate(0,-30);
triangle(30, 75, 58, 20, 86, 75);
translate(0,-30);
triangle(30, 75, 58, 20, 86, 75);
popMatrix();
pushMatrix();
translate(85,145);
fill(#774400);
rect(48,70,20,20);
fill(#006600);
triangle(30, 75, 58, 20, 86, 75);
translate(0,-30);
triangle(30, 75, 58, 20, 86, 75);
translate(0,-30);
triangle(30, 75, 58, 20, 86, 75);
popMatrix();

//Vogelhaus
fill(#774400);
stroke(0);
rect(145,400,10,90);
rect(180,380,15,5);
rect(120,340,60,60);
fill(#663300);
rect(110,330,80,40);
