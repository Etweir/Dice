void setup()
  {
      noLoop();
      size(1920,1080);
  }
  void draw()
  {
      background(0);
      Die bob = new Die(50,150);
      bob.show();
      textSize(20);
      strokeWeight(1);
      fill(250,0,0);
     text(" "+ bob.s + " Dice", 200,20);
     text(" "+ bob.z + "Roll",200,40);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      
      int myX,myY,r,z,s;
      
      Die(int x, int y) //constructor
      {
          myY = y;
          myX = x;
      }
      void roll()
      {
      }
      void show()
      {
        for(int myX = 0;myX<1914;myX+=6){
           for(int myY = 0;myY<1074;myY +=6){
          int r = (int)(Math.random()*6+1);
          z+=r;
          s+=1;
          stroke(1);
          fill(255);
          rect(myX,myY,6,6);
          fill(0);
          noStroke();
          if(r == 1){
          rect(myX+3,myY+3,1,1);
          }
          else if(r == 2){
          rect(myX+2,myY+4,1,1);
          rect(myX+4,myY+2,1,1);
          }
          else if(r == 3){
          rect(myX+1,myY+5,1,1);
          rect(myX+5,myY+1,1,1);
          rect(myX+3,myY+3,1,1);
          }
          else if(r == 4){
          rect(myX+2,myY+4,1,1);
          rect(myX+4,myY+2,1,1);
          rect(myX+4,myY+4,1,1);
          rect(myX+2,myY+2,1,1);
          }
          else if(r == 5){
          rect(myX+1,myY+5,1,1);
          rect(myX+5,myY+1,1,1);
          rect(myX+3,myY+3,1,1);
          rect(myX+5,myY+5,1,1);
          rect(myX+1,myY+1,1,1);
          }
          else{
          rect(myX+1,myY+5,1,1);
          rect(myX+5,myY+1,1,1);
          rect(myX+1,myY+3,1,1);
          rect(myX+5,myY+5,1,1);
          rect(myX+1,myY+1,1,1);
          rect(myX+5,myY+3,1,1);
          }
      }
  }
  }
  }
