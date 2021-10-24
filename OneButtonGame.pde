int xPos;                      
int speed=1;                   
int xDir=1;                    
int score=0;                  
int lives=5;                   
boolean lost=false;            

void setup(){
  size (400,400);
  smooth();
  xPos=width/2;                //Centers our ball
  fill(0,255,0);               //Makes the ball and text green
  textSize(13);                
}

void draw(){
  background (0);                             
  ellipse(xPos, height/2,40,40);                 //Draw the ball
  xPos=xPos+(speed*xDir);                        //update the ball's position 
  if (xPos > width-20 || xPos<20){
    xDir=-xDir;                                  //If it did reverse the direction
  }
  text("score = "+score,10,10);                  //Print the score on the screen
  text("lives = "+lives,width-80,10);            //Print remaining lives
  if (lives<=0){
    textSize(20);
    text("Click to Restart", 125,100);
    noLoop();                                    //Stop looping at the end of the draw function
    lost=true;
    textSize(13);
  }
}

void mousePressed(){
  if (dist(mouseX, mouseY, xPos, 200)<=20){
    score=score+speed;                           
    speed=speed+1;                              
  }
  else{
    if (speed<1)                                 
    {
    speed=speed-1;
    }
    lives=lives-1;                              
  }
  if (lost==true){
    speed=1;                                     //Reset all variables to initial conditions
    lives=5;
    score=0;
    xPos=width/2;
    xDir=1;
    lost=false;
    loop();                                     //Begin looping draw function again
  }
}
