class cVoegel {
  float x, y;
  color c;
  cVoegel (color _c) {
    x = random(width);
    y = random(height);
    c = _c;
  }
  void auto() {
    movex();
    show();
  }
  void movex() {
    x += random(-3, 3);
    y += random(-3, 3);
    if (x > width)  x -= width;
    if (x < 0)      x += width;
    if (y > height) y -= height;
    if (y < 0)      y += height;
  }
  void show() {
    fill(c);
    switch((frameCnt/(frameR/4))%4) {
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
  }
}

