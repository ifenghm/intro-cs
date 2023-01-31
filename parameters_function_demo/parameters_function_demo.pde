float y = 2;

void setup() {
  size(600, 600);
  rectMode(CENTER); 
  // makes it so that the parameters in square() / rect() functions
  // indicate the center x,y versus the upper left corner x,y
}

void draw() {
  background(120);
  
  // Takeaway 0: We can make parameters 
  // that can themselves vary, 
  // instead of doing translate() scale() 
  diamond(50, 50, 60);

  diamond(550, 50, 100);

  diamond(300, 500, 100);
  
  // Let's make a teardrop using fixed numbers for now,
  // and then we can parameterize it
  //triangle(300 - 50, 300, 300 + 50, 300, 300, 300-100);
  //arc(300, 300, 100, 100, radians(0), radians(180)); // middle
  
  // Takeaway 1: We pass parameters to functions, 
  // which create variables that exist inside a function. uncomment the code below and you can see you  
  // uncomment the code below to see midPointX doesn't exist in the draw function! 
  // midPointX = 100; 
  teardrop(175, 300, 150);
  
  // Takeaway 2: we can use variables normally 
  // to pass as parameters, 
  // and have them change here. 
  teardrop(500, y, 20);
  y = y + 1;
  

}

// makes a diamond
// INPUTS: xPos denotes center x of diamond
// yPos center y
void diamond(float xPos, float yPos, float size)
{
  push();
  translate(xPos, yPos);
  rotate(radians(45));
  square(0, 0, size);
  pop();
}


// Now we can parameterize a teardrop too!
void teardrop(float midPointX, float midPointY,
  float len) {
  triangle(midPointX,
    midPointY - len,
    midPointX + len / 2,
    midPointY, midPointX - len / 2, midPointY);
  arc(midPointX, midPointY,
    len, len,
    radians(0), radians(180));
}
