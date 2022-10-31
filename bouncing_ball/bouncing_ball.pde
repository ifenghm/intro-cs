int x = 50;
int y = 60;

int dx = 10; 
int dy = 6; // change in y direction

void draw() {
  background(100);
  circle(x, y, 50); 
  x = x + dx;
  y = y + dy; 
  if ( x >= width ) {
    // turn back 
    dx = -10; 
  } else if ( x <= 0 ) {
    dx = 10;
  }
  // TODO: we're going to make these if statements 
  // more pretty :) 
  
  if ( y >= height ) {
    // turn back 
    dy = -6;
  } else if ( y <= 0 ) {
    dy = 6;
  }
}
