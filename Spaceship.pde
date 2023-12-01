class Spaceship extends Floater{
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
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
}
