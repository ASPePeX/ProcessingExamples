/*
Aufgabe: 5b for/switch
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 08.11.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

size(721, 121);
colorMode(RGB, 5);
for (int r = 0; r < 6; r++) {
  for (int g = 0; g < 6; g++) {
    for (int b = 0; b < 6; b++) {
      println("R: " + r + " G: " + g + " B: " + b);
      fill(r, g, b);
      rect((b+r*6)*(width/36), g*(height/6), (width/36), (height/6));
    }
  }
}

