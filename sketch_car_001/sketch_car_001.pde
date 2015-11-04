Car myCar1;
Car myCar2;
Car myCar3;
Car myCar4;
Car myCar5;

void setup() {
  size(300, 300);
  noStroke();
  myCar1 = new Car(color(255, 0, 0), 0, height/6*2, 2); 
  myCar2 = new Car(color(0, 255, 0), 0, height/6*3, 1);
  myCar3 = new Car(color(0, 0, 255), 0, height/6*4, 3);
  myCar4 = new Car(color(0, 255, 255), 0, height/6*1, 4);
  myCar5 = new Car(color(255, 0, 255), 0, height/6*5, 1);
}


void draw() {
  background(255);
  myCar1.drive();
  myCar2.drive();
  myCar3.drive();
  myCar4.drive();
  myCar5.drive();
  myCar1.display();
  myCar2.display();
  myCar3.display();
  myCar4.display();
  myCar5.display();
}