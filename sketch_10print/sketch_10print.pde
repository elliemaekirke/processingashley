float x = 0;
float y = 0;
float spacing = 50;


void setup() {
  //size of the canvas
  size(800, 800);
  //color of the background
  background(6, 59, 55);
}

void draw() {
  //draws a line within the grid with probabilty three choice
  if (random(1) < 0.5 ) {
    stroke(255);
    line( x, y, x + spacing, y +spacing);
    //draws line the opposite way
  } else if (random(1) >0.0 && random(1) <0.4) {
    line ( x+ spacing, y, x, y + spacing);
  } else {
    noStroke();
    fill(x, y, 220);
    triangle (x, y, x+ spacing, y, x, y+ spacing);
    //line ( x+ spacing, y, x,  y + spacing); 
    //draws across increasing spacing
  }
  x+=spacing;

  //rule3 move down a row
  if (x > width) {
    y += spacing;
    x = 0;
  }
}


void keyPressed() {
  saveFrame("10print-###.jpg");
}