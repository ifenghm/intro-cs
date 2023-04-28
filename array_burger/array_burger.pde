int[] numPatties = new int[0];
float[] xPatties = new float[0];
float[] yPatties = new float[0];
float dx = 1;
float r = 0;
void setup() {
  size(1000, 600);
}

void draw() {
  background(255);
  fill(223, 215, 200, 200);
  rect(-1, -1, width+1, height+1);

  for (int i = 0; i < xPatties.length ; i = i+1) {
    // Draw the burger top bun
    int pattyCount = numPatties[i];

    // move the existing burgers in some way?

    push();
    translate(xPatties[i], yPatties[i] + round(pattyCount / 2) * 50);
    if (frameCount % 80 == 0) {
      r = PI / 4;
    } else if (frameCount % 80 == 40) {
      r = -PI / 4;
    }
    rotate(r);
    translate(-xPatties[i], -(yPatties[i] + round(pattyCount / 2) * 50));

    drawBurgerTopBun(xPatties[i], yPatties[i], 300, 50);

    for (int j = 0; j < pattyCount; j = j + 1) {
      drawBurgerPatty(xPatties[i], yPatties[i] + j * 50, 300, 50);
    }
    // Draw the burger bottom bun
    drawBurgerBottomBun(xPatties[i], yPatties[i] + (pattyCount + 1) * 50, 300, 50);
    
    pop();
  }
  
  fill(0);
  textSize(40);
  text("the length of all my arrays is: ", 0, height - 80);
  text(xPatties.length, 500, height - 40); 
}

void mousePressed() {
  int numPatty = (int) random(1, 4);
  numPatties = append(numPatties, numPatty);

  xPatties = append(xPatties, mouseX);
  yPatties = append(yPatties, mouseY);
}

void drawBurgerPatty(float x, float y, float w, float h) {
  fill(120, 55, 33);

  ellipse(x + w/2, y + h/2 + h, w, h);
  rect(x, y + h/2 + h, w, h/2);
}

void drawBurgerTopBun(float x, float y, float w, float h) {

  fill(240, 198, 84);

  ellipse(x + w/2, y + h/2, w, h);
  rect(x, y + h/2, w, h/2);
  fill(245, 245, 220);
  int numSeeds = 3;
  float seedSize = w/20;
  for (int i = -numSeeds; i < numSeeds; i++) {
    float seedX = x + w/2 + i * seedSize;
    float seedY = y;
    float seedAngle = radians(360.0 / 20 * i);
    float seedXOffset = seedSize*cos(seedAngle); // Calculate the x offset of the seed
    float seedYOffset = i * i;
    ellipse(seedX + seedXOffset, seedY + seedYOffset, seedSize, seedSize/2);
  }
}

void drawBurgerBottomBun(float x, float y, float w, float h) {
  fill(240, 198, 84);
  rect(x, y, w, h/2);
  ellipse(x + w/2, y + h/2, w, h);
}
