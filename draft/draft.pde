final int WIDTH = 500;
final int HEIGHT = 500;
final int BLOCKX = WIDTH / 8;
final int BLOCKY = HEIGHT / 8;
int white = 0;
int black = 255;
 

 public void settings() {
  size(500, 500);
}
void setup() {
  noLoop(); 
}
 
void draw() {
  for (int i = 0; i < 8; i ++) {
    for (int j = 0; j < 8; j ++) {
      if ((i + j + 1) % 2 == 0) {
        fill(black-10); // white
      } else {
        fill(white+10); // black
      }
      rect(i * BLOCKX, j * BLOCKY, (i + 1) * BLOCKX, (j + 1) * BLOCKY);     
    } 
  }
}