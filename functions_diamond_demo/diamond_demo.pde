void setup() {
  size(600, 600);
  rectMode(CENTER); // makes it so that the parameters in square() / rect() functions 
  // indicate the center x,y versus the upper left corner x,y 
}

void draw() {
  background(120);
  
  diamond();
  
  translate(500, 0);
  diamond();
 
  translate(0, 500);
  diamond();
  
  translate(-500, 0);
  diamond();
  
}

void diamond() {
  push();
  translate(50, 50);
  rotate(radians(45));
  square(0, 0, 50);
  pop();
}
