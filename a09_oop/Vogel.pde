class cVoegel {
  float x, y;
  color c;
  void auto() {
    movex();
    show();
  }
  void movex() {
    x += random(-3, 3);
    y += random(-3, 3);
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

