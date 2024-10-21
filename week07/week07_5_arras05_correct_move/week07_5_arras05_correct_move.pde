//week07_5_arras05_correct move
void setup() {
  size(500, 400);
}
void keyPressed() {
  if (keyCode==RIGHT)x+=1;
  if (keyCode==LEFT)x-=1;
  if (keyCode==UP)y-=1;
  if (keyCode==DOWN)y+=1;
}
float x=250, y=200;
void draw() {
  ///background(215, 184, 200);
  ///stroke(211,180,196);
  background(219);
  translate(-x, -y);
  translate(width/2, height/2);//把0,0移畫面中心
  float mx=mouseX+x-width/2, my=mouseY+y-height/2;
  ellipse(mx, my, 8, 8);
  stroke(210);
  strokeWeight(1);
  for (int i=0; i<10; i++) {
    line(0, i*100, 500, i*30);
    line(i*30, 0, i*30, 500);
  }
  float dx=mx-x, dy=my-y;
  float a=atan2(dy, dx);
  line(x, y, mx, my);
  myTank(x, y, a);
}
void myTank(float x, float y, float a) {
  translate(x, y);
  rotate(a);//旋轉
  fill(167, 167, 175);
  stroke(110, 110, 113);
  strokeWeight(4);
  rect(20, -10, 20, 20);//砲管,砲塔

  fill(204, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(3);
  ellipse(0, 0, 55, 55);//圓形的身體
}
