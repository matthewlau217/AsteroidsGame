class Asteroid extends Floater
{
  public double rSpeed;
  public Asteroid() {
    corners = 22;
    xCorners = new int[]{0, 1, 2, 2, 1, 1, 2, 3, 3, 2, 1, 0, -1, -2, -3, -3, -2, -1, -1, -2, -2, -1};
    yCorners = new int[]{9, 9, 7, 6, 6, -4, -4, -5, -6, -7, -7, -6, -7, -7, -6, -5, -4, -4, 6, 6, 7, 9};
    for(int i=0; i<xCorners.length;i++){
      xCorners[i]=xCorners[i]*5;
      yCorners[i]=yCorners[i]*5;
    }
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
