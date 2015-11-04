/*

 Comenzamos con un copy/paste y algunas modificaciones a
 
 http://learningprocessing.dreamhosters.com/examples/chapter-10/example-10-2/
 
 */

Ball ball1;
Ball ball2;

void setup() {
  size(400,400);
  smooth();
  
  // Initialize balls
  ball1 = new Ball(64);
  ball2 = new Ball(32);
}

void draw() {
  background(255);
  
  // Move and display balls
  ball1.move();
  ball2.move();
  ball1.display();
  ball2.display();
}