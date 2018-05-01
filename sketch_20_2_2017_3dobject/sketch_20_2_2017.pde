import nervoussystem.obj.*;

import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;


PeasyCam cam; //camera for 3d viewing of the sketch


boolean record;
void setup(){
  size (600,600, P3D);
  background(0);
  
  cam = new PeasyCam(this, 500); //new camera
  
    translate(width/2,height/2);
}

void draw(){
  
  background(0);
  if (record){
    beginRecord("nervoussystem.obj.OBJExport", "myShape.obj");
  }

  fill(255,200,20);
  //sphere(50);//draw a ball
  //box(50)
  drawShape();
  //ends record
  if (record){
    endRecord();
    record = false;
  }
  
}


void drawShape(){
 beginShape(TRIANGLE_STRIP);
 vertex(00,10,20);
 vertex(20,10,30);
 vertex(10,90,10);
 vertex(30,10,50);
 vertex(40,10,0);
 vertex(20,50,80);
 vertex(200,55,86);
 vertex(50,60,70);
 endShape(CLOSE);
  
}

void keyPressed(){
record = true;
}