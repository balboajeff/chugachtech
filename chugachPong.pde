int xCord=30;
int ballPos=50;
int grow=3;
int score=0;
void setup()
{
 size(1000, 800); 
  //frameRate(1);
}
void draw()
{
  background(100,26,75);
  textSize(75);
  text(score, 75,75);
  if(ballPos<40&&ballPos>35&&mouseY>300&& mouseY<450)
  {
    grow=grow-1;
    grow=grow*-1;
    println(grow);
    score=score+1;
  }
  fill(10,140,68);//red,green,blue
  rect(xCord,mouseY,10,100,50);//x,y,h,w,radius
  ball();
}

void ball()
{
 ellipse(ballPos,400,25,25);
  ballPos=ballPos+grow;
  if(ballPos>1000||ballPos<0)
  {
    grow=grow*-1;
  } 
}