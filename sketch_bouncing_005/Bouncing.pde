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
      pos_x = width;
      move_x = -move_x;
      fill(255,255,0,130);
    }
    if (pos_y > height) {
      pos_y = height;
      move_y = -move_y;
      fill(0,255,255,130);
  }
    if (pos_x < 0) {
      pos_x = 0;
      move_x = -move_x;
      fill(255,0,255,130);
  }
    if (pos_y < 0) {
      pos_y = 0;
      move_y = -move_y;
      fill(0,0,255,130);
  }
  }
}