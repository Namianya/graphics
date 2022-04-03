boolean button = false;
boolean button1 = false;
boolean button2 = false;
boolean button3 = false;
int x = 50;
int y = 50;
int h = 75;
int w = 100;
void setup() {
    size(202,202);
}

void draw() {
    
    stroke(255);
    if (button) {
        fill(255);
        
        stroke(0);
    }
    else {
        fill(0);
        stroke(0);
        
    }
    
    rect(0, 0, w, h);
    
    stroke(255);
    if (button1) {
        fill(255);
        
        stroke(0);
    }
    else {
        fill(0);
        stroke(0);
        
    }
    
    rect(102, 0, w, h);
    stroke(255);
    if (button2) {
        fill(255);
        
        stroke(0);
    }
    else {
        fill(0);
        stroke(0);
        
    }
    
    rect(0, 77, w, h);
    stroke(255);
    if (button3) {
        fill(255);
        
        stroke(0);
    }
    else {
        fill(0);
        stroke(0);
        
    }
    
    rect(102, 77, w, h);
    
}
// void mousePressed() {
//     if (mouseX > 0 && mouseX < 0 + w && mouseY > 0 &&  mouseY < 0 + h) {
//         button =button;
//     } 

//     if (mouseX > 102 && mouseX < 102 + w && mouseY > 0 &&  mouseY < 0 + h) {
//         button1 =button1;
//     } 
// }


void mouseMoved() {
    if (mouseX > 0 && mouseX < 0 + w && mouseY > 0 &&  mouseY < 0 + h) {
        button = true;
        button1 = false;
        button2 = false;
        button3 = false;
    } 
    else if (mouseX > 102 && mouseX < 102 + w && mouseY > 0 &&  mouseY < 0 + h) {
        button = false;
        button1 = true;
        button2 = false;
        button3 = false;
    } else if (mouseX > 102 && mouseX < 102 + w && mouseY > 77 &&  mouseY < 77 + h) {
        button = false;
        button1 = false;
        button2 = false;
        button3 = true;
    }
    else if (mouseX > 0 && mouseX < 0 + w && mouseY > 77 &&  mouseY < 77 + h) {
        button = false;
        button1 = false;
        button2 = true;
        button3 = false;
    }
    else {
        button = false;
        button1 = false;
        button2 = false;
        button3 = false;
    }
}
