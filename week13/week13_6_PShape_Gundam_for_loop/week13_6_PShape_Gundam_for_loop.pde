//week13_6_PShape_Gundam_for_loop
PShape gundam;
void setup(){
  size(500,500,P3D);
  gundam=loadShape("Gundam.obj");
}
void draw(){
  background(#BBFF81);
 drawGundam(mouseX,mouseY);
 for(int x=0;x<=500;x+=500/5){
   drawGundam(x,300);
 }
} 
void drawGundam(int x,int y){
  pushMatrix();
  translate(x,y);
  rotateY(radians(frameCount));
  rotate(radians(180));
  scale(10,10,10);
   shape(gundam,0,0);//shape(gundam,0,0,500,500);
  popMatrix();
} 
