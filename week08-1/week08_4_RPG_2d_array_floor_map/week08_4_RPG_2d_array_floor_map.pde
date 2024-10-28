//week08_4_RPG_2d_array_floor_map
int [][]floor={
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5}, //20numbers
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5}, //20numbers
  {4, 1, 1, 1, 5, 4, 1, 19, 3, 20, 3, 20, 9, 2, 2, 2, 9, 2, 16, 5}, //20numbers
};
PImage img;
PImage[]fimg=new PImage[40];
void setup() {
  size(640, 480);//15格=480,480/15=32小圖
  img=loadImage("640x480.png");
  for (int i=1; i<21; i++)fimg[i]=loadImage(i+".png");
}
void draw() {
  //background(img);
  for (int i=0; i<3; i++) {//高度480對應y座標
    for (int j=0; j<20; j++) {//寬度640對應x座標
      int now=floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
}
