String shephard = "Hello";
int n = 0;
float f = 0.0;
boolean flag = true; 

void draw() {
  background(60, 250, 20);
  textSize(50);
  text(shephard, 200, 300);
  fill(161, 186, 246);

  square(50, 50, n);
  fill(52, 173, 200);
  circle(200, 300, f);
  if (flag) {
    n = n + 1;
    f = f + 0.5;
  }
  
}

void keyPressed() {
  if (keyCode == ' ') {
    shephard = "Goodbye";
    flag = false;
  } else {
    shephard = "Hello";
    flag = true;
  }
}
