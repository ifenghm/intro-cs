// Ms. Feng
// Color Picker (click and drag) 
// to understand returning values

float red = 0, blue = 0, green = 0;
void setup() {
  size(600, 600);
  textAlign(RIGHT, CENTER);
}

void draw() {
  background(120);
  colorPicker(30, 40);

  // display
  fill(red, green, blue);
  circle(300, 300, 300);
}

/*
 * Creates a RGB colorPicker.
 * INPUTS:
 * xPos: Starting left of the box
 * yPos: Starting top of the box
 * length of rectangle 100, text size 18.
 * could parameterize size!
 */
void colorPicker(float xPos, float yPos) {
  fill(255);
  textSize(18);
  // red
  text("R", xPos, yPos);
  singleColor(xPos, yPos, red);
  // green
  text("G", xPos, yPos + 10 * 2);
  singleColor(xPos, yPos + 10 * 2, green);
  // blue
  text("B", xPos, yPos + 10 * 4);
  singleColor(xPos, yPos + 10 * 4, blue);

  // change red,blue,green by dragging
  if (mousePressed) {
    float newVal = map(mouseX, xPos, xPos + 100, 0, 255);
    if (mouseY <= yPos + 20 && mouseY >= yPos) {
      // could replace with mapAndConstrain() if want to!
      red = constrain(newVal, 0, 255);
    } else if (mouseY <= yPos + 10 * 4 && mouseY >= yPos + 10 * 2) {
      green = constrain(newVal, 0, 255);
    } else if (mouseY <= yPos + 10 * 6 &&
      mouseY >= yPos + 10 * 4) {
      blue = constrain(newVal, 0, 255);
    }
  }
}

// helper function to colorPicker
// single rgb picker, maps sliderPos by rgb intensity
void singleColor(float xPos, float yPos, float rgb) {
  rect(xPos+10, yPos, 100, 10, 20);
  float sliderPos =
    map(rgb, 0, 255, 0, 100);
  circle(xPos + 10 + sliderPos, yPos + 5, 20);
  text((int)rgb, xPos + 150, yPos);
}

/*
 * maps value that was in the oldMin - oldMax range,
 * to the newMin - newMax range. constrains it too!
 */
float mapAndConstrain(float val, 
  float oldMin, 
  float oldMax,
  float newMin, 
  float newMax) {
  float v = map(val, oldMin, oldMax, newMin, newMax);
  float c = constrain(v, newMin, newMax); 
  return c;
}
