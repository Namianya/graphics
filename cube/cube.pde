void setup() {
    size(800, 600, P3D);
}

void draw() {
    
    
    background(0);
    translate(width / 2, height / 2, 0);
    lights();
    noStroke();
    fill(50);
    
    rotateX(frameCount * 0.01);
    rotateY(frameCount * 0.01);

    
    noStroke();
    fill(100, 200, 150);
    box(80);
}