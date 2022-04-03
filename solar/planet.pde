
class Planet {
    
    float theta;      // Rotation around sun
    float diameter;   // Size of planet
    float distance;   // Distance from sun
    float orbitspeed; // Orbit speed
    
    Planet(float distance_, float diameter_) {
        distance = distance_;
        diameter = diameter_;
        theta = 0;
        orbitspeed = random(0.01, 0.03);
}
    
    void update() {
      
        theta += orbitspeed;
}
    
    void display() {
       
        pushMatrix(); 
        rotate(theta); 
        translate(distance, 0); 
        stroke(0);
        fill(175);
        sphere(diameter/2);
        ellipse(0, 0, diameter, diameter);
        popMatrix();
}
}