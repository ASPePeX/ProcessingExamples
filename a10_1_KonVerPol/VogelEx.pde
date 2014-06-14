class cVoegelEx extends cVoegel {
  cVoegelEx(color c) {
    super(c);
  }  
  void movex() {
    //Schneller unterwegs
    x += random(-6, 6);
    y += random(-6, 6);
    if (x > width)  x -= width;
    if (x < 0)      x += width;
    if (y > height) y -= height;
    if (y < 0)      y += height;
  }
  void show() {
    fill(c);
    //Größer 
    pushMatrix();
    scale(1.5);
    //Flügelschlag schneller
    switch((frameCnt/(frameR/6))%4) {
    case 0:
      text("\\(^v^)/", x, y);
      break;
    case 1:
      text("-(^v^)-", x, y);
      break;
    case 2:
      text("/(^v^)\\", x, y);
      break;
    case 3:
      text("-(^v^)-", x, y);
      break;
    }
    popMatrix();
  }
}

