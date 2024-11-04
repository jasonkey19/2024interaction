//week09_03_processing_sound聲音相關 使用音樂相關的library函式庫
import processing.sound.*;
SoundFile sound;

void setup() {
  size(500, 500);
  sound=new SoundFile(this, "In Game Music.mp3");
  sound.play();//播放1次
  sound.loop();
}
void draw() {
}
