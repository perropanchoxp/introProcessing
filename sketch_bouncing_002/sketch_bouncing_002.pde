/*

 Noto el parecido que puede tener esto con los sketch de car y ball
 
 */

Bouncing myBouncing1;

void setup() {
  fullScreen();
  noStroke();
  myBouncing1 = new Bouncing(0, 0, 5, -5);
}

void draw() {
  background(25);
  fill(255);
  myBouncing1.rebota();
  myBouncing1.display();
}

class Bouncing {

  float pos_x;
  float pos_y;
  float move_x;
  float move_y;


  Bouncing(float pos_x_Especifico, float pos_y_Especifico, float move_x_Especifico, float move_y_Especifico) {
    pos_x = pos_x_Especifico;
    pos_y = pos_y_Especifico ;
    move_x = move_x_Especifico;
    move_y = move_y_Especifico;
  }
  void display() {
    ellipse(pos_x, pos_y, 10, 10);
  }

  void rebota() {
    pos_x = pos_x + move_x;
    pos_y = pos_y + move_y;
    if (pos_x > width) {
      fill(255, 0, 0, 100);
      pos_x = width;
      move_x = -move_x;
    }
    if (pos_y > height) {
      fill(255, 255, 0, 100);      
      pos_y = height;
      move_y = -move_y;
    }
    if (pos_x < 0) {
      fill(0, 255, 255, 100);      
      pos_x = 0;
      move_x = -move_x;
    }
    if (pos_y < 0) {
      fill(0, 0, 255, 100);      
      pos_y = 0;
      move_y = -move_y;
    }
  }
}