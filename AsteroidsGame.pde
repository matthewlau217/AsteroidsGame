Spaceship uwu = new Spaceship();
Star[] owo = new Star[1000];

ArrayList <Asteroid> B3 = new ArrayList <Asteroid> ();
ArrayList <Bullet> XD = new ArrayList <Bullet> ();

public void setup() 
{
  size(1920,1080);
  background(0);
  for (int i = 0; i < owo.length; i++) {
    owo[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
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
  for (int i = 0; i < XD.size(); i++) {
    for (int j = 0; j < B3.size(); j++) {
      if (dist((float)(B3.get(j).getCenterX()),(float)(B3.get(j).getCenterY()),(float)(XD.get(i).getCenterX()),(float)(XD.get(i).getCenterY())) < 25){
        XD.remove(i);
        B3.remove(j);
        B3.add(new Asteroid());
        break;
      }
    }
  }
  for (int i = 0; i < XD.size(); i++) {
    XD.get(i).move();
    XD.get(i).show();
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

public void mousePressed() {
  XD.add(new Bullet(uwu));
}
