/*
* This is not real executable code 
* Execute these based on the truth of the statements
*/ 
void draw() {
  // #1 
  if (ifFirstNameStartsWithJ) {
    sitDown();
  } else {
    standUp();
  }

  
  
  // #2
  if (ifFirstNameStartsWithJ) {
    standUp();
  } else if (ifFirstNameStartsWithLetterBeforeJ){
    pointToTheCeiling();
  } else {
    sitDown();
  }  
  
  
  // #3 
  if (inAClassWithSomeoneElseHere) {
    writeTheClassDownOnTheBoard();
    sitDown();
  } else if(inSpanish) {
    smileVeryWide();
  } else if(inFrench) {
    standUp();
    stretchYourHandsInATShape();
  }
  
  
  
  // #4 || is "or" 
  if (inSpanish || inAClassWithSomeoneElseHere) {
    sitDown();
  } else {
    wiggleYourNose();
  }
  
  // #5 
  if(birthdayIsInApril) {
    standUp();
  } else if(birthdateIsBeforeNovember2007) {
    pointToTheCeiling();
  } else {
    sitDown();
  }
  
  
  // #6 
  if (birthdayIsInApril && birthdateIsAfterNovember2007) {
    smileVeryWide();
  } else {
    faceTheWindows(); 
  }
}
