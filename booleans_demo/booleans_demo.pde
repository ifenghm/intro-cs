float x = 50;
float dx = 5; 
boolean isBlue = true;
int count = 0;

void setup() {
  size(700, 700);
}

void draw() {
  background(120);
  textSize(50);
  text(count, 350, 100); 
  if (isBlue) {
    fill(7, 84, 223);
  } else {
    // red 
    fill(223, 84, 26);
  }
  if (mousePressed) {
    square(x - 40, 160, 80);
  } else {
    circle(x, 200, 80);
  }
  x = x + dx;
  if (x >= 660) {
    dx = -dx;
    isBlue = false;
  }
  if (x <= 40) {
    dx = 5;
    isBlue = true;
  }

}

// mousePressed() is a function, mousePressed is a boolean!
void mousePressed() {
  count = count + 1;
}
