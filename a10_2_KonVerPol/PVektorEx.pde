class PVectorEx extends PVector {
  PVectorEx (float x, float y) {
    super(x, y);
  }
  PVectorEx () {
    super();
  }
  String toString() {
    return("x: " + x + " y: " + y);
  }
  String toPolar() {
    return("L: " + super.mag() + ","+" T: " + -atan2(y, x));
  }
  void paint (float _x, float _y, color _c) {
    stroke(_c);
    line(_x, _y, _x+x, _y+y);
    noFill();
    ellipse(_x+x, _y+y, 8, 8);
  }
  void paint (float _x, float _y, color _c, int _e) {
    stroke(_c);
    line(_x, _y, _x+x, _y+y);
    noFill();
    ellipse(_x+x, _y+y, _e, _e);
  }
}

