class Spaceship extends Floater{
  private int health;
  public Spaceship() {
    health = 50 ;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -20;
    yCorners[0] =  4;
    xCorners[1] = -20;
    yCorners[1] =  -4;
    xCorners[2] = 0;
    yCorners[2] = 8;
    xCorners[3] = 8;
    yCorners[3] = -6;
    xCorners[4] = 8;
    yCorners[4] =  6;
    xCorners[5] = 0;
    yCorners[5] = -8;
    myColor = 250;   
    myCenterX = Math.random()*800; 
    myCenterY = Math.random()*800;
  }
  public float getX (){
    return (float) myCenterX;
  }
  public float getY (){
    return (float) myCenterY;
  }
  public double getXspeed (){
    return myXspeed;
  }
  public double getYspeed (){
    return myYspeed;
  }
  public double getDirection(){
    return myPointDirection;
  }
  public void setDirection(int x){
    if(1 == x)
         myPointDirection += 2;
        else
        myPointDirection -= 2;
  }

  public void hyperSpace(){
    myPointDirection = (int)(Math.random()*360);
    myCenterX = Math.random()*800; 
    myCenterY = Math.random()*800;
    myXspeed = 0; 
    myYspeed = 0; 
  } 
  public void displayHealth(){
    rect(0, 0, 50, 50);
    fill(0, 90, 255);
    text(health, 25, 35);
    text("Health", 25, 15);
  }
  public void loseHealth(){
    health--;
  }
  public int getHealth(){
   return health; 
  }

}
