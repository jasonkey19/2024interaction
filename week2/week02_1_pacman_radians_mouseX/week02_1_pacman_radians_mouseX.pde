//week02_1_pacman_radians_mouseX
void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  fill(#FFDC0F);//填充黃色
  float a=radians(mouseX);
  for (int x=0; x<400; x+=100) {
    for (int y=0; y<400; y+=100) {
      arc(x+50, y+50, 100, 100, 0+a, PI*2-a, PIE);//改劃弧度
      //X座標,Y,   寬,   高,   開始,   結束,    畫畫蘋果派的方法畫
    }
  }
}
