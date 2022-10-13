void setup() {
  size(1000, 1000);
  background(22, 100, 220);
}

void draw() { // in a loop 
  // make a crown
  fill(#FFD700);
  beginShape(); 
  vertex(370, 570);
  vertex(300, 400);
  vertex(430, 450); 
  vertex(500, 280); 
  vertex(560, 450);
  vertex(650, 400);
  vertex(600, 570);
  endShape();
}



void mousePressed() {
  //textSize(40); 
  println("The mouse is at " 
      + mouseX + ", " + mouseY
      //500, 100
      );
  fill(100);
  circle(mouseX, mouseY, 5);
}
