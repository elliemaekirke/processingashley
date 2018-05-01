//class structure
class Particle {
  float x;
  float y;
  float r,g,b;
  //construction function
  Particle(float px, float py) {
    x=px;
    y=py;
  }


  void update() {
    x = x+random(-1,1);
    y = y+random(-1,1);
    r = random(255);
    g = random(255);
    b = random(255);
  }

  void display() {
    fill(r,g,b);
    ellipse(x, y, 10, 10);
  }
}