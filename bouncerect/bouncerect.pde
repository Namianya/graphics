

int rad = 60;       
float xpos, ypos;     

float xspeed = 2.8;  
float yspeed = 2.2;  

int xdirection = 1; 
int ydirection = 1;  
int r = 255;
int g = 0;
int b = 0;


void setup() 
{
  size(640, 360);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
}

void draw() 
{
  background(255);
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width-rad || xpos < 0) {
    xdirection *= -1;
    fill(200,150,15);
  }
  if (ypos > height-rad || ypos < 0) {
    ydirection *= -1;
    fill(150,150,200);
  }
  rect(xpos, ypos, rad, rad);
}

mouseMoved() {
  if (mouseX > width/2) {
    xspeed = 2.8;
  } else {
    xspeed = -2.8;
  }
      
  }

