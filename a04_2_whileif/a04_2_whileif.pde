/*
Aufgabe: 4.2 While/If
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 24.10.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */
 
size(800, 734);
int spacer = 30;

int direction = 0; //0 = rechts / 1 = runter / 2 = links / 3 = rauf

int xPos = 0;
int yPos = 0;
int xLength = width;
int yLength = height;
while (xLength > 0 && yLength > 0) {
  switch(direction) {
  case 0:
    line(xPos, yPos, xPos+=xLength, yPos);
    direction++;
    xLength -= spacer;
    break;
  case 1:
    line(xPos, yPos, xPos, yPos+=yLength);
    direction++;
    yLength -= spacer;
    break;
  case 2:
    line(xPos, yPos, xPos-=xLength, yPos);
    direction++;
    xLength -= spacer;
    break;
  case 3:
    line(xPos, yPos, xPos, yPos-=yLength);
    direction = 0;
    yLength -= spacer;
    break;
  }
}

