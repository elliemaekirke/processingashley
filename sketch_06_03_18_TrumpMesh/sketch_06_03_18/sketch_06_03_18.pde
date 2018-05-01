PShape obj;
PImage img;
PShape []  children;

void setup(){
  
  size(800,600,P3D);
  background (0);
  
  obj = loadShape("white_trump.obj");
  obj.scale(50);
  
  children= obj.getChildren();
  
  img = loadImage("download.jpg");
  obj.setTexture(img);
  
}

void draw(){
  background (0);
  lights();
  directionalLight(126,6,126,0,0,-1);
  ambientLight(255,255,255);
  
  translate(width/2, height/2);
  
  rotateX(frameCount*0.03);
  rotateZ(frameCount*0.01);
  
  shape(obj);
}


void keyPressed(){
  
 for (int n = 0; n < children.length; n ++){
  children[n].translate(random(-1,1),random(-1,1), random(-1,1)); 
 
 }
  
}