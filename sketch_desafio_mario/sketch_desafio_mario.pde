Robot[] bots;
Scrollbar barra;
int oldAmount = 0;
void setup() {
  fullScreen();
  barra = new Scrollbar(0, height-20, width, 10, 10, 10);
  println(barra.getPos());
  createRobots(barra.getPos());
}
void draw() {
  background(235);
  println(barra.getPos());
  if (oldAmount != barra.getPos()) {
    createRobots(barra.getPos());
    oldAmount = barra.getPos();
  }
  for (int i = 0; i < bots.length; i++) {
    bots[i].update(); 
    bots[i].display();
  }
  barra.update();
  barra.display();
}

void createRobots(int amount) {
  bots = new Robot[amount];
  PShape robotShape = loadShape("face.svg");
  for (int i = 0; i < bots.length; i++) {
    float x = random(-40, width-40); 
    float y = map(i, 0, bots.length, -100, height-200); 
    bots[i] = new Robot(robotShape, x, y);
  }
}