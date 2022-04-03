Planet[] planets = new Planet[7];

void setup() {
    size(700, 700);
    for (int i = 0; i < planets.length; i++) {
        planets[i] = new Planet(64 + i * 32,24);
}
}

void draw() {
    background(255);
    
    pushMatrix();
    translate(width / 2,height / 2);
    stroke(0);
    fill(255);
    ellipse(0,0,64,64);
    
    //Drawing all Planets
    for (int i = 0; i < planets.length; i++) {
        planets[i].update();
        planets[i].display();
}
    popMatrix();
}


