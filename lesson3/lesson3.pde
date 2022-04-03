void setup() {
    size(200, 200);
    for (int i = 0; i < Stripes.length; ++i) {
        Stripes[i] = new Stripe(i);
        draw();
    }
}

void draw() {
    background(100);
    for (int i = 0; i < Stripes.length; ++i) {
        Stripes[i].rollover();
        Stripes[i].move();
        Stripes[i].display();
    }
}

Class Stripes{
    float x;
    float w;
    float speed;
    boolean mouse;
    Stripe(){
        x=0;
        speed = random(10,30);
        mouse=false;
    }
    void display(){
        if (mouse){
            fill(255,0,0);
        }
        else{
            fill(255,100);
        }
            
        noStroke();
        rect(x, 0, w, height);

    }
    void move(){
        x+=speed;
        if (x>width+20) {
            x=-20;
        }
        if (mx>&& mx < x+w) {
            mouse = true;

        }else{
            mouse = false;
        }
    }
}