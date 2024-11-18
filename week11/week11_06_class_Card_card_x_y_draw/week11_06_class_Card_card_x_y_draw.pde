//week11_06_class_Card_card_x_y_draw
class Card{//發明一種類別class較大寫的卡片
  int x,y;
  Card(int _x,int _y){//建構函數
    x= _x; y= _y;
  }
  void draw(){
    rect(x,y,100,150);
  }
}//下面照著卡片類別,發明一個物件card1
Card card1=new Card(100,100);//座標在100,100
void setup(){
  size(500,400);
}
void draw(){
  card1.draw();
}  
