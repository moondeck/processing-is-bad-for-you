/*
 *  Programmering C, Opgave 1 - 2017 Olgierd Nowakowski
 *  WTFPL License
 */

//no structs or defines in processing smfh

float coordx = 10;
float coordy = 10;
float rectwidth = 40;
float rectlength = 40;

int counter = 0;

void setup() {
  size(640, 320);
  background(0xc0c0c0); 
}

void draw() {
  
}

void mousePressed() {
  rect(coordx, coordy, rectwidth, rectlength);
  if(counter >= 10) {
    counter = 0;
    coordx = 10;
    coordy = 10;
    background(0xc0c0c0); 
  } else {
    counter++;
    coordx += (rectwidth + 20);
  }
}