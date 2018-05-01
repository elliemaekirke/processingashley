
ArrayList <Particle> minions;

void setup(){
  size(800,600);
  background(0);
  minions = new ArrayList<Particle>();
}

void draw(){
 
for (Particle p: minions) {
  p.update(); //run the update
  p.display(); 
}

}

void keyPressed(){
  saveFrame("image-###.jpg");
}

void mousePressed(){
  Particle bob = new Particle(mouseX,mouseY);
  minions .add(bob);
  
}