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

void setup() {
  background(255, 255, 255);
  //loadMondrianImage();
  size(746, 747);
  buildVerticalLines();  
  buildHorizontalLines();
  buildBoxes();
}

void draw() {
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
  firstBoxOnTheBottomLeft = buildRectangle(0, 0, 85, 161, color(243, 197, 0));
  centerRedBox = buildRectangle(0, 0, 378, 378, color(198, 0, 0));
  topBlackBox = buildRectangle(0, 0, 170, 72, color(0, 0, 0));
  bottomBlackBox = buildRectangle(0, 0, 187, 62, color(0, 0, 0));
  topRightYellowBox = buildRectangle(0, 0, 167, 69, color(243, 197, 0));
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
  shape(firstBoxOnTheBottomLeft, 4, 582);
  shape(centerRedBox, 106, 93);
  shape(topBlackBox, 106, 487);
  shape(bottomBlackBox, 297, 641);
  shape(topRightYellowBox, 505, 6);
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
