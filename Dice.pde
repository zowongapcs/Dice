void setup()
  {
      size(1000,600);
      noLoop();
      background(117, 97, 63);
  }
  void draw()
  {
      background(117, 97, 63);
      fill(87, 72, 47);
      rect(495,0,10,600);
      rect(0,200,1000,10);
      rect(0,300,1000,10);
      int sum1=0;
          Die bob = new Die(100,350);
          bob.show();
          bob.roll();
          sum1+=bob.num;
      text(sum1,50,50);
  }
  void mousePressed()
  {
    redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX,myY,num;
      
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
            num = 1;
            circle(myX,myY,10);
          }else if(roll < 0.33333){
            num = 2;
            circle(myX-12,myY-12,10);
            circle(myX+12,myY+12,10);
          }else if(roll < 0.5){
            num = 3;
            circle(myX+12,myY-12,10);
            circle(myX,myY,10);
            circle(myX-12,myY+12,10);
          }else if(roll < 0.66667){
            num = 4;
            circle(myX-12,myY-12,10);
            circle(myX+12,myY-12,10);
            circle(myX-12,myY+12,10);
            circle(myX+12,myY+12,10);
          }else if(roll < 0.83333){
            num = 5;
            circle(myX-12,myY-12,10);
            circle(myX+12,myY-12,10);
            circle(myX-12,myY+12,10);
            circle(myX+12,myY+12,10);
            circle(myX,myY,10);
          }else{
            num = 6;
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
