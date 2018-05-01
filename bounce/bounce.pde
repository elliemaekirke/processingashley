//Basic
 
void setup() { 
  //Below shows the size of the screen 
  size(400, 400); 
  //This is to make a random background colour 
  //HSB means Hue, Saturation, Brightness
 
  background(random(1, 255), 1, random(1, 200)); 
  noFill(); 
  colorMode(HSB);
} // func 
 
//Ball // initial position for our circle 
float circle_x = 650; 
float circle_y = 300; // how much to move the circle on each frame 
// if you look at the float below, and you put the answer as a negative number, 
// it will move to the left instead of the right. 
float move_x = 2.5; 
float move_y = 1.5;
 
void draw() { 
 
  background(110);
 
  // display it 
  ellipse(circle_x, circle_y, 40, 40);
 
  // move it  
  circle_x = circle_x + move_x; 
  circle_y = circle_y + move_y;
 
 
  // make sure the ball does not go out of the screen on the right
  if (circle_x > width) { 
    circle_x = 0;
  }
 
  if (circle_y > height) { 
    circle_y = 0;
  }
 
  // make sure the ball does not go out of the screen on the left
  if (circle_x < 0) { 
    circle_x = width;
  }
 
  if (circle_y < 0) { 
    circle_y = height;
  }
} // func 
//