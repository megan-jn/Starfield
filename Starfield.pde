//your code here
PImage bananaCat;
Particle [] galaxy = new Particle[1000];
void setup()
{
  //your code here
  bananaCat = loadImage("data/bananacat.png");
  size(500, 500);
  for(int i = 0; i < galaxy.length; i++)
  {
    galaxy[i] = new Particle();
    galaxy[0] = new OddballParticle();
    galaxy[1] = new OddballParticle();
    galaxy[2] = new OddballParticle();
    galaxy[3] = new OddballParticle();
  }
}
void draw()
{
  //your code here
  background(2, 15, 6);
  for(int i = 0; i < galaxy.length; i++)
  {
    galaxy[i].show();
    galaxy[i].move();
  }
  fill(27, 83, 150);
  strokeWeight(5);
  stroke(72, 247, 236, 100);
  ellipse(255, 290, 70, 20);
  image(bananaCat, 210, 210, 90, 90);
}
class Particle
{
  //your code here
  double myX, myY, mySpeed, myAngle;
  int myColor;
  int mySize;
  Particle()
  {
    myX = myY = 250;
    mySpeed = Math.random()*5;
    myAngle = Math.random()*2*Math.PI;
    mySize = 10;
    myColor = color((int)(Math.random()*100)+100, (int)(Math.random()*100)+100, (int)(Math.random()*100)+100, (int)(Math.random()*100)+100);
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}

class OddballParticle extends Particle //inherits from Particle
{
  
  //your code here
  OddballParticle()
  {
    myX = myY = 220;
    mySpeed = Math.random()*20;
    myAngle = Math.random()*2*Math.PI;
    mySize = 50;
    myColor = color(140, 245, 172);
    
  }
  void move()
  {
    myX = myX + Math.cos(myAngle);
    myY = myY + Math.sin(myAngle);
    if(myX > 520 || myX < -20)
    {
      myX = 220;
    }
    if(myY > 520 || myY < -20)
    {
      myY = 220;
    }
    
  }
  void show()
  {
    image(bananaCat, (float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}
