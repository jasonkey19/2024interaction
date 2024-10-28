//week08_3_RPG_PLmage_cerateImage_copy_save
PImage img;
void setup() {
  size(640, 480);//15格=480,480/15=32小圖
  img=loadImage("640x480.png");
}
void draw() {
  background(img);
  for (int i=0; i<20; i++) {//高度480對應y座標
    for (int j=0; j<15; j++) {//寬度640對應x座標
      noFill();
      stroke(0);
      rect(j*32, i*32, 32, 32);//小格子的大小是32x32
    }
  }
  stroke(255,0,0);
  rect(J*32,I*32,32,32);
}
int I=-1,J=-1;
void mouseMoved(){//移動時,要修改I,J
  I=mouseY/32;//小心Y
  J=mouseX/32;//小心X
}
int N=1;
void mousePressed(){
  //PImage now=createImage(640,480,RGB);
  //now.copy(img,0,0,640,480,0,0,640,480);
  PImage now=createImage(32,32,RGB);
  now.copy(img,J*32,I*32,32,32,0,0,32,32);
  now.save(N+".png");
  N++;
}  
