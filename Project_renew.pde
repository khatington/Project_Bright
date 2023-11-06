//only the dining, kitchen, living and garage work
//boundaries learnt from https://happycoding.io/tutorials/processing/collision-detection
//some codes such as PImage and PFont learnt from https://processing.org/
//Timer was implemented from source code in https://openprocessing.org/sketch/1287142
//I wasn't able to make my code elegant enough

//CLASS AND FONTS
Grid grid;
PFont font, font1;
PImage img;

//vars used to move the whole object
int x = 30; 
int y =75;

//change at what time does the bulb pop up 
int pop = 10; //bulb pops up for every x seconds
int value = 10; //bulb will only pop after the first x seconds

//BOOLEAN FOR LIGHTS
boolean light = false;
boolean kitchenL = false;
boolean livingL = false;
boolean diningL = false;

//BOOLEAN FOR TIMERS 
boolean timer = false;
boolean timerK = false;
boolean timerL = false;
boolean timerD = false;

//GARAGE VARS
int millisecs;
int seconds; 
int minutes; 

// KITCHEN VARS 
int millisecsK;
int secondsK; 
int minutesK; 

// LIVING ROOM VARS 
int millisecsL;
int secondsL; 
int minutesL; 

//TOILET VARS
int millisecsT;
int secondsT; 
int minutesT; 

//DINING VARS 
int millisecsD;
int secondsD; 
int minutesD; 


void setup()
{
  //declaring size of area/setup
  size(1000,700);
  //declaring class 
  grid = new Grid();
  //loading images and fonts 
  img = loadImage("bulb.png");
  img.resize(100,100);
  font = loadFont("MVBoli-48.vlw");
  font1 = loadFont("SegoeScript-Bold-48.vlw");
}



void draw()
{
  background(#3677B7); //blue background color
  noFill(); //for every object to be transparent
  stroke(255); //white outline
  strokeWeight(2); //weigth of outline
  rect(530-x, 235+y, 250, 240); //garage
  rect(530-x,75+y, 250, 160); //Kitchen
  rect(280-x,235+y,250,240); //living room 
  rect(280-x,75+y, 250,160); //dining room 
  rect(280-x, 235+y,120,90); //toilet
  
 //COLOUOR CHANGE FEATURE WHEN LIGHTS ARE ON**************************************
  //FOR GARAGE
  if(light)
  {
    //if light is on, fill with color
    fill(#F5D845, 150); //orange shade, opacity
    //x, y, length. width, 
   rect(530-x, 235+y, 250, 240); //garage
  }
  //if light isnt on, don't fill any color 
  else
  {
    noFill();
  }
  
  
  //FOR KTICHEN
  if(kitchenL)
  {
    fill(#CE9219, 150); //yellow shade, opacity
    rect(530-x,75+y, 250, 160); //kitchen
    
  }
  else
  {
    noFill();
  }
  
  
  //FOR LIVING ROOM
  if(livingL)
  {
    fill(#CECE19, 150); //dark yellow, opacity
    noStroke();
    rect(400-x, 235+y, 130, 90);
    rect(280-x,325+y, 250,150);
    noFill();
    rect(280-x,235+y,250,240); //living room 
  }
  else
  {
    noFill();
  }
  
  
    //FOR DINING
  if(diningL)
  {
    fill(#F07D11, 150); //dark orange, opacity
    rect(280-x,75+y, 250,160); //dining room 
    
  }
  else
  {
    noFill();
  }
  
   //TIMERS FOR EACH ROOM**************************************
   //GARAGE 
   //if timer is on, start calculations of milisecs, seconds and minutes
   if(timer == true) 
 {
   //calulate the millisecs and add each times
   if(int(millis()/100) % 10 != millisecs)
  {
    millisecs++;
  }
  //when mills is bigger than 10
  if(millisecs >= 10)
  {
    //reset mills and add 1 to seconds each time
    millisecs -= 10;
    seconds++;
  }
  //if seconds is bigger than 60 
  if(seconds >= 60)
  {
    //rest seconds and add 1 to minutes each time
    minutes++;
    seconds -=60;
  }
  //display of timer
      fill(255); //white
      textSize(20); // size of the time text 
      text(nf(minutes, 2) + ":" + nf(seconds,2) + "." + nf(millisecs, 1),625-x, 450+y);
 }
 //after x seconds passed, the next every x seconds bulb icon will appear
 if(seconds > value && seconds%pop== 0)
 {
   //a bulb icon appears every 10 seconds after the first 10 seconds have passed
   image(img, 670, 300);
 }
 
 
 //FOR KITCHEN
 if(timerK == true)
 {
    //calulate the millisecs and add each times
   if(int(millis()/100) % 10 != millisecsK)
  {
    millisecsK++;
  }
  //when mills is bigger than 10
  if(millisecsK >= 10)
  {
    //reset mills and add 1 to seconds each time
    millisecsK -= 10;
    secondsK++;
  }
  //if seconds is bigger than 60 
  if(secondsK >= 60)
  {
    //rest seconds and add 1 to minutes each time
    minutesK++;
    secondsK -=60;
  }
  fill(255); //white
  textSize(20); // size of the time text 
  text(nf(minutesK, 2) + ":" + nf(secondsK,2) + "." + nf(millisecsK, 1),625-x, 200+y);
 }
 if(secondsK > value && secondsK%pop== 0)
 {
   image(img, 670, 150);
 }
 
 
 //FOR LIVING ROOM
  if(timerL == true)
 {
    //calulate the millisecs and add each times
   if(int(millis()/100) % 10 != millisecsL)
  {
    millisecsL++;
  }
  //when mills is bigger than 10
  if(millisecsL >= 10)
  {
    //reset mills and add 1 to seconds each time
    millisecsL -= 10;
    secondsL++;
  }
  //if seconds is bigger than 60 
  if(secondsL >= 60)
  {
    //rest seconds and add 1 to minutes each time
    minutesL++;
    secondsL -=60;
  }
  fill(255); //white
  textSize(20); // size of the time text 
  text(nf(minutesL, 2) + ":" + nf(secondsL,2) + "." + nf(millisecsL, 1),370-x, 450+y);
 }
 if(secondsL > value && secondsL%pop == 0)
 {
   image(img, 420, 300);
 }
 
 
 //FOR DININIG ROOM
     if(timerD == true)
 {
    //calulate the millisecs and add each times
   if(int(millis()/100) % 10 != millisecsD)
  {
    millisecsD++;
  }
  //when mills is bigger than 10
  if(millisecsD >= 10)
  {
    //reset mills and add 1 to seconds each time
    millisecsD -= 10;
    secondsD++;
  }
  //if seconds is bigger than 60 
  if(secondsD >= 60)
  {
    //rest seconds and add 1 to minutes each time
    minutesD++;
    secondsD -=60;
  }
  fill(255); //white
  textSize(20); // size of the time text 
  text(nf(minutesD, 2) + ":" + nf(secondsD,2) + "." + nf(millisecsD, 1),370-x, 200+y);
 }
 if(secondsD > value && secondsD%pop == 0)
 {
   image(img, 250, 150);
 }
 
 
 //TEXT DISPLAYED**************************************
      fill(255); //white
      textFont(font1, 30); 
      text("Project \n    Bright", 765, 40); //logo at the side
      image(img, 900, 5); //bulb image
      textFont(font, 25); 
      //information that is displayed on the top left area
      text("Click any room (except the toilet)", 30,30);
      text("Color = Lights On", 30,60);
      text("No Color = Lights Off", 30,90);
      //information that is displayed on the bottom left area
      image(img, 0, 600); 
      text(" = Lights on for too long!!", 90, 650);
      textFont(font, 20);
      text("(Alert pop up)", 100, 680);
      //labels of each room
      text("GARAGE", 620-x, 360+y); 
      text("KITCHEN", 620-x, 160+y); 
      text("LIVING ROOM", 340-x, 400+y); 
      text("DINING", 370-x, 160+y); 
      textSize(15);
      text("TOILET", 320-x, 290+y); 
      
      //displaying class grid
      grid.display();
 
 
 //OBJECT HIGHLIGHTED GREY FEATURE********************************
  //1. GARAGE 
  //if mouse is in the region of the GARAGE BOX then..
   if(((mouseX > 530-x && mouseX < 530-x+250) && (mouseY > 235+y && mouseY < 235+y+240))) 
 {
   //fill the color with grey
   fill(200,100); //color, opacity 
 }
 //if not then don't fill any color
 else
 {
   noFill();
 }
 //redrawing the rectangle with the higlight everytime mouse is on object
rect(530-x, 235+y, 250, 240); //x, y, length. width, garage 


   //2. KITCHEN ROOM 
 if(((mouseX > 530-x && mouseX < 530-x+250) && (mouseY > 75+y && mouseY < 75+y+160))) 
 {
   fill(200,100); //color, opacity 
 } 
 else
 {
   noFill();
 }
 rect(530-x,75+y, 250, 160); 


   //3. LIVING ROOM 
 if(((mouseX > 280-x && mouseX < 280-x+250) && (mouseY > 235+y && mouseY < 235+y+240))) 
 {
   fill(200,100); //color, opacity 
 } 
 else
 {
   noFill();
 }
 //using two boxes to fill in the living eroom without having to fill the toilet area 
 noStroke();
 rect(400-x, 235+y, 130, 90);
 rect(280-x,325+y, 250,150);
 
    //4. DINING ROOM 
 if(((mouseX > 280-x && mouseX < 280-x+250) && (mouseY > 75+y && mouseY < 75+y+160)))
 {
   fill(200,100); //color, opacity 
 } 
 else
 {
   noFill();
 }
 stroke(255);
 rect(280-x,75+y, 250,160); //dining room 
 }


//CLICKED AT A CERTAIN REGION TO TRIGGER COLOR CHANGE 
void mouseClicked()
{
  //Clicked in region GARAGE 
  if((mouseX > 530-x && mouseX < 530-x+250) && (mouseY > 235+y && mouseY < 235+y+240))
  {
    //if lights are on, turn off lights 
    if(light)
    {
      light=false;
      millisecs = 0; //timer is reset back to 0 
      seconds = 0;
      minutes = 0;
      timer = false;
    }
    //if lights are off, turn lights are on
    else
    {
      light = true;
      timer = true;
    }
  }
  
  
    //Clicked in region KITCHEN 
  if((mouseX > 530-x && mouseX < 530-x+250) && (mouseY > 75+y && mouseY < 75+y+160))
  {
  //if lights are on, turn off lights 
    if(kitchenL)
    {
      kitchenL=false;
      millisecsK = 0;
      secondsK = 0;
      minutesK= 0;
      timerK = false;
    }
    //if lights are off, turn lights are on
    else
    {
      kitchenL = true;
      timerK = true;
    }
  } 
  
  
  //Clicked in region LIVING ROOM
  if(((mouseX > 280-x && mouseX < 280-x+250) && (mouseY > 235+y && mouseY < 235+y+240))) 
  {
  //if lights are on, turn off lights 
    if(livingL)
    {
      livingL=false;
      millisecsL = 0;
      secondsL = 0;
      minutesL = 0;
      timerL = false;
    }
    //if lights are off, turn lights are on
    else
    {
      livingL = true;
      timerL = true;
    }
  }
  
  
    //Clicked in region DINING ROOM
 if(((mouseX > 280-x && mouseX < 280-x+250) && (mouseY > 75+y && mouseY < 75+y+160)))
  {
  //if lights are on, turn off lights 
    if(diningL)
    {
      diningL=false;
      millisecsD = 0;
      secondsD = 0;
      minutesD = 0;
      timerD = false;
    }
    //if lights are off, turn lights are on
    else
    {
      diningL = true;
      timerD = true;
    }
  }
}
