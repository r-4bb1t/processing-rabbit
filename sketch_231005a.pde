PFont font;
PImage rabbit; 
float rabbitX, rabbitY; 
float speedY = 2;
int size = 30;

void setup() {
  size(400, 200);
  background(255); 
  textSize(24);
  textAlign(CENTER, CENTER);
  font = createFont("bitbit.ttf", 64);
  textFont(font, 32);
  
  rabbit = loadImage("rabbit.png");
  rabbitX = -rabbit.width / 2;
  rabbitY = 10;
}


void draw() {
  background(255);
  
  image(rabbit, rabbitX, rabbitY, rabbit.width / 2, rabbit.height / 2);
  rabbitX += speedY;
  
  if (rabbitX > width) {
    rabbitX = -rabbit.width / 2;
  }
    
  fill(0); // 검은색으로 설정
  textSize(size);
  size += size / 30;
  if (size > 56) {
    size = 30;
  }
  text("안녕 나 토끼", width / 2, height / 2);
}
