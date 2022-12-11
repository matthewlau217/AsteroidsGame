class Asteroid extends Floater
{
  private double rSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
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
  public double getCenterX(){
   return myCenterX;
 }
 public double getCenterY(){
   return myCenterY;
 }
}
