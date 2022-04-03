class Car{
    color c;
    float xpas;
    float ypas;
    float speed;
    Car(color tempC, float tempx, float tempy, float tempspeed);
    c=tempC;
    xpas = tempx;
    ypas = tempy;
    speed = tempspeed;
}

Car myCar1;
Car myCar2;

void setup() {
    myCar1 = new Car(color(255,0,0),0,100,2);
    myCar2 = new Car(color(0,0,0,255),0,10,1);

}

void draw() {
    background(255);
    myCar1.move();
    myCar1.dispaly();
    myCar2.move();
    myCar2.dispaly();
}
