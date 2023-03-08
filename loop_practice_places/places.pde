float kittyEyesOffset = 0;
float kittyEyesDx = 0;

int isCat = (int) random(2); 
/* 
Fun practice challenge with loops! 

1. Make 10 towers using a loop! 
2. How can you alternate between drawing a person and drawing a cat in the loop? 
-- hint, maybe think about isCat? 
3. How do you make the cats eyes move? What variable should you change? 

*/
void setup() {
  size(1400, 600);
  rectMode(CENTER);
}

void draw() {
  background(155);
  if (isCat == 1) {
    tower(300, 300, 200, "kitty", color(222, 135, 12));
  } else {
    tower(300, 300, 200, "person", color(222, 135, 12));
  }
  tower(300, 500, 400, "person", color(222, 135, 12));
  tower(600, 500, 200, "kitty", color(124, 166, 233));
}

void tower(float xCenter, float yBottom, float h, String figure, color col) {
  float spacing = 30;
  int numLayers = (int) max(h / spacing, 10);
  for (int n = 1; n <= numLayers; n++) {
    if (n % 2 == 0) {
      fill(col);
    } else {
      fill(255);
    }
    ellipse(xCenter,
      yBottom - n * spacing * .5, 150 - n * 5, spacing);
  }
  // figure on top
  float towerTop = yBottom - numLayers * spacing * .5;
  if (figure == "kitty") {
    kitty(xCenter, towerTop);
  } else {
    person(xCenter, towerTop);
  }
}

void kitty(float xCenter, float towerTop) {
  fill(0);
  arc(xCenter, towerTop - 10, 50, 30, radians(150), radians(390), CHORD);
  // tail
  noFill();
  strokeWeight(5);
  bezier(xCenter + 50, towerTop - 50,
    xCenter, towerTop - 30, xCenter + 60, towerTop - 50,
    xCenter + 20, towerTop - 10);
  fill(0);
  strokeWeight(1);
  for (int ear = -1; ear <= 1; ear = ear + 2) {
    push();
    translate(xCenter, towerTop);
    rotate(radians(ear * 20));
    triangle(-10, -40, 10, -40, 0, -60);
    pop();
  }
  // face
  ellipse(xCenter, towerTop - 30, 60, 30);
  fill(255);
  ellipse(xCenter - 15, towerTop - 35, 15, 10);
  ellipse(xCenter + 5, towerTop - 35, 15, 10);

  // eyes, oscillate
  fill(0);
  ellipse(xCenter - 15 + kittyEyesOffset, towerTop - 35, 8, 8);
  ellipse(xCenter + 5 + kittyEyesOffset, towerTop - 35, 8, 8);
  kittyEyesOffset += kittyEyesDx;
  if (kittyEyesOffset >= 8 || kittyEyesOffset <= -8) {
    kittyEyesDx = -kittyEyesDx;
  }
}



void person(float xCenter, float towerTop) {
  fill(255, 234, 99);
  // legs
  rect(xCenter + 10, towerTop - 5, 10, 25, 80);
  rect(xCenter - 10, towerTop - 5, 10, 25, 80);

  // arms
  push();
  translate(xCenter, towerTop - 45);
  rotate(radians(-45));
  rect(0, 10, 10, 40, 70);
  rotate(radians(90));
  rect(0, 10, 10, 40, 70);
  pop();

  ellipse(xCenter, towerTop - 30, 30, 40);
  ellipse(xCenter, towerTop - 50, 20, 25);
}
