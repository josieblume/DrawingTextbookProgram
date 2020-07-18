/* INTSTRUCTIONS:
 press the mouse and click, and use the arrow keys and press the numbers 1-7 and just see what happens !

 This is a drawing program inspired by the likes of Kid Pix and Macpaint. I wanted to create a nonsensicle drawing tool, that does one specific thing. 
 This specific thing being: making it nearly impossible to mark up a textbook that I was reading during virtual class last quarter.
 The program instead, covers the page with doodles and erratic lines.
 
 MADE: APRIL 20TH, DESCRIPTION FROM THEN:

lately as the quarter weens on and we experience the pre-midterm slump, and staying inside all day, want to go 
 outside and play and make cookies coronavirus slump, I have found it harder and harder to just sit and underline 
 my readings and dododo my homework no doodles no matter how fun it is!! (this class is fun)
 I wanted to reflect this fidgetyness I am experiencing and try and come up with the most fustrating way to 
 try and underline some textbook sentences and just sit and focus. 
 
*/

/*this program definetely could use a lot of improvements, i want to figure out a way to make the images
 feel more like stamps, where you can change the size and press them and escape and have
 them change color and glitch on the screen as you are drawing, also a way where you can 
 release the mouse and the program image is inverted, and i am having some logic errors
 i need to sort through*/

PImage left;
PImage right;
PImage eye;
PImage robot;
PImage bottom;
PImage oh;
PImage alien;
PImage ai;
PImage nerd;
PImage tried;

color red = color(255, 0, 0);
float sw = .2;

void setup() {
  fullScreen();
  left = loadImage("1.png");
  right = loadImage("2.png");
  eye = loadImage("eye.png");
  robot = loadImage("robot.png");
  bottom = loadImage("bottom.png");
  oh = loadImage("oh.png");
  alien = loadImage("alien.png");
  ai = loadImage("3ye.png");
  nerd = loadImage("nerd.png");
  tried = loadImage("nerd.png");

  //background
  image(left, 0, 0, width/2, height);
  image(right, width/2, 0, width/2, height);
}

void draw() {

  if (mousePressed) {
    strokeWeight(sw);
    stroke(red);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void keyPressed() {
  if (key == '1') {    // PRESS '1' maybe work with color change and transparency?? and location and size?
    imageMode(CENTER);
    image(eye, width/2, height/2, eye.width, eye.height);
  } else if (key == '2') {  
    imageMode(CORNER);
    image(robot, width/1.58, 0, robot.width/1.3, robot.height/1.3);
  } else if (key == '3') {    
    imageMode(CORNER);
    image(bottom, width/2, height/4, bottom.width, bottom.height);
  } else if (key == '4') {    
    imageMode(CORNER);
    image(oh, 0, 0, oh.width, oh.height);
  } else if (key == '5') {    
    imageMode(CORNER);
    //mouseX, mouseY!!
    image(alien, 0, height/2, oh.width/2, oh.height/2);
  } else if (key == '6') {    
    imageMode(CORNER);
    image(ai, 0, height/2, ai.width, ai.height);
  } else if (key == '7') {    
    imageMode(CENTER);
    image(nerd, width/2, height/2, nerd.width, nerd.height);
  } else if (key == CODED && keyCode == UP) {
    line(mouseX, 0, mouseY, height);
  } else if (key == CODED && keyCode == DOWN) {
    line(mouseY, 0, mouseX, height);
  } else if (key == CODED && keyCode == LEFT) {
    line(mouseX, pmouseX, mouseY, pmouseY);
  } else if (key == CODED && keyCode == RIGHT) {
    line(mouseY, pmouseY, mouseX, pmouseX);
  } else if (key== CODED && keyCode ==SHIFT) {
    //  //tint(255, 0, 0);
    imageMode(CENTER);
    image(tried, width/2, height/2, tried.width, tried.height);
  } else if (key == ' ') {    
    saveFrame();
  } else if (key == 'b' || key == 'B') {    
    image(left, 0, 0, width/2, height);
    image(right, width/2, 0, width/2, height);
  }
}
void mousePressed() {
  red +=10;
  sw+=.1;
}
