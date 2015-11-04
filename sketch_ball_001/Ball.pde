class Ball {
  color c; //color
  float r, x, y, xspeed, yspeed;

  // Constructor
  Ball(color cualquierC, float cualquierR) {
    c = cualquierC;
    r = cualquierR;
    x = random(width);
    y = random(height);
    xspeed = random(5,10);
    yspeed = random(-5,-10);
  }

  void move() {
    x += xspeed;
    y += yspeed;

    if (x > width || x < 0) {
      xspeed *= - 1;
    }

    if (y > height || y < 0) {
      yspeed *= - 1;
    }
  }

  void display() {
    fill(c);
    ellipse(x, y, r*2, r*2);
  }
}