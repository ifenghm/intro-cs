// rotation 
float c = 0;
boolean pause = false;
void setup() {
  size(1000, 1000);
}

void draw() {
  background(#ff33ed);
  translate(500, 500);

  if (!pause) {
    c = c + .02;
  }
  // could also mod and get rid of the reset
  if (c > 2* PI) {
    c = 0;
  }
  // UNCOMMENT THIS FOR MOVEMENT
  // rotate(c); 
  fill(#ffffff, 200);
  
  //circle(300, 0, 100);
  //circle(0, -300, 100);
  //circle(0, 300, 100);
  //circle(-300, 0, 100);
  //circle(300 / sqrt(2), -300 / sqrt(2), 100);
  //circle(300 / sqrt(2), 300 / sqrt(2), 100);
  //circle(-300 / sqrt(2), 300 / sqrt(2), 100);
  //circle(-300 / sqrt(2), -300 / sqrt(2), 100);
  
  // rotation is much better 
  // than what we have above, 
  // we had to do a lot of math to get there! :) 
  
  circle(300, 0, 100);
  rotate(radians(45));
  circle(300, 0, 100);
  rotate(radians(45));
  circle(300, 0, 100);
  rotate(radians(45));
  circle(300, 0, 100);
  rotate(radians(45));
  circle(300, 0, 100);
  rotate(radians(45));
  circle(300, 0, 100);
  rotate(radians(45));
  circle(300, 0, 100);
  rotate(radians(45));
  circle(300, 0, 100);
  rotate(radians(45));
}

void mousePressed() {
  println(mouseX);
  pause = true;
}

void mouseReleased() {
  pause = false;
}
