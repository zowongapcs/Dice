String title="Crewmember";
String opponent="Captain Turner";
int score1=0;
int score2=0;
void setup()
  {
      size(1000,600);
      noLoop();
      background(117, 97, 63);
      noStroke();
  }
  void draw()
  {
      background(11, 97, 63);
      fill(87, 72, 47);
      rect(495,0,10,600);
      rect(0,200,1000,10);
      rect(0,300,1000,10);
      int i = 0;
      int player_side = 0;
      int k = 100;
      int sum1=0;
      int sum2=0;
      boolean run=false;
      while (player_side<2){
        while (i<5){
          Die bob = new Die((int)(Math.random()*20) +k+(70*i),(int)(Math.random()*200) +350);
          bob.show();
          bob.roll();
          i++;
          if(run==false){
          sum1+=bob.num;
          } else {
            sum2+=bob.num;
          }
        }  
      k+=500;
      i=0;
      player_side++;
      run = true;
      }
      text("YOU",170,50);
      text("Sum "+sum1,50,262);
      text("Sum "+sum2,750,262);
      fill(242, 170, 51);
      if(sum1>sum2){
        score1++;
        text("WINNER",250,262);
      }else if(sum1<sum2){
        score2++;
        text("WINNER",530,262);
      }else{
        text("TIE",300,262);
        text("TIE",550,262);
      }
      text("Score "+score1,170,170);
      text("Score "+score2,550,170);
      fill(250,250,250);
      if(score1<10){
        title="Deckhand";
      }else if(score1<20){
        title="Crewmember";
      }else if(score1<30){
        title="First Mate";
      }else if(score1>score2+2){
        title="Captain";
        opponent="Turner";
        text("First Mate",550,100);
      }
      text(title,170,100);
      text(opponent,550,50);
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
