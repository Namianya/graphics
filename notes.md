# Functions

* we will bw writing  and this alarge aamout of code can prove to be

* fuctions are a means of taking the parts of our programme and separating them out into modular pieses making the code easire to read

`` importance of fuctions ``

* they defind modularity
* they break down a larf program making code more manageble and readable once you have figgured how to draw a spreeed sheet you can use a fuction to call o\apon it
* reusability. thet allow us to reuse code without retyping

## Write out an idea of a project you want to create. Keep it simple, just not too simple. A few ellents will do

## Come up with a game

### develop a programme with the cicle controle by a mouse this circe will be the user controled rain cacher

* write a programme to test if 2 circles intersect this will be used to determin  if the rain cacher has cought a raindrp

* writ a programm that executes a fuction every 10 secs
* writ a programme with the circles falling from the top of the screen to the bottom this will be the rain drops

### Algorithm

* # Create the Catcher Class

 start by deining the radius of the circle that will be around the cousor

create a fuction that changes the location of the cacher by setting it to be equal to the position of the cusour

Create a fuction that will draw the catcher to the canvas

```java
class Catcher {
  float r;   // radius
  float x,y; // location
  
  Catcher(float tempR) {
    r = tempR;
    x = 0;
    y = 0;
  }
  
  void setLocation(float tempX, float tempY) {
    x = tempX;
    y = tempY;
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(x,y,r*2,r*2);
  }

}
    
```

* # Create the Timer

create the timer class

define the starting time

Define the time interval

create fuction to start the timer

create a function that returns a boolean. If the time interval has elapese return false

```java

class Timer {

  int savedTime; // When Timer started
  int totalTime; // How long Timer should last

  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }

  // Starting the timer
  void start() {
    // When the timer starts it stores the current time in milliseconds.
    savedTime = millis();
  }

  // The function isFinished() returns true if 5,000 ms have passed. 
  // The work of the timer is farmed out to this method.
  boolean isFinished() { 
    // Check how much time has passed
    int passedTime = millis()- savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}
```
* # Create the drop
Create a drops class

define the speed, color and size of the drop

deffine the position of the drop

deffine the function  

```java
class Drop {
  float x, y;   // Variables for location of raindrop
  float speed;  // Speed of raindrop
  color c;
  float r;      // Radius of raindrop

  Drop() {
    r = 8;                   // All raindrops are the same size
    x = random(width);       // Start with a random x location
    y = -r*4;                // Start a little above the window
    speed = random(1, 5);    // Pick a random speed
    c = color(50, 100, 150); // Color
  }

  // Move the raindrop down
  void move() {
    // Increment by speed
    y += speed;
  }

  // Check if it hits the bottom
  boolean reachedBottom() {
    // If we go a little beyond the bottom
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  // Display the raindrop
  void display() {
    // Display the drop
    fill(c);
    noStroke();
    for (int i = 2; i < r; i++ ) {
      ellipse(x, y + i*4, i*2, i*2);
    }
  }

  // If the drop is caught
  void caught() {
    // Stop it from moving by setting speed equal to zero
    speed = 0; 
    // Set the location to somewhere way off-screen
    y = -1000;
  }
}
```

* # Create the setup fuction
```java
Catcher catcher;    // One catcher object
Timer timer;        // One timer object
Drop[] drops;       // An array of drop objects
int totalDrops = 0; // totalDrops

void setup() {
  size(480, 270);
  catcher = new Catcher(32); // Create the catcher with a radius of 32
  drops = new Drop[1000];    // Create 1000 spots in the array
  timer = new Timer(300);    // Create a timer that goes off every 300 milliseconds
  timer.start();             // Starting the timer
}

void draw() {
  background(255);

  // Set catcher location
  catcher.setLocation(mouseX, mouseY); 
  // Display the catcher
  catcher.display(); 

  // Check the timer
  if (timer.isFinished()) {
    // Deal with raindrops
    // Initialize one drop
    drops[totalDrops] = new Drop();
    // Increment totalDrops
    totalDrops ++ ;
    // If we hit the end of the array
    if (totalDrops >= drops.length) {
      totalDrops = 0; // Start over
    }
    timer.start();
  }

  // Move and display all drops
  for (int i = 0; i < totalDrops; i++ ) {
    drops[i].move();
    drops[i].display();
    if (catcher.intersect(drops[i])) {
      drops[i].caught();
    }
  }
}
```