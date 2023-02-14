// map, pantone
int r1 = 200;
int g1 = 100;
int b1 = 200;

int r2 = 100;
int g2 = 100;
int b2 = 240;

int RECT_WIDTH = 400;

void setup() {
  size(1000, 1000);
}

void draw() {
  

  // lines
  float lineStartX = 600;
  float lineWidth = 100;
  strokeWeight(100);
  stroke(r1, g1, b1);
  line(lineStartX, 100, lineStartX, 500);
    float r3 = map(1.0/3, 0, 1, r1, r2);
  float g3 = map(1.0/3, 0, 1, g1, g2);
  float b3 = map(1.0/3, 0, 1, b1, b2);

  stroke(r3, g3, b3);
  line(700, 100, 700, 500);
  fill(r3, g3, b3);
  float r4 = map(2.0/3, 0, 1, r1, r2);
  float g4 = map(2.0/3, 0, 1, g1, g2);
  float b4 = map(2.0/3, 0, 1, b1, b2);
  stroke(r4, g4, b4);
  line(800, 100, 800, 500);
  stroke(r2, g2, b2);
  line(900, 100, 900, 500);
  noStroke(); 
  
  
  int numLines = 100;
  
}
