//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic, pic2 ;
float topHalfX, topHalfY, topHalfWidth, topHalfHeight;
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;

PImage img;
void setup () {
  appWidth= width;
  appHeight = height;
  size(1200, 800); //Landscape

  //Aspect Ratio
  int picWidth   = 517; 
  int picHeight  = 346;

  //Population 

  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;


  pic = loadImage("Capture.JPG");
  pic2 = loadImage("Capture.JPG");

  topHalfX= appWidth * 0.75/4;
  topHalfY= appHeight * 1/10;
  topHalfWidth= appWidth * 1.25/2;
  topHalfHeight= appHeight * 1.5/5;
  bottomHalfX= appWidth * 0.75/4;
  bottomHalfY= appHeight * 2.5/4;
  bottomHalfWidth= appHeight *1.25/2;
  bottomHalfHeight= appHeight * 1.5/5;


  rect(topHalfX, topHalfY, topHalfWidth, topHalfHeight);
  rect(bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);

  img= loadImage("Capture.JPG");

  //Creating two rectangles to add shapes in
};
void draw () {
  //image( pic, topHalfX, topHalfY, picWidthAdjusted2, picHeightAdjusted2 );
  image ( pic2, bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);

  imageMode(CORNER);
  image(img, 40, 40, 360, 160);
};
//ok
