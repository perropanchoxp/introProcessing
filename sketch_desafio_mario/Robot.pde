class Robot {
  float xpos;
  float ypos;
  float angle;
  PShape botShape; 
  float yoffset=0.0;

  Robot (PShape shape, float tempX, float tempY) {
    botShape = shape;
    xpos = tempX;
    ypos = tempY;
    angle = random(0, TWO_PI);
  }

  void update() {
    angle+=0.05;
    yoffset = sin(angle) * 20;
  }

  void display() {
    shape(botShape, xpos, ypos + yoffset);
  }
}