//this is where I study bits of code.
//learning how button, timer and if else statements work altogether, which is why its called combined code 
//declare booleans for light 
boolean check = false;
boolean check1 = false;
//import java.time.*;

//declare vars for timer 
int millisecs;
int seconds; 
int minutes; 

//declare bool for timer
boolean start = false;
boolean starter;

void setup() {
  size(400,400);
}

void draw()
{ 
  background(255);
  //FOR KITCHEN **********************************************
  //if check is false, change colour to white 
  if(check)
  {
    fill(255);
  }
  //if not, fill to black 
  else
  {
    fill(0);
  }
  
  //FOR TIMER ******************************************
  //if timer is true 
 if(start == true)
 {
   //calulste the millisecs and add each times
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
 }
  
//constructing the shapes
rect(width/2, height/2, 100,50); //shape, rectangle of kitchen

fill(255); //white
text("kitchen",width/2+50,height/2+25); //add text kitchen at the same x and y

fill(0); //black
textSize(15); // size of the time text 
text(nf(minutes, 2) + ":" + nf(seconds,2) + "." + nf(millisecs, 1), width/2+100, height/2+50); //display it at a x and y, and in the format of min:secs.mills
}

//mouse click function
void mouseClicked()
{
  //if mouse is clicked inside the region of the kitchen
  if((mouseX > width/2 && mouseX < width/2+100) && (mouseY > height/2 && mouseY < height/2+50))
  {
    //FOR THE TIMER *************************************************************
    //if timer is on, turn it off and reset all the values back to 0
    if(start == true)
  {
    millisecs = 0;
    seconds = 0;
    minutes = 0;
    start = false;
  }
  //if timer is off, turn it on
  else if(start == false)
  {
     start = true;
  }
  
  //FOR THE LIGHT SWITCHING ****************************************
  //if lights are on, turn off lights 
    if(check)
    {
      check=false;
    }
    //if lights are off, turn lights are on
    else
    {
      check = true;
    }
  }
}
