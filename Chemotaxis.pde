Bacteria[] colony;
void setup()   
{     
  //initialize bacteria variables here
  size(640, 640);
  colony = new Bacteria[100];
  for (int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}  

void draw()   
{    
  for (int i = 0; i < colony.length; i++)
  {
    colony[i].show();
    colony[i].move();
  }
}  

void mousePressed()
{
  noLoop();
}

class Bacteria
{     
  //lots of java!   
  int myX, myY, bactColor, size;
  Bacteria()
  {
    myX = 320;
    myY = 320;
    size = (int)(Math.random() * 20) + 20;
    bactColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  }
  void move()
  {
    if (myX != 10 || myX != 630)
      myX = myX + (int)(Math.random()*15) - 7;
    if (myY != 10 || myY != 630)
      myY = myY + (int)(Math.random()*15) - 7;

  }
  void show()
  {
    fill(bactColor);
    ellipse(myX, myY, size, size);
    size = size - 1;
    if (size < 10)
      while (size < 40)
        size += 1;
  }
}