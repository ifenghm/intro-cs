void rectGradient() {
    // beginning color, end color.
  fill(r1, g1, b1);
  rect(100, 100, RECT_WIDTH / 2, 200);

  fill(r2, g2, b2);
  rect(300, 100, RECT_WIDTH / 2, 200);

  // next row: add middle color
  fill(r1, g1, b1);
  rect(100, 300, RECT_WIDTH /3, 200);
  fill(r2, g2, b2);
  rect(100 + RECT_WIDTH*2/3, 300, RECT_WIDTH / 3, 200);
  // middle color: map
  float rMid = map(0.5, 0, 1, r1, r2);
  float gMid = map(0.5, 0, 1, g1, g2);
  float bMid = map(0.5, 0, 1, b1, b2);
  fill(rMid, gMid, bMid);
  rect(100 + RECT_WIDTH/3, 300, RECT_WIDTH / 3, 200);
  
  // next row, divide into fourths 
    // next row: add middle color
  fill(r1, g1, b1);
  rect(100, 500, RECT_WIDTH /4, 200);
  fill(r2, g2, b2);
  rect(100 + RECT_WIDTH*3/4, 500, RECT_WIDTH / 4, 200);
  // middle color: map
  float r3 = map(1.0/3, 0, 1, r1, r2);
  float g3 = map(1.0/3, 0, 1, g1, g2);
  float b3 = map(1.0/3, 0, 1, b1, b2);
  fill(r3, g3, b3);
  rect(100 + RECT_WIDTH/4, 500, RECT_WIDTH / 4, 200);
  float r4 = map(2.0/3, 0, 1, r1, r2);
  float g4 = map(2.0/3, 0, 1, g1, g2);
  float b4 = map(2.0/3, 0, 1, b1, b2);
  fill(r4, g4, b4);
  rect(100 + 2.0*RECT_WIDTH/4, 500, RECT_WIDTH / 4, 200);
  
}
