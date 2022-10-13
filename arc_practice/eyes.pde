void eyes(int x, int y, int size) {
  // eyes 
  fill(255); // white 
  circle(x, y, size);
  // pupil
  fill(0); 
  circle(x, y, .35 * size);
  
  fill(255);
  circle(x + size, y, size);
  // pupil 
  fill(0);
  circle(x + size, y, .35 * size);
}

void mouth(int x, int y) {
  noFill();
  arc(x + 40, y + 70, 100, 40, 0, PI);
  
}
