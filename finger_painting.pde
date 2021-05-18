/*
Nicole Nigro
CSCI 3725
M9: Another Kind of CC
5/16/21
*/

PImage fingerprint;

color paint1 = color(255, 51, 51); //red
color paint2 = color(255, 153, 51); //orange
color paint3 = color(255, 255, 51); //yellow
color paint4 = color(153, 255, 51); //green1
color paint5 = color(51, 255, 51); //green2
color paint6 = color(51, 255, 153); //green3
color paint7 = color(51, 255, 255); //blue1
color paint8 = color(51, 153, 255); //blue2
color paint9 = color(51, 51, 255); //blue3
color paint10 = color(153, 51, 255); //purple
color paint11 = color(255, 51, 255); //pink1
color paint12 = color(255, 51, 153); //pink2
color paint13 = color(0, 0, 0); //black

boolean paused = false;
boolean rainbowMode = false;

void setup() {
  //light gray background
  size(960, 700);
  background(211, 211, 211);
  
  //white canvas for painting
  fill(255, 255, 255);
  rect(50, 0, 905, 700);
  
  //fingerprint
  fingerprint = loadImage("fingerprint.png");
  fingerprint.resize(40, 55);

  //creating the color palette to the left of the canvas
  fill(paint1);
  ellipse(25, 25, 40, 40);
  
  fill(paint2);
  ellipse(25, 75, 40, 40);
  
  fill(paint3);
  ellipse(25, 125, 40, 40);
  
  fill(paint4);
  ellipse(25, 175, 40, 40);
  
  fill(paint5);
  ellipse(25, 225, 40, 40);
  
  fill(paint6);
  ellipse(25, 275, 40, 40);
  
  fill(paint7);
  ellipse(25, 325, 40, 40);
  
  fill(paint8);
  ellipse(25, 375, 40, 40);
  
  fill(paint9);
  ellipse(25, 425, 40, 40);
  
  fill(paint10);
  ellipse(25, 475, 40, 40);
  
  fill(paint11);
  ellipse(25, 525, 40, 40);
  
  fill(paint12);
  ellipse(25, 575, 40, 40);
  
  fill(paint13);
  ellipse(25, 625, 40, 40);
  
  //rainbowMode "paint" is a circle of different colored concentric circles
  noStroke();
  ellipseMode(RADIUS);
  int radius = 20;
  for (int r = radius; r > 0; --r) {
    float c1 = random(0, 255);
    float c2 = random(0, 255);
    float c3 = random(0, 255);
    fill(c1, c2, c3);
    ellipse(25, 675, r, r);
  }
}

void draw() {
  if(mousePressed) {
    //paint color selection
    if(mouseX < 50){
      //load image for each color selection so previous color doesn't affect tint
      fingerprint = loadImage("fingerprint.png");
      
      if(mouseY > 5 && mouseY < 45){
        rainbowMode = false; //turn rainbowMode off because another color is being selected
        tint(paint1);
      } else if (mouseY > 55 && mouseY < 95){
        rainbowMode = false;
        tint(paint2);
      } else if (mouseY > 105 && mouseY < 145){
        rainbowMode = false;
        tint(paint3);
      } else if (mouseY > 155 && mouseY < 195){
        rainbowMode = false;
        tint(paint4);
      } else if (mouseY > 205 && mouseY < 245){
        rainbowMode = false;
        tint(paint5);
      } else if (mouseY > 255 && mouseY < 295){
        rainbowMode = false;
        tint(paint6);
      } else if (mouseY > 305 && mouseY < 345){
        rainbowMode = false;
        tint(paint7);
      } else if (mouseY > 355 && mouseY < 395){
        rainbowMode = false;
        tint(paint8);
      } else if (mouseY > 405 && mouseY < 445){
        rainbowMode = false;
        tint(paint9);
      } else if (mouseY > 455 && mouseY < 495){
        rainbowMode = false;
        tint(paint10);
      } else if (mouseY > 505 && mouseY < 545){
        rainbowMode = false;
        tint(paint11);
      } else if (mouseY > 555 && mouseY < 595){
        rainbowMode = false;
        tint(paint12);
      } else if (mouseY > 605 && mouseY < 645){
        rainbowMode = false;
        tint(paint13);
      } else if (mouseY > 655 && mouseY < 695){
        rainbowMode = true;
      }
    }
    
    //paint fingerprint
    if (mouseX > 50 && mouseX < 915) {
      //randomly select a RGB color value to paint for each fingerprint
      if (rainbowMode == true){
        fill(paint13);
        textSize(48);
        text("help", 300, 300); //getting to here but drawing not working on site
        fingerprint = loadImage("fingerprint.png");
        float red = random(0, 255);
        float green = random(0, 255);
        float blue = random(0, 255);
        color nextColor = color(red, green, blue);
        tint(nextColor);
        fingerprint.resize(40, 55);
        image(fingerprint, mouseX, mouseY);
        fill(paint13);
        textSize(48);
        text("test", 500, 500); 
      } else {
        fingerprint.resize(40, 55);
        image(fingerprint, mouseX, mouseY);
      }
    }
  }
}

void keyPressed(){  
  //if users presses the c button, clear painting
  if (key == 'c' || key == 'C'){
    fill(255, 255, 255);
    rect(51, 0, 905, 700);
  }
  
  //if user presses the p button, pause; if they press p again, unpause
  if (key == 'p'|| key == 'P'){
    paused = !paused;
    if (paused){
      noLoop();
    } else {
      loop();
    }
  }
}
