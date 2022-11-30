Spaceship uwu = new Spaceship();
Star[] owo = new Star[1000];
public void setup() 
{
  size(1920,1080);
  background(0);
  for (int i = 0; i < owo.length; i++) {
    owo[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i < owo.length; i++) {
    owo[i].show();
  }
  //color(255);
  //text("Center X: " + uwu.myCenterX, 50, 30);
  //text("Center Y: " + uwu.myCenterY, 50, 45);
  //text("Speed X: " + uwu.myXspeed, 50, 60);
  //text("Speed Y: " + uwu.myYspeed, 50, 75);
  //text("Direction: " + uwu.myPointDirection, 50, 90);
  uwu.move();
  uwu.show();
}

public void keyPressed()
{
  if (key=='w')
    uwu.accelerate(.5);
  if (key=='a')
    uwu.turn(-10);
  if (key=='s')
    uwu.accelerate(-.5);
  if (key=='d')
    uwu.turn(10);
  if (key == ' ')
    uwu.hyperspace();
}
