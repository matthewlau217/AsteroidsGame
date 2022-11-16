Spaceship uwu = new Spaceship();
Star[] owo = new Star[1000];
public void setup() 
{
  size(500,500);
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
  color(255);
  text("Center X: " + uwu.myCenterX, 25, 30);
  text("Center Y: " + uwu.myCenterY, 25, 45);
  text("Speed X: " + uwu.myXspeed, 25, 60);
  text("Speed Y: " + uwu.myYspeed, 25, 75);
  text("Direction: " + uwu.myPointDirection, 25, 90);
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

class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 4;
      xCorners = new int[]{-8, 16, -8, -2};
      yCorners = new int[]{-8, 0, 8, 0};
      myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
      myCenterX = myCenterY = 250;
      myXspeed = myYspeed = 0;
      myPointDirection = 90;
    }
    public void hyperspace(){
      myXspeed = myYspeed = 0;
      myCenterX  =(int)(Math.random() * 500);
      myCenterY = (int)(Math.random() * 500);
      myPointDirection = (int)(Math.random() * 360);
    }
    public double getCenterX(){
      return myCenterX;
    }
    public double getCenterY(){
      return myCenterY;
    }
    public double getXspeed(){
      return myXspeed;
    }
    public double getYspeed(){
      return myYspeed;
    }
    public double getPointDirection(){
      return myPointDirection;
    }
}

class Star
{
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
  }
  public void show() {
    fill(255);
    ellipse(myX, myY, 3, 3);
  }
}

class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myXspeed, myYspeed; //holds the speed of travel in the x and y directions   
  protected double myPointDirection; //holds current direction the ship is pointing in degrees    

  //Accelerates the floater in the direction it is pointing (myPointDirection)   
  public void accelerate (double dAmount)   
  {          
    //convert the current direction the floater is pointing to radians    
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed += ((dAmount) * Math.cos(dRadians));    
    myYspeed += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (double degreesOfRotation)   
  {     
    //rotates the floater by a given number of degrees    
    myPointDirection+=degreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 
