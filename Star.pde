class Star
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random() * 1920);
    myY = (int)(Math.random() * 1080);
  }
  public void show() {
    fill(255);
    ellipse(myX, myY, 3, 3);
  }
}
