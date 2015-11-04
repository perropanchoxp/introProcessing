/*

 Le hago algunas modificaciones
 
 > cambio circle por pos, porque se está refieriendo a la posición del círculo.
 > elimino el stroke (borde)
 > elimino los comentarios que se imprimen en consola
 > cambio los colores
 
 */

float pos_x = 300;
float pos_y = 20;
float move_x = 2;
float move_y = -2;

void setup() {
  fullScreen();
  noStroke();
}
void draw() {
  background(25);
  fill(255);
  ellipse(pos_x, pos_y, 10, 10);
  pos_x = pos_x + move_x;
  pos_y = pos_y + move_y;

  if (pos_x > width) {
    pos_x = width;
    move_x = -move_x;
  }
  if (pos_y > height) {
    pos_y = height;
    move_y = -move_y;
  }
  if (pos_x < 0) {
    pos_x = 0;
    move_x = -move_x;
  }
  if (pos_y < 0) {
    pos_y = 0;
    move_y = -move_y;
  }
}