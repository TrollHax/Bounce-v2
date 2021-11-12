ArrayList<Ball> balls;

color cBG = 127;
String state;

void setup() {
  size(900, 900);
  balls = new ArrayList<Ball>();

  for (int i = 0; i <50; i++) {
    balls.add(new Ball(50, color(random(0, 255), random(0, 255), random(0, 255)), random(50, width-25), random(50, height+25), random(-10, 10), 9.82));
  }

  state = "BOUNCE";
}

void draw() {

  background(cBG);

  switch(state) {

  case "BOUNCE":
    for (Ball ball : balls) {
      ball.update();
    }
    break;
  }
}
