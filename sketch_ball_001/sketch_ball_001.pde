Ball ball1, ball2, ball3;

void setup() {
  size(300, 300);
  noStroke();  
  ball1 = new Ball(color(255,0,0), 10);
  ball2 = new Ball(color(0,255,0), 10);
  ball3 = new Ball(color(0,0,255), 10);
}

void draw() {
  background(255);
  ball1.move();
  ball2.move();
  ball3.move();
  ball1.display();
  ball2.display();
  ball3.display();
}