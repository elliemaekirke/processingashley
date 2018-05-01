PImage img;


ArrayList <Particle> minions;

void setup(){
  size(800,600);
  background(0);
  minions = new ArrayList<Particle>();
  
  img = loadImage("chink.jpeg");
}

void draw(){
background(0);

//image(img,0,0);
 
for (Particle p: minions) {
  p.update(); //run the update
  p.display(); 
}

}

void keyPressed(){
  saveFrame("image-###.jpg");
}

void mousePressed() {
  
  for (int i=0; i <1000; i++){
  Particle bob = new Particle(mouseX,mouseY);
  minions .add(bob);
  }
}