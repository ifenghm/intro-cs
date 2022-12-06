String userChoice = "Not chosen";

void setup() {
  size(700, 700);
  textSize(30);
}

void draw() {
  if (userChoice == "Rock") {
    fill(0, 0, 255);
  } else {
    fill(255);
  }
  rect(width / 3 - 100, 100, 100, 50);
  if (userChoice == "Paper") {
    fill(0, 255, 255);
  } else {
    fill(255);
  }
  rect(width / 3 + 50, 100, 100, 50);
  fill(255);
  rect(width / 3 + 200, 100, 100, 50);
  fill(0);
  text("Rock", width / 3 - 100, 140);
  text("Paper", width / 3 + 50, 140);
  text("Scissors", width / 3 + 200, 140);
  
  // computer 
  text("Computer:", width / 2 - 100, 300);
}

void mousePressed() {
  if (mouseX > width /3 - 100 &&
    mouseX < width / 3 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Rock";
  } else if (
    mouseX > width / 3 + 50 &&
    mouseX < width / 3 + 150 &&
    mouseY > 100 && mouseY < 150
    ) {
    userChoice = "Paper";
  } else {
    userChoice = "Not Chosen";
  }
  println(userChoice);
}
