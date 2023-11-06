//Source code came from this video here, helped me understood the code
//https://www.youtube.com/watch?v=esKLU3dJo70
class Grid{
  //1. vars 
  float x = 0;
  float y = 0;
  
  //2. display
  void display(){
    stroke(255); //white stroke
    strokeWeight(0.5); //size of lines
     x = 50;
     //while x is less than the width
    while(x< width)
    {
      //draw a vertical across the screen at every 50th point
      line(x,0,x,height); 
      x =x + 50;
    } 
    y = 50;
    //while y is less than height
    while(y< height)
    {
      //draw a horizontal line across the screen at every 50th point 
      line(0,y,width,y);
      y =y + 50;
    }
  }  
}
