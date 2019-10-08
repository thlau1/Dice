Die he;
int x;
int y;
int sum = 0;
void setup()
{
  size(800,800);
  noLoop();
}
void draw()
{
  background(0,255,0);
  for(y = 50; y <= 450; y += 50)
  {
    for(x = 50; x <= 450; x += 50)
    {
      he = new Die(x,y);
      he.roll();
      he.show();
      sum += he.ro;
    }
  }
  text("Total amount of dots are " + sum, 500, 500);
  sum = 0;
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, siz, ro, i, dot;
  Die(int x, int y)
  {
    siz = 40;
    myX = x;
    myY = y;
    i = 0;
  }
  void roll()
  {
    ro = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    fill(255);
    rect(myX, myY, siz, siz);
    if(ro % 2 == 0)
    {
      fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
      ellipse(myX +10,myY + 10, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      if(ro == 4)
      {
        ellipse(myX + 30, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 30, 10, 10);
      }
      if(ro == 6)
      {
        ellipse(myX + 30, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 30, 10, 10);
        ellipse(myX + 10, myY + 20, 10, 10);
        ellipse(myX + 30, myY + 20, 10, 10);
      }
    }
    if(ro % 2 != 0)
    {
      fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
      ellipse(myX + 20, myY + 20, 10, 10);
      if(ro == 3)
      {
        ellipse(myX + 10, myY + 30, 10, 10);
        ellipse(myX + 30, myY + 10, 10, 10);
      }
      if(ro == 5)
      {
        ellipse(myX + 10, myY + 30, 10, 10);
        ellipse(myX + 30, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 30, myY + 30, 10, 10);
      }
    }
  }
}