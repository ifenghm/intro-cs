void setup() {
  size(700, 600);
}

void draw() {
  fill(50, 150, 203);

  translate(200, 200);
  crown();
  
  translate(300, 0);
  crown();
  
  fill(25, 75, 150);
  scale(0.8);
  translate(0, 20);
  crown();
  
  fill(50, 150, 203);
  scale(0.8);
  translate(0, 20);
  crown();
}


void crown() {
  push();
  translate(-485, -450);
  beginShape(); 
  vertex(370, 570);
  vertex(300, 400);
  vertex(430, 450); 
  vertex(485, 280); 
  vertex(545, 450);
  vertex(670, 400);
  vertex(600, 570);
  endShape(CLOSE);
  pop();
}
