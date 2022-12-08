String userChoice = "Not chosen";
int randomInt;

void setup() {
  size(700, 700);
  textSize(30);
}

void draw() {
  background(150);
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
  rect(width / 3 + 50, 100, 100, 50); // paper
  fill(255);
  if (userChoice == "Scissors") {
    fill(255, 130, 130);
  }
  rect(width / 3 + 200, 100, 100, 50); // scissors
  fill(0);
  text("Rock", width / 3 - 100, 140);
  text("Paper", width / 3 + 50, 140);
  text("Scissors", width / 3 + 200, 140);

  // computer
  text("Computer:", width / 2 - 100, 300);
  if (randomInt == 0) {
    text("Rock", width / 2 - 100, 400);
  } else if (randomInt == 1) {
    text("Paper", width / 2 - 100, 400);
  } else if (randomInt == 2) {
    text("Scissors", width / 2 - 100, 400);
  }
  //text(randomInt, width / 2 - 100, 400);
}

void mousePressed() {
  if (mouseX > width /3 - 100 &&
    mouseX < width / 3 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Rock";
    randomInt = (int) random(3);
  } else if (
    mouseX > width / 3 + 50 &&
    mouseX < width / 3 + 150 &&
    mouseY > 100 && mouseY < 150
    ) {
    userChoice = "Paper";
    randomInt = (int) random(3);
  } else if (
    mouseX > width / 3 + 200 &&
    mouseX < width / 3 + 300 &&
    mouseY > 100 && mouseY < 150
    ) {
    userChoice = "Scissors";
    randomInt = (int) random(3);
  } else {
    userChoice = "Not Chosen";
  }
  println(userChoice);
}
