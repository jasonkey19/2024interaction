//week04_2_pushMatrix_scale_popMatrix
//google :taiwan svh 下載svg檔(檔案總管-檢視-附檔名)
size(500, 500);
PShape taiwan=loadShape("Taiwan-icon.svg");
PShape taiwan2=loadShape("tw.svg");
pushMatrix();
  scale(10);
  shape(taiwan);
popMatrix();
pushMatrix();
  scale(0.5);
  shape(taiwan2);
popMatrix();
