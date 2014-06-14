class cSchnee {
  float x, y;

  cSchnee () {
    x = random(width);
    y = random(height);
  }

  void auto() {
    drop();
    show();
  }
  void drop() {
    y += random(1, 5);
    x += random(-3, 3);
    if (x > width)  x -= width;
    if (x < 0)      x += width;
    if (y > height) y -= height;
  }
  void show() {
    noStroke();
    fill(#ffffff);
    ellipse(x, y, 10, 10);
  }
}

