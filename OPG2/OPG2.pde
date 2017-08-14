/*
 *  Programmering C, Opgave 2 - 2017 Olgierd Nowakowski
 *  WTFPL License
 */

//no structs or defines in processing smfh

float coordx = 20;
float coordy = 20;
float elwidth = 20;
float ellength = 20;

int counter = 0;
char lincount = 0;

void setup() {
  size(1280, 720);
  background(0xc0c0c0); 
}

void draw() {
  while (lincount != 5) {

    while(counter != 30) {
      ellipse(coordx, coordy, elwidth, ellength);
      coordx += (elwidth + 5);
      counter++;
    }
    coordy += (ellength + 5);
    coordx = 20;
    counter = 0;
    lincount++;
    
  }
}