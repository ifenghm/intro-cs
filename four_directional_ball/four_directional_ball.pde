int x = 20; 
int y = 20; 
int dx = 5;
int dy = 5;
void setup() {
  size(500, 500);
}

void draw() {
  background(20, 20, 200);
  circle(x, y, 20);
  // if the ball is at x = 20 and y = 20, go down
  if (x == 20 && y == 20) {
    dx = 0; 
    dy = 5;
  }
  // if the ball is at x = 20 and y = 480, go right 
  if (x == 20 && y == 480) {
    dx = 5;
    dy = 0;
  }
  // if ball at (480, 480), go up 
  if (x == 480 && y == 480) {
    dx = 0; 
    dy = -5;
  }
  // if ball at (), go right
  if (x == 480 && y == 20) {
    dx = -5; 
    dy = 0;
  }
  x = x + dx; 
  y = y + dy; 
  
}
