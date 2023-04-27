float puddle = 0;
int numDrops = 10; 
// this can be used to easily change the number of drops

// condensing this to an array
//float y1 = 50;
//y2 = 70;
//...
// one way to initialize: fill in manually
//float[] yPos = {50, 180, 40, 100, 160, 120};

// 2nd way
float[] yPos = new float[numDrops];
float[] speeds = new float[numDrops];

void setup() {
  size(1000, 600);
  // for the second way, you can set initial values 
  // in setup(). this is where you want random! 
  for (int i = 0; i < numDrops; i++) {
    speeds[i] = random(5, 15);
    yPos[i] = random(-500, -50);
  }
}

void draw() {
  background(100);
  for (int x = 0; x < numDrops; x= x+1) {
    // accessing the array using arrayName[#]
    // starting at 0!
    // y = y + 1
    yPos[x] = yPos[x] + 5;
    raindrop(x * width / numDrops, yPos[x], 10, 20);
    if (yPos[x] > 550) {
      yPos[x] = 0;
      puddle = puddle + 1;
    }
  }


  fill(75, 60, 200);
  ellipse(500, 600, 1000, puddle);

  // we can access one element in the array
  // to access all, we use a for loop.
  textSize(40);
  text(yPos[2], 500, 200);
}


void raindrop(float xCenter, float yCenter,
  float w, float h) {
  triangle(xCenter - w/2, yCenter, xCenter + w/2,
    yCenter, xCenter, yCenter - h);

  arc(xCenter, yCenter, w, h, 0, PI);
}
