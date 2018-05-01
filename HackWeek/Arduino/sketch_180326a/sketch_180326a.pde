import processing.serial.*;

boolean takePic = false;

import processing.video.*;

Capture vid;


// 1026mapa
// ashley james brown
// multipel sensors from arduino parsed in processing and used

boolean part1 = false;
boolean part2 = false;
boolean part3 = false;

float sensor1 = 0;
float sensor2 = 0;
float sensor3 = 0;

void setup() {
  size(800, 600);
  background(0);
  setupSerial();

  String[] cameras = Capture.list();
  printArray(cameras);

  //    new camera this, width, height, framerate
  vid = new Capture(this, 720, 560, 30);
  vid.start();
}

void draw() {
  background(0);
  if (part1 && part2 && part3) {
    image(vid, 0, 0);
    takePic=true;
  }
  if (takePic){
    saveFrame("../puzzleFace.jpg");
    exit();
  }
  
  //fill(255, 0, 0);
  //ellipse( width*0.3, height/2, sensor1, sensor1);

  //fill (0, 0, 255);
  //ellipse( width*0.5, height/2, sensor2, sensor2);

  //fill (0, 0, 255);
  //ellipse( width*0.7, height/2, sensor3, sensor3);

  println(part1);
  println(part2);
  println(part3);
}



Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port


void setupSerial() {
  printArray(Serial.list());

  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);  //115200
  println("connected to -->  " +portName);
  myPort.bufferUntil(','); //enables to split the data via a comma which is set in teh arduino code
}




void serialEvent(Serial myPort) {

  String inString = myPort.readStringUntil(',');
  // split the string into multiple strings
  // where there is a delimter":"

  // println(inString); //data line coming in

  String items[] = split(inString, ':');
  // if there was more than one string after the split
  if (items.length > 1) {
    String label = trim(items[0]);
    // remove the ',' off the end
    String val = split(items[1], ',')[0];

    // check what the label was and update the appropriate variable
    if (label.equals("S1")) {
      println("looks like sensor 1 was   "+val);
      sensor1 = float(val);
      if (sensor1 <10) {
        part1=true;
      } else 
      {
        part1=false;
      }
    } 
    // check what the label was and update the appropriate variable
    if (label.equals("S2")) {
      println("looks like sensor 2 was   "+val);
      sensor2 = float(val);
      if (sensor2 <10) {
        part2=true;
      } else 
      {
        part2=false;
      }
    } 
    // check what the label was and update the appropriate variable
    if (label.equals("S3")) {
      println("looks like sensor 3 was   "+val);
      sensor3 = float(val);
      if (sensor3 <10) {
        part3=true;
      } else 
      {
        part3=false;
      }
    } 

    // more if statements for more possible data streams
  }
}
void captureEvent(Capture vid) {
  vid.read();
}