class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car(color cualquierC, float cualquierXpos, float cualquierYpos, float cualquierXspeed) { 
    c = cualquierC;
    xpos = cualquierXpos;
    ypos = cualquierYpos;
    xspeed = cualquierXspeed;
  }

  void display() {
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
      ;
    }
  }
}