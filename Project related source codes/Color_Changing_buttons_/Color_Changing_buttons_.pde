//https://discourse.processing.org/t/change-color-with-click-or-touch/31295/6
class ColorRect {
 
  int c1x, c1y;
  int c2x, c2y;
  color col;
  boolean active;
  
  ColorRect(int x1, int y1, int x2, int y2, color c) {
    this.c1x = x1;
    this.c1y = y1;
    this.c2x = x2;
    this.c2y = y2;
    this.col = c;
    this.active = false;
  }
  
  boolean isHit(int x, int y) {
    if(c1x <= x && x <= c2x && c1y <= y && y <= c2y) {
      println("something hit me!");
      active = !active;
      return true;
    }
    else {
      return false;
    }
  }
  
  void display() {
    if(active) {
      fill(200,0,0);
    }
    else {
      fill(col);
    }
    rect(c1x, c1y, c2x-c1x, c2y-c1y);
  }
  
}

ArrayList<ColorRect> rects = new ArrayList<ColorRect>();

void setup() {
  size(800,800);
  
  ColorRect r1 = new ColorRect(10,10,150,150,color(0,200,0));
  ColorRect r2 = new ColorRect(160,160,210,210,color(0,0,200));
  
  rects.add(r2);
  rects.add(r1);
  
}

void draw() {
  for( ColorRect r : rects) {
    r.display();
  }
}

void mouseClicked() {
  for( ColorRect r : rects) {
    r.isHit(mouseX, mouseY);
  }
}
