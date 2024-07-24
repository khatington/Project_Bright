class Ball{
  //1. variables or fields 
  float x;
  float y;
  float diamater;
  
  
  //2. contstructor --NO RETURN TYPE 
  Ball(){
    x = random(width);
    y = random(height);
    diamater = 30;
  }
  
  
  //3. Methods 
  void display(){ //shows the ball 
  circle(x,y,diamater);
  }
}
