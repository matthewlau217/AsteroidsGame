class Asteroid extends Floater
{
  public double rSpeed;
  public Asteroid() {
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    myCenterX = Math.random() * 1920;
    myCenterY = Math.random() * 1080;
    myXspeed = Math.random();
    myYspeed = Math.random();
    myPointDirection = Math.random() * 360;
    rSpeed = Math.random();
  }
  public void move() {
    turn(rSpeed);
    super.move();
  }
}
