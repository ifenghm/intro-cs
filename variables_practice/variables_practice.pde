String t = "wield";
int n = 20;
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
     f = f + .2;
  }
  fill(0, 0, 100);
  square(0, 0, f);
}

void keyPressed() { // called when key is pressed
  print(key + " ,");
  if (key == 'w') {
    t = "Goodbye";
    flag = false;
  } else {
    t = "Hello";
    flag = true;
  }
}
