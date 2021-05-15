/*
Nicole Nigro
CSCI 3725
M9: Another Kind of CC
5/15/21
*/

PImage img;

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

void setup() {
  //light gray background
  size(960, 655);
  background(211, 211, 211);
  
  //white canvas for painting
  fill(255, 255, 255);
  rect(50, 0, 905, 655);
  
  img = loadImage("fingerprint.png");
  img.resize(40, 55);

  //creating the color palette to the right of the 
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
}

void draw() {
  if(mousePressed) {
    //paint color selection
    if(mouseX < 50){
      if(mouseY > 5 && mouseY < 45){
        tint(paint1);
      } else if (mouseY > 55 && mouseY < 95){
        tint(paint2);
      } else if (mouseY > 105 && mouseY < 145){
        tint(paint3);
      } else if (mouseY > 155 && mouseY < 195){
        tint(paint4);
      } else if (mouseY > 205 && mouseY < 245){
        tint(paint5);
      } else if (mouseY > 255 && mouseY < 295){
        tint(paint6);
      } else if (mouseY > 305 && mouseY < 345){
        tint(paint7);
      } else if (mouseY > 355 && mouseY < 395){
        tint(paint8);
      } else if (mouseY > 405 && mouseY < 445){
        tint(paint9);
      } else if (mouseY > 455 && mouseY < 495){
        tint(paint10);
      } else if (mouseY > 505 && mouseY < 545){
        tint(paint11);
      } else if (mouseY > 555 && mouseY < 595){
        tint(paint12);
      } else if (mouseY > 605 && mouseY < 645){
        tint(paint13);
      }
    }
    //paint fingerprint
    else {
      image(img, mouseX, mouseY);
    }
  }
}

void keyPressed(){  
  //if users presses the tab button, clear painting
  if (key == TAB){
    fill(255, 255, 255);
    rect(50, 0, 905, 720);
  }
  //if user presses the s button, save painting
  if (key == 's'|| key == 'S'){
    PImage art  = get(50, 0, 905, 720);
    art.save("myFingerPainting.jpg");
  }
}
