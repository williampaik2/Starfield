Particle[] light = new Particle[50];
void setup()
{
  size(400, 400);
  background(0);
  for (int i = 0; i < light.length; i++)
  {
    light[i] = new Particle();
  }
  light[0] = new OddballParticle();
}
void draw()
{
  for(int i = 0; i < light.length; i++)
  {
    light[i].show();
    light[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random() * 10;
    myAngle = Math.random() * 2 * Math.PI; 
    myColor = 250;
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random() * 1;
    myAngle = Math.random() * 2 * Math.PI; 
    myColor = #4118ED;
  }
  void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 50, 50);
  }
}

