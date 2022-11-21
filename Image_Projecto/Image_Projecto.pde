//Global Variables
int appWidth, appHeight,fontsize;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic, pic2, pic3 ;
float topHalfX, topHalfY, topHalfWidth, topHalfHeight;
float bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
String title = "Out of aspect ratio ", footer = "In aspect ratio";
float titleX, titleY, titleWidth, titleHeight;
float footerX, footerY, footerWidth, footerHeight;
color blue=#3390C1, green=#11B98E, hydro=#0051D8, red=#C93A16, resetDefaultInk=#FFFFFF;
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

  // pic3 = loadImage("../Used Images/Space image.jpg"); //NEEDS FIX

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

  textAlign(LEFT, TOP);
  text(title, titleX, titleY, titleWidth, titleHeight );
  text(footer, footerX, footerY, footerWidth, footerHeight ); 

  rect(topHalfX, topHalfY, topHalfWidth, topHalfHeight);
  rect(bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );


  img= loadImage("Capture.JPG");

};
void draw () {
  image ( pic2, bottomHalfX, bottomHalfY, bottomHalfWidth, bottomHalfHeight);

  imageMode(CORNER);
  image(img, 40, 40, 360, 160);

  rect(titleX, titleY, titleWidth, titleHeight);
  rect(footerX, footerY, footerWidth, footerHeight);
  
  fill(blue );
  textAlign(TOP, CENTER);

  text(title, titleX, titleY, titleWidth, titleHeight );
  fill(red);
  text(footer, footerX, footerY, footerWidth, footerHeight ); 
  fill(resetDefaultInk) ;
};
//ok
//image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted1, picHeightAdjusted1);
