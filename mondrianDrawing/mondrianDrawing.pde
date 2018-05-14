color black = color(0,0,0);

PShape firstTopHorizontalLine;
PShape secondHorizontalLine;
PShape thirdHorizontalLine;
PShape fourthHorizontalLine; 
PShape fifthHorizontalLine; 
PShape sixthHorizontalLine; 

PShape firstLeftVerticalLine;
PShape secondLeftVerticalLine;
PShape thirdLeftVerticalLine;
PShape fourthLeftVerticalLine;
PShape fifthLeftVerticalLine;
PShape sixthLeftVerticalLine;

PShape firstBoxOnTheBottomLeft;
PShape centerRedBox;
PShape topBlackBox;
PShape bottomBlackBox;
PShape topRightYellowBox;
//New global variables 
PShape topRightYellowBox2;
PShape bottomBlueBox;
PShape bottomRightRedBox;
PShape topLeftWhiteBox;
PShape topCenterWhiteBox;
PShape topRightWhiteBox;
PShape CenterLeftWhiteBox;
PShape CenterWhiteBoxUnderRedBox;
PShape RightWhiteBoxUnderYellowBox1;
PShape RightWhiteBoxUnderYellowBox2;
PShape RightWhiteBoxUnderWhiteBoxes;
PShape BottomButOneWhiteBoxUnderBlackBox;
PShape BottomButOneWhiteBoxUnderWhiteBox;
PShape BottomWhiteBoxUnderWhiteBox;
PShape BottomWhiteBoxUnderBlackBox;

void settings() {
  size(746, 747);
}

void setup() {
 
  background(255, 255, 255);
  //loadMondrianImage();
  
  buildVerticalLines();  
  buildHorizontalLines();
  buildBoxes();
}

void draw() {
  frame.setTitle(mouseX + ", " + mouseY);
  drawVerticalLines();
  drawHoriztonalLines();
  drawBoxes(); 
}


void buildVerticalLines() {
  firstLeftVerticalLine = buildRectangle(0, 0, 17, 650, black);
  secondLeftVerticalLine = buildRectangle(0, 0, 22, 69, black);
  thirdLeftVerticalLine = buildRectangle(0, 0, 21, 272, black);
  fourthLeftVerticalLine = buildRectangle(0, 0, 21, 700, black);
  fifthLeftVerticalLine = buildRectangle(0, 0, 21, 142, black);
  sixthLeftVerticalLine = buildRectangle(0, 0, 23, 737, black);
  
}
void buildHorizontalLines() {
   firstTopHorizontalLine = buildRectangle(0, 0, 668, 18, black);
   secondHorizontalLine = buildRectangle(0, 0, 168, 24, black);
   thirdHorizontalLine  = buildRectangle(0, 0, 606, 16, black);
   fourthHorizontalLine = buildRectangle(0, 0, 736, 23, black);
   fifthHorizontalLine = buildRectangle(0, 0, 414, 17, black);
   sixthHorizontalLine = buildRectangle(0, 0, 419, 21, black);
}

void buildBoxes() {
  firstBoxOnTheBottomLeft = buildRectangle(0, 0, 84, 161, color(243, 197, 0));
  centerRedBox = buildRectangle(0, 0, 378, 378, color(198, 0, 0));
  topBlackBox = buildRectangle(0, 0, 170, 72, color(0, 0, 0));
  bottomBlackBox = buildRectangle(0, 0, 187, 62, color(0, 0, 0));
  topRightYellowBox = buildRectangle(0, 0, 167, 69, color(243, 197, 0));
  topRightYellowBox2 = buildRectangle(0, 0, 167, 216, color(243, 197, 0));
  bottomBlueBox = buildRectangle(0, 0, 167, 122, color(23, 0, 178));
  bottomRightRedBox = buildRectangle(0, 0, 46, 161, color(187, 0, 5));
  topLeftWhiteBox = buildRectangle(0, 0, 167, 68, color(219, 220, 222));
  topCenterWhiteBox = buildRectangle(0, 0, 290, 68, color(218, 219, 220));
  topRightWhiteBox = buildRectangle(0, 0, 46, 556, color(227, 229, 230));
  CenterLeftWhiteBox = buildRectangle(0, 0, 84, 469, color(227, 229, 230));
  CenterWhiteBoxUnderRedBox = buildRectangle(0, 0, 187, 72, color(233, 235, 236));
  RightWhiteBoxUnderYellowBox1 = buildRectangle(0, 0, 84, 141, color(212, 213, 214));
  RightWhiteBoxUnderYellowBox2 = buildRectangle(0, 0, 62, 141, color(232, 234, 235));
  RightWhiteBoxUnderWhiteBoxes = buildRectangle(0, 0, 167, 73, color(229, 230, 231));
  BottomButOneWhiteBoxUnderBlackBox = buildRectangle(0, 0, 170, 63, color(236, 237, 239));
  BottomButOneWhiteBoxUnderWhiteBox = buildRectangle(0, 0, 187, 62, color(235, 236, 238));
  BottomWhiteBoxUnderWhiteBox = buildRectangle(0, 0, 170, 83, color(238, 240, 241));
  BottomWhiteBoxUnderBlackBox = buildRectangle(0, 0, 375, 20, color(238, 240, 241));
}

void drawVerticalLines() {
   shape(firstLeftVerticalLine, 89, 93);
   shape(secondLeftVerticalLine, 172, 7);
   shape(thirdLeftVerticalLine, 276, 471);
   shape(fourthLeftVerticalLine, 484, 6);
   shape(fifthLeftVerticalLine, 589, 329);
   shape(sixthLeftVerticalLine, 672, 6);
}

void drawHoriztonalLines() {
   shape(firstTopHorizontalLine, 5, 75);
   shape(secondHorizontalLine, 505, 306);
   shape(thirdHorizontalLine, 89, 471);
   shape(fourthHorizontalLine, 5, 559);
   shape(fifthHorizontalLine, 90, 643);
   shape(sixthHorizontalLine, 276, 702); 
}

void drawBoxes() {
  shape(firstBoxOnTheBottomLeft, 5, 582);
  shape(centerRedBox, 106, 93);
  shape(topBlackBox, 106, 487);
  shape(bottomBlackBox, 297, 641);
  shape(topRightYellowBox, 505, 6);
  shape(topRightYellowBox2, 505, 93);
  shape(bottomBlueBox,505, 582);
  shape(bottomRightRedBox, 695, 582);
  shape(topLeftWhiteBox, 5, 7);
  shape(topCenterWhiteBox, 194, 7);
  shape(topRightWhiteBox, 695, 6);
  shape(CenterLeftWhiteBox, 5, 93);
  shape(CenterWhiteBoxUnderRedBox, 297, 487);
  shape(RightWhiteBoxUnderYellowBox1, 505, 330);
  shape(RightWhiteBoxUnderYellowBox2, 610, 330);
  shape(RightWhiteBoxUnderWhiteBoxes, 505, 487);
  shape(BottomButOneWhiteBoxUnderBlackBox, 106, 582);
  shape(BottomButOneWhiteBoxUnderWhiteBox, 297, 582);
  shape(BottomWhiteBoxUnderWhiteBox, 106, 661);
  shape(BottomWhiteBoxUnderBlackBox, 297, 723);
}



PShape buildRectangle(int a, int b, int c, int d, color colour) {
  PShape rectangle = createShape(RECT, a, b, c, d);
  rectangle.setFill(colour);
  rectangle.setStroke(false);
  return rectangle;
}

void loadMondrianImage() {
  PImage img;
  img = loadImage("data/Piet_Mondrian_Bauhaus.jpg");
  image(img, 0, 0);   
}
