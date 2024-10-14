//week06_6_schulte_table06_int_want_if_table+i+j_want
int []used=new int [26];//0....25共26個
int [][]table=new int[5][5];//java的陣列宣告
void setup() {
  size(500, 500);
  textSize(50);
  textAlign(CENTER, CENTER);
  for (int i=0; i<5; i++) {//對y的座標
    for (int j=0; j<5; j++) {//x的座標
      int now=int (random(1, 26));
      while (used[now]==1)now=int(random(1, 26));
      table[i][j]=now;
      used[now]=1;
    }
  }
}
int [][]pressed=new int[5][5];
void draw() {
  for (int i=0; i<5; i++) {
    for (int j=0; j<5; j++) {
      if (pressed[i][j]==1)fill(128);
      else fill(255);
      rect(j*100, i*100, 100, 100);
      fill(0);
      text(""+table[i][j], 50+j*100, 50+i*100);
    }
  }
}
int want=1;
void mousePressed() {
  int i=mouseY/100, j=mouseX/100;
  if (table[i][j]==want) {
    pressed[i][j]=1;
    want++;
  }
}
