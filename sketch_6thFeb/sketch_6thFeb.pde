//Global Variables go at the top

float r = 0;
float g = 0;
float b = 0;
//A container that stores a random number

void setup(){
  //size of the canvas
  size(800,600);
  //color of the background
  background(6,59,55);
}

void draw(){
  //color to fill the circle
  //noStroke();
  
  r = random(0,150);
  g = random(0,255);
  b = random(0,180);
  
  fill(r,g,b,50);
  //code to make it interactive
  //ellipse(mouseX,mouseY,100,100);
  triangle(0,0,mouseX,mouseY,width/2,height/2);
  
}

void keyPressed(){
  saveFrame("drawing-###.jpg");
  
}