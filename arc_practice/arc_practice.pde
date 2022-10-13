/** 
* This is ms.feng's work
*  He is green and has a mouth
*/ 

void setup() { // called once 
  size(600, 600);
}

void draw()  { // called in a loop

  background(0, 0, 200);
  fill(#32a852);
  stroke(#006080);
  strokeWeight(10);
  circle(width /2, height /2, 280);
  eyes(width /2, height /2, 280/4);
  //ellipse(300, 200, 200, 100);
  
  mouth(width /2, height /2);
  
  if (keyPressed) {
      fill(0);
    if (keyCode == UP) {
        arc(250, 200, 200, 
    100, radians(135), radians(315)); // beanie  
    } else if (keyCode == DOWN) {
        arc(300, 200, 200, 100, radians(180), radians(360)); //yamuka
    }
  }

}
