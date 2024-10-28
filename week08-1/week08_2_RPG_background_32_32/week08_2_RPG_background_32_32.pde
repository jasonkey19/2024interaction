//week08_2_RPG_background_32_32
PImage img;
void setup() {
  size(640, 480);//15格=480,480/15=32小圖
  img=loadImage("640x480.jpg");
}
void draw() {
  background(img);
  for (int i=0; i<20; i++) {//高度480對應y座標
    for (int j=0; j<15; j++) {//寬度640對應x座標
      noFill();
      rect(j*32, i*32, 32, 32);//小格子的大小是32x32
    }
  }
}
