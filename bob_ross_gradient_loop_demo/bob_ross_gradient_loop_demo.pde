float r1 = 247;
float g1 = 92;
float b1 = 49;

float r2 = 220;
float g2 = 170;
float b2 = 105;

int numColors = 100;
void setup() {
  size(600, 600);
  strokeWeight((float)200/numColors);

}

void draw() {
  // parameterized the loop so can create a gradient with any number of colors i want.
  int l = 0;
  while (l <= numColors) {
    float r4 = map(1.0*l/numColors, 0, 1, r1, r2);
    float g4 = map(1.0*l/numColors, 0, 1, g1, g2);
    float b4 = map(1.0*l/numColors, 0, 1, b1, b2);
    stroke(r4, g4, b4);
    line(200 + 200.0 * l / numColors, 200, 200 + 200.0*l / numColors, 300);
    l = l + 1;
  }
  
  // unparameterized loop version
  //  int l = 0;
  //while (l <= 4) {
  //  float r4 = map(0 + .25 * l, 0, 1, r1, r2);
  //  float g4 = map(0 + .25 * l, 0, 1, g1, g2);
  //  float b4 = map(0 + .25 * l, 0, 1, b1, b2);
  //  stroke(r4, g4, b4);
  //  line(200 + 50 * l, 200, 200 + 50 * l, 300);
  //  l = l + 1;
  //}
  
  // unlooped version
  // stroke(r1, g1, b1);
  // line(200, 200, 200, 300);


  //float r4 = map(0 + .25 * l, 0, 1, r1, r2);
  //float g4 = map(0 + .25 * l, 0, 1, g1, g2);
  //float b4 = map(0 + .25 * l, 0, 1, b1, b2);
  //stroke(r4, g4, b4);
  //line(200 + 50 * l, 200 ,200 + 50 * l, 300);

  //l = l + 1;
  //float r3 = map(0 + .25 * l, 0, 1, r1, r2);
  //float g3 = map(0 + .25 * l, 0, 1, g1, g2);
  //float b3 = map(0 + .25 * l, 0, 1, b1, b2);
  //stroke(r3, g3, b3);
  //line(200 + 50 * l, 200 ,200 + 50 * l, 300);
  //l = l + 1;

  //float r5 = map(0 + .25 * l, 0, 1, r1, r2);
  //float g5 = map(0 + .25 * l, 0, 1, g1, g2);
  //float b5 = map(0 + .25 * l, 0, 1, b1, b2);
  //stroke(r5, g5, b5);
  //line(200 + 50 * l, 200 , 200 + 50 * l, 300);

  // end color
  //stroke(r2, g2, b2);
  //line(400, 200, 400, 300);
}
