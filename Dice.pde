void setup()
  {
      size(200,600);
      noLoop();
      background(117, 97, 63);
  }
  void draw()
  {
          Die bob = new Die(100,350);
          bob.show();
          bob.roll();
  }
  void mousePressed()
  {
    redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX,myY;
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
          double roll = Math.random();
          fill(250,250,250);
          if(roll < 0.16667){
            circle(myX,myY,10);
          }else if(roll < 0.33333){
            circle(myX-12,myY-12,10);
            circle(myX+12,myY+12,10);
          }else if(roll < 0.5){
            circle(myX+12,myY-12,10);
            circle(myX,myY,10);
            circle(myX-12,myY+12,10);
          }else if(roll < 0.66667){
            circle(myX-12,myY-12,10);
            circle(myX+12,myY-12,10);
            circle(myX-12,myY+12,10);
            circle(myX+12,myY+12,10);
          }else if(roll < 0.83333){
            circle(myX-12,myY-12,10);
            circle(myX+12,myY-12,10);
            circle(myX-12,myY+12,10);
            circle(myX+12,myY+12,10);
            circle(myX,myY,10);
          }else{
            circle(myX-12,myY-12,10);
            circle(myX+12,myY-12,10);
            circle(myX-12,myY,10);
            circle(myX+12,myY,10);
            circle(myX-12,myY+12,10);
            circle(myX+12,myY+12,10);
          }
      }
      void show()
      {
          fill(0,0,0);
          noStroke();
          rect(myX-25,myY-12,50,25);
          rect(myX-12,myY-25,25,50);
          arc(myX-12,myY-12,25,25,PI,PI+HALF_PI);
          arc(myX+12,myY-12,25,25,PI+HALF_PI,PI+PI);
          arc(myX-12,myY+12,25,25,HALF_PI,PI);
          arc(myX+12,myY+12,25,25,0,HALF_PI);
      }
  }
