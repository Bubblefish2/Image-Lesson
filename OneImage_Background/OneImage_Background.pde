//Global Variable
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0, picWidthAdjusted, picHeightAdjusted;
float imageLargerDimension, imageSmallerDimension;
PImage pic;
boolean widthLarger=false, heightLarger=false;
//
void setup() {
  //CANVAS
  size(750, 500); //Landscape
  //
  //Population of Image
  pic = loadImage("../Images Used/Landscape & Square Images/delfin-bananas-1737840_960_720.jpg"); //Dimensions: width 960, height 720
  //Note: Dimensions are found in the image file / Right Click / Properties / Details
  //Alogrithm: Find the larger dimension for aspect ration (comparison of two numbers)
  int picWidth = 960; 
  int picHeight = 720; 
  if ( picWidth >= picHeight ) { //Image Dimension Comparison
    //True if Landscape or Square
    imageLargerDimension = picWidth;
    imageSmallerDimension = picHeight;
    widthLarger = true;
  } else {
    //False if Portrait
    imageLargerDimension = picHeight;
    imageSmallerDimension = picWidth;
    heightLarger = true;
  }//End Image Dimension Comparison
  println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ElseIF-Else
  //Computer chooses which formulae to execute
  if ( widthLarger == true ) {
    imageWidthRatio = imageLargerDimension / imageLargerDimension;
    imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  }
  if ( heightLarger == true ) {
    imageWidthRatio = imageSmallerDimension / imageLargerDimension;
    imageHeightRatio = imageLargerDimension / imageLargerDimension;
  }
  //Note:
  //Answers must be 1.0 and between 0 & 1 (decimal)
  //Ratio 1.0 similar to style="width:100%" (websites)
  //Ratio of 0-1 similar to style="height:auto" (websites)
  //
  //Population of Rect()
  imageX = width*0;
  imageY = height*0;
  imageWidth = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on two sides
  imageHeight = height-1;
  //
  //Combination of Population of Image with Population of Rect()
  //Adjust Image Variables for Aspect Ratio: entire image will be smaller due to aspect ratio
  picWidthAdjusted = float(width) * imageWidthRatio;
  picHeightAdjusted = height * imageHeightRatio;
  println(imageX, imageY, picWidthAdjusted, picHeightAdjusted); //Note: println() also verifies decimal places, complier will truncate
  //
} //End setup()
//
void draw() {
  //rect(imageX, imageY, imageWidth, imageHeight); //Background image
  //image(pic, imageX, imageY, imageWidth, imageHeight);
  image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
}//End draw
//
//void keyPressed() {}//End keyPressed
//
//void mousePressed() {}//End mousePressed
//
//End MAIN Program
