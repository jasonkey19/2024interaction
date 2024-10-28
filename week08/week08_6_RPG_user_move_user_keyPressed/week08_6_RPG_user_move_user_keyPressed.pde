//week08_6_RPG_user_move_user_keyPressed
int [][]floor={
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5}, //20numbers
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5}, //20numbers
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, //20numbers
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 13, 3, 20, 3, 20, 9, 5, 5, 5, 9, 2, 1, 5}, 
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
  {4, 1, 1, 1, 5, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5},
};
PImage img, user;
PImage[]fimg=new PImage[40];
void setup() {
  size(640, 480);//15格=480,480/15=32小圖
  img=loadImage("640x480.png");
  user=loadImage("14.png");
  for (int i=1; i<21; i++)fimg[i]=loadImage(i+".png");
}
int userI=14, userJ=10;
void draw() {
  //background(img);
  for (int i=0; i<floor.length; i++) {//高度480對應y座標
    for (int j=0; j<20; j++) {//寬度640對應x座標
      int now=floor[i][j];
      image(fimg[now], j*32, i*32);
    }
  }
  image(user, userJ*32, userI*32);
}
void keyPressed() {
  int newI=userI, newJ=userJ;
  if (keyCode==RIGHT)newJ++;
  if (keyCode==LEFT)newJ--;
  if (keyCode==UP)newI--;
  if (keyCode==DOWN)newI++;
  if (floor[newI][newJ]!=1&&floor[newI][newJ]!=3) {
    userI=newI;
    userJ=newJ;
  }
}
