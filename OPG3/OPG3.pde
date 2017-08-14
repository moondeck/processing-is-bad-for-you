/*
 *  Programmering C, Opgave 3 - 2017 Olgierd Nowakowski
 *  WTFPL License
 */

//no structs or defines in processing smfh

float coordx = 20;
float coordy = 20;
float elwidth = 15;
float ellength = 15;

int seconds = 0;
int last_millis = millis();

void setup() {
  size(1280, 720);
  frameRate(30);
  background(0xc0c0c0);
}

void draw() {
   if(millis() - last_millis > 1000) {
     print(millis());
     if(seconds == 60) { seconds = 0; background(0xc0c0c0); coordx = 20; } 
     ellipse(coordx, coordy, elwidth, ellength);
     coordx += (elwidth + 5);
     seconds++;
     print("ms \nprogram has been running for ");
     print(seconds);
     print(" seconds\n");
     last_millis = millis();
   }
}