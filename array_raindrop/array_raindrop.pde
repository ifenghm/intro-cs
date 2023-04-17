float y = 0;

// condensing this to an array 
//float y1 = 50;
//y2 = 70; 
//... 
float[] yPos = {50, 180, 40, 100, 60}; 

void setup() {
  size(1000, 600);
  
} 

void draw() {
  background(100);
  for(int x = 1; x <= 5; x= x+1) {
    // accessing the array using arrayName[#]
    // starting at 0! 
    raindrop(x * 100, yPos[x -1] + y, 100, 100);
    
  }
  y = y + 1;
}


void raindrop(float xCenter, float yCenter,
float w, float h) {
  triangle(xCenter - w/2, yCenter, xCenter + w/2, 
  yCenter, xCenter, yCenter - h);

  arc(xCenter, yCenter, w, h, 0, PI); 
}
