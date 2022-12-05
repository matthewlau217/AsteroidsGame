Spaceship uwu = new Spaceship();
Star[] owo = new Star[1000];
ArrayList <Asteroid> B3 = new ArrayList <Asteroid> ();
public void setup() 
{
  size(1920,1080);
  background(0);
  for (int i = 0; i < owo.length; i++) {
    owo[i] = new Star();
  }
  for (int i = 0; i < 100; i++) {
    B3.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i < owo.length; i++) {
    owo[i].show();
  }
  for (int i = 0; i < B3.size(); i++){
    B3.get(i).move();
    B3.get(i).show();
    if (dist((float)uwu.getCenterX(),(float)uwu.getCenterY(),(float)B3.get(i).getCenterX(),(float)B3.get(i).getCenterY()) < 50) {
      B3.remove(i);
    }
  }
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
