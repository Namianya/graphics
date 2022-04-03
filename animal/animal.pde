
float zoosx,zoosy,eyeR,eyeG,eyeB;
void setup() {
    size(200,200);
    zoosx = width / 2;
    zoosy = height + 100;
    smooth(); 
}
void draw() {
    background(255);
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(150);
    rect(zoosx, zoosy, -30, 60,60);
    eyeR = random(255);
    eyeG = random(255);
    eyeB = random(255);
    random(255);
    fill(eyeR, eyeG, eyeB);
    ellipse(zoosx - 19,zoosy - 30,16,32);
    ellipse(zoosx + 19,zoosy - 30,16,32);
    stroke(150);
    line(zoosx - 10, zoosy + 50, zoosx - 10, height);
    line(zoosx + 10, zoosy + 50, zoosx + 10, height);
    zoosy = zoosy - 1;
}
