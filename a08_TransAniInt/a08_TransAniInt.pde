
/*
Aufgabe: 8 Transformation, Animation, Interaktion
 Name: Scheurer, Alexander
 Matrikel: 238205
 Datum: 03.12.11
 Hiermit versichere ich, dass ich diesen Code selbst geschrieben
 habe. Er wurde nicht kopiert und auch nicht diktiert.
 */

int noOfCircles = 10;
int noOfRects = 5;
int minCircleSize = 30;
int maxCircleSize = 60;
int rectHealth = 500;


int[][] Circles = new int[noOfCircles][5];
int[][] Rects = new int [noOfRects][11];

void setup() {
  size(800, 600);
  smooth();

  for (int i = 0; i < Circles.length; i++) {
    Circles[i][0] = int(random(maxCircleSize+1, width-maxCircleSize-1));
    Circles[i][1] = int(random(maxCircleSize+1, height-maxCircleSize-1));
    Circles[i][2] = int(random(minCircleSize, maxCircleSize));
    Circles[i][3] = int(random(-5, 5));
    Circles[i][4] = int(random(-5, 5));
  }
}

void draw() {
  background(1);
  for (int i = 0; i < Circles.length; i++) {
    drawCircle(Circles[i][0], Circles[i][1], Circles[i][2]);
    Circles[i][0] += Circles[i][3];
    Circles[i][1] += Circles[i][4];
  }
  for (int i = 0; i < Rects.length; i++) {
    if (Rects[i][9] == 1) {
      drawRect(Rects[i][0], Rects[i][1], Rects[i][2], Rects[i][3], Rects[i][4]);
    }
  }
  collisionCheck();
}

void drawCircle(int xPos, int yPos, int Rad) {
  colorMode(RGB,255);
  fill(255,0,0);
  ellipse(xPos, yPos, Rad, Rad);
}

void drawRect(int xPos1, int yPos1, int xPos2, int yPos2, int currHealth) {
  int xPos3 = xPos2 - xPos1;
  int yPos3 = yPos2 - yPos1;
  colorMode(RGB,rectHealth);
  fill(0, currHealth, 0);
  rect(xPos1, yPos1, xPos3, yPos3);
  colorMode(RGB,255);
  fill(255);
  text(currHealth,xPos1, yPos2);
}

void collisionCheck() {
  for (int i = 0; i < Circles.length; i++) {
    if (Circles[i][0] <= 0 + Circles[i][2]/2)      Circles[i][3] = Circles[i][3]-2*Circles[i][3];
    if (Circles[i][0] >= width - Circles[i][2]/2)  Circles[i][3] = Circles[i][3]-2*Circles[i][3];
    if (Circles[i][1] <= 0 + Circles[i][2]/2)      Circles[i][4] = Circles[i][4]-2*Circles[i][4];
    if (Circles[i][1] >= height - Circles[i][2]/2) Circles[i][4] = Circles[i][4]-2*Circles[i][4];

    for (int j = 0; j < Rects.length; j++) {
      if (Rects[j][9] == 1) {
        if ((Circles[i][0] > Rects[j][0] && Circles[i][0] < Rects[j][2] && Circles[i][1] > Rects[j][1] && Circles[i][1] < Rects[j][3])||(Circles[i][0] > Rects[j][2] && Circles[i][0] < Rects[j][0] && Circles[i][1] > Rects[j][1] && Circles[i][1] < Rects[j][3])||(Circles[i][0] > Rects[j][0] && Circles[i][0] < Rects[j][2] && Circles[i][1] > Rects[j][3] && Circles[i][1] < Rects[j][1])||(Circles[i][0] > Rects[j][2] && Circles[i][0] < Rects[j][0] && Circles[i][1] > Rects[j][3] && Circles[i][1] < Rects[j][1])) {
          // Noch tun die Kollisionsbedingungen für die Rects nicht sauber das nur die entsprechende Achse gedreht wird ...
          Circles[i][4] = Circles[i][4]-2*Circles[i][4];
          Circles[i][3] = Circles[i][3]-2*Circles[i][3];
          Rects[j][4] = Rects[j][4] - Circles[i][2];
          if (Rects[j][4] <= 0) Rects[j][9] = 0;
        }
      }
    }
    /*
    for (int j = 0; j < Circles.length; j++) {
     if (i == j) continue;
     
     }*/
  }
}

void mousePressed() {
  for (int i = 0; i < Rects.length; i++) {
    if (Rects[i][9] == 0) {
      Rects[i][0] = mouseX;
      Rects[i][1] = mouseY;
      Rects[i][2] = mouseX;
      Rects[i][3] = mouseY;
      Rects[i][4] = rectHealth;
      Rects[i][5] = 0;
      Rects[i][6] = 0;
      Rects[i][7] = 0;
      Rects[i][8] = 0;
      Rects[i][9] = 1;
      Rects[i][10] = 1;
      break;
    }
  }
}

void mouseDragged() {
  for (int i = 0; i < Rects.length; i++) {
    if (Rects[i][10] == 1) {
      Rects[i][2] = mouseX;
      Rects[i][3] = mouseY;
      break;
    }
  }
}

void mouseReleased() {
  for (int i = 0; i < Rects.length; i++) {
    Rects[i][10] = 0;
  }
}

