class Ball {

  float size;
  color c;
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;

  Ball(float _size, color _c, float _xPos, float _yPos, float _xSpeed, float _ySpeed) {
    size = _size;
    c = _c;
    xPos = _xPos;
    yPos = _yPos;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }

  void render() {
    ellipseMode(CENTER);
    fill(c);
    ellipse(xPos, yPos, size, size);
  }

  void update() {
    if (xPos > width-25 || xPos < 0) {
      xSpeed = xSpeed*(-1);
    }
    if (yPos > height-25 || yPos < 0) {
      ySpeed = 0;
    }

    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    ySpeed = ySpeed + 0.0982;
    render();
  }
}
