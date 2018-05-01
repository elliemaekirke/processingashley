//class structure
class Particle {
  float x;
  float y;
  float r, g, b;


  //pvector is 3 variables in one an x,y,z
  PVector vel;
  PVector acc;
  PVector loc;
  //construction function

  Particle(float px, float py) {
    x=px;
    y=py;
    r = random(255);
    g = random(255);
    b = random(255);
    acc = new PVector(0, 0);
    vel = new PVector(random(-5, 5), random (-5, 5));
    loc = new PVector (x, y);
  }

  void applyForce(PVector force) {
    acc.add(force);
  }

  void update() {
    // x = x+random(-1,1);
    //y = y+random(-1,1);

    vel.add(acc);
    
    PVector r= PVector.random2D();
    r.mult(0.75);
    vel.add(r);
    
    loc.add(vel);
    acc.mult(0);
    
    if (loc.x <= 0){
      loc.x =  width;
  }
     if (loc.x >= width){
      loc.x =  0;
         
         if (loc.y <= 0){
      loc.y =  height;
  }
  if (loc.y >= height){
      loc.y =  0;
  }
  
  }
  }
  

  void display() {
   // fill(r, g, b);
   color c = img.get(int(loc.x), int(loc.y));
   fill(c);
    noStroke();
    ellipse(loc.x, loc.y, 10, 10);
  }
}