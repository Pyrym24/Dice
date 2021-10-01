Die jeff = new Die(200,200);
int sum;
int dieVal;
int randDie = jeff.roll();
int diceSum = 0;
void setup()
  {
      size(500,500);
      noLoop();
  }
  void draw()
  {
    background(200,200,200);
    sum = 0;
    diceSum = 0;
    for(int i = 0; i<500; i+=20){
      for(int j = 0; j<400;j+=20){
        Die jeff = new Die(i,j);
        jeff.show(randDie = jeff.roll());
        sum +=randDie;
        diceSum++;
      }
    }
    text("Total value: "+sum, 250,450);
    text("Total dice: "+diceSum,250,475);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     int locX,locY, dNum;
      
      Die(int x, int y) //constructor
      {
          locX = x;
          locY = y;
          dNum = 1;
      }
      int roll()
      {
        int dots;
          if((int)(Math.random()*6) == 5){
            dots = 6;
          }else if((int)(Math.random()*6) == 4){
             dots = 5;
          }else if((int)(Math.random()*6) == 3){
            dots = 4;
          }else if((int)(Math.random()*6) == 2){
            dots = 3;
          }else if((int)(Math.random()*6) == 1){
            dots = 2;
          }else{
             dots = 1;
          }
        return dots;
      }
      void show(int dotS)
      {if(dotS == 6){
          fill(255,255,255);
          rect(locX,locY,20,20);
          fill(0,0,0);
          for(int i = 0; i<3;i++){
            for(int j = 0; j<2; j++){
              ellipse(locX +i*5+5,locY+j*5+7,5,5);
            }
          }
      }else if(dotS == 5){
      fill(255,255,255);
          rect(locX,locY,20,20);
          fill(0,0,0);
         for(int i = 0; i<4;i+=3){
            for(int j = 0; j<4; j+=2){
              ellipse(locX +i*4+5,locY+j*4+7,5,5);
            }
          }
          ellipse(locX+10,locY+10,5,5);  
      }else if(dotS == 4){
       fill(255,255,255);
          rect(locX,locY,20,20);
          fill(0,0,0);
         for(int i = 0; i<2;i++){
            for(int j = 0; j<2; j++){
              ellipse(locX +i*5+8,locY+j*5+7,5,5);
            }
          }
      }else if(dotS == 3){
      fill(255,255,255);
          rect(locX,locY,20,20);
          fill(0,0,0);
          ellipse(locX+10,locY+10,5,5);
          ellipse(locX+14,locY+14,5,5);  
          ellipse(locX+6,locY+6,5,5);  
      }else if(dotS == 2){
      fill(255,255,255);
          rect(locX,locY,20,20);
          fill(0,0,0);
          ellipse(locX+6,locY+10,5,5);
          ellipse(locX+14,locY+10,5,5);
      }else{
         fill(255,255,255);
          rect(locX,locY,20,20);
          fill(0,0,0);
          ellipse(locX+10,locY+10,5,5);
          
      }          
      }
  }
