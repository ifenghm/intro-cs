String userChoice;
void setup() {
  size(700, 700);
  textSize(30);
}
void draw() {
  // buttons
  translate(-100, 0);
  fill(255);
  if (userChoice == "Rock") {
    fill(255, 0, 0);
  }
  rect(width / 3, 100, 100, 50); // rock
  fill(255);
  if (userChoice == "Paper") {
    fill(255, 0, 0);
  }
  rect(width / 3 + 150, 100, 100, 50); // paper
  fill(255);
  rect(width / 3 + 300, 100, 100, 50); // scissors
  fill(0);
  text("Rock", width / 3, 140);
  text("Paper", width / 3 + 150, 140);
  text("Scissors", width / 3 + 300, 140);
}

void mousePressed() {
  if (mouseX <= width/3 &&
    mouseX >= width/3 - 100 &&
    mouseY >= 100 && mouseY <= 150) {
    userChoice = "Rock";
  } else if (
    mouseX <= width / 3 + 150 &&
    mouseX >= width / 3 + 50 &&
    mouseY >= 100 && mouseY <= 150
  ) {
    userChoice = "Paper";
  } else {
  } // scissors 
  println(userChoice);
}
