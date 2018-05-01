import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;        // Data send to the serial port

void setup() {
  size(400, 200);

  printArray(Serial.list());// prints all connected serial devices.
  //check the list and select teh arduino
  String portName = Serial.list()[3]; // whatevr the number
  myPort = new Serial(this, portName, 9600); //set the serial rate

  fill(255, 0, 0);
}

void draw() {
  background(255);
  rect(50, 50, 100, 100);
}


void mousePressed() {
  fill(0, 255, 0);                  
  myPort.write('C'); //c for cov
  println('c');
}

void mouseReleased() {
  fill(255, 0, 0);                     
  myPort.write('N'); //for no
}