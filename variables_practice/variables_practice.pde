String t = "";
int n = 0;
float f = 0.0;
boolean flag = true;

void draw() {
  background(100, 100, 100);
  textSize(50);
  text(t, 200, 300);
  
  fill(#4B0082);
  circle(500, 500, n);
  if (flag) {
     n = n + 1;
  }
  fill(0, 0, 100);
  square(0, 0, f);
  f = f + .2;
}

void keyPressed() {
  //t = t + key;
  // Challenge: to make backspace work
  if (key == 'w') {
    t = "Goodbye";
    flag = false;
  } else {
    t = "Hello";
    flag = true;
  }
}
