void setup() {
  size(600, 600);
}

void draw() {
  fill(255);
  rect(100, 100, 400, 400);
  fill(255, 0, 0);
  circle(
    restriction(mouseX, 100, 500),
    restriction(mouseY, 100, 500),
    30);
}


/*
restricts the input to be
 within the bounds of this rectangle.
 Please return a number that does NOT
 exceed min or max.
 */
float restriction(float input,
  float min, float max) {
     if (input > max) {
       return max; 
     } else if (input < min) {
       return min;
     } else {
         return input;
     }
}
