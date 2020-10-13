void setup()
  {
      noLoop();
      size(500,500);
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
        for(int myX = 0;myX<492;myX+=8){
           for(int myY = 0;myY<492;myY +=8){
          int r = (int)(Math.random()*6+1);
          z+=r;
          s+=1;
          stroke(1);
          fill(255);
          rect(myX,myY,8,8);
          fill(0);
          noStroke();
          if(r == 1){
          ellipse(myX+4.5,myY+4.5,1,1);
          }
          else if(r == 2){
          ellipse(myX+2.5,myY+6.5,1,1);
          ellipse(myX+6.5,myY+2.5,1,1);
          }
          else if(r == 3){
          ellipse(myX+2.5,myY+6.5,1,1);
          ellipse(myX+6.5,myY+2.5,1,1);
          ellipse(myX+4.5,myY+4.5,1,1);
          }
          else if(r == 4){
          ellipse(myX+2.5,myY+2.5,1,1);
          ellipse(myX+6.5,myY+2.5,1,1);
          ellipse(myX+2.5,myY+6.5,1,1);
          ellipse(myX+6.5,myY+6.5,1,1);
          }
          else if(r == 5){
          ellipse(myX+2.5,myY+2.5,1,1);
          ellipse(myX+6.5,myY+2.5,1,1);
          ellipse(myX+2.5,myY+6.5,1,1);
          ellipse(myX+6.5,myY+6.5,1,1);
          ellipse(myX+4.5,myY+4.5,1,1);
          }
          else{
          ellipse(myX+2.5,myY+2.5,1,1);
          ellipse(myX+6.5,myY+2.5,1,1);
          ellipse(myX+2.5,myY+6.5,1,1);
          ellipse(myX+6.5,myY+6.5,1,1);
          ellipse(myX+2.5,myY+4.5,1,1);
          ellipse(myX+6.5,myY+4.5,1,1);
          }
      }
  }
  }
  }
