//https://discourse.processing.org/t/change-color-with-click-or-touch/31295/2
int color1 = 255;
int color2 = 255;
int color3 = 255;
int color4 = 255;

void setup() {
  size(400,400);
  background(255);
}

void draw(){
  println(mouseX + " : " + mouseY);
  fill(color1);
  stroke(0);
  rect(width/2,height/2,100,50);
  fill(color2);
  rect(60,20,40,40);
  fill(color3);
  rect(100,20,40,40);
  fill(color4);
  rect(140,20,40,40);
}

void mousePressed() {
  if(color1 == 255 && isMouseOver(width/2,height/2,100,50) == true) {
    color1 = color(255,0,0);
  } else {
    color1 = 255; //combined code from example on buttons and it also works 
   }
  if(color2 == 255 && mouseX>60 && mouseY>20 && mouseX<20+80 && mouseY<20+40) {
    color2 = color(0,0,255);
  } else {
    color2 = 255;
  }
  if(color3 == 255 && mouseX>100 && mouseY>20 && mouseX<20+120 && mouseY<20+40) {
    color3 = color(0,255,255);
  } else {
    color3 = 255;
  }
  if(color4 == 255 && mouseX>140 && mouseY>20 && mouseX<20+160 && mouseY<20+40) {
    color4 = color(0,255,0);
  } else {
    color4 = 255;
  }
}

boolean isMouseOver(int x, int y, int w, int h){
  if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
    return  true;
  }
  return false;
}
