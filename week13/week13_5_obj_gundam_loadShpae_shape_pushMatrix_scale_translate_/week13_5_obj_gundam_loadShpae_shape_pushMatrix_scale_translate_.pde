//week13_5_obj_gundam_loadShpae_shape_pushMatrix_scale_translate_rotate_popMatrix
PShape gundam;
void setup(){
  size(500,500,P3D);
  gundam=loadShape("Gundam.obj");
}
void draw(){
  background(#BBFF81);
  pushMatrix();
  translate(mouseX,mouseY);
  rotateY(radians(frameCount));
  rotate(radians(180));
  scale(5,5,5);
   shape(gundam,0,0);//shape(gundam,0,0,500,500);
  popMatrix();
} 
