//week09_8_keyboard_ninja4_start3 2 1 go
PImage board;
void setup() {
  size(600, 400);
  board=loadImage("board.png");
  randomApple();
}
float appleX=100, appleY=500, appleVX=3, appleVY=-30;
char appleKey;
void randomApple() {
  appleX=random(100, 500);
  appleY=500;
  if (appleX<300)appleVX=random(0, 8);
  else appleVX=random(-8, 0);
  appleVY=random(-30, 25);
  appleKey=(char)('a'+int(random(26)));
}
int score=0;
void keyPressed() {
  if (state==0)state=1;//按任意鍵
  if (state==2) {
    if (key==appleKey) {
      score+=100;
    } else {
      score-=20;
    }
  }
}
int state=0;//0:wait,1:3,2,1,go,2:Game
int countdown=60*3;//倒數計時3秒
void draw() {
  background(board);//使用變數
  textSize(50);
  textAlign(CENTER, CENTER);
  fill(255, 255, 0);
  if (state==0)text("Press Any Key to start", 300, 200);
  else if (state==1) {
    textSize(100);
    countdown--;
    if (countdown>60*2)text("3", 300, 200);
    else if (countdown>60*1)text("2", 300, 200);
    else if (countdown>0)text("1", 300, 200);
    else state=2;
  } else {
    text("Score:"+score, 400, 50);
    fill(255, 0, 0);
    ellipse(appleX, appleY, 80, 80);
    fill(255, 255, 0);
    textSize(50);
    textAlign(CENTER, CENTER);
    text(appleKey, appleX, appleY);
    appleX+=appleVX;
    appleY+=appleVY;
    appleVY+=0.98;
    if (appleX>600||appleX<0||appleY>550) {
      randomApple();
    }
  }
}
