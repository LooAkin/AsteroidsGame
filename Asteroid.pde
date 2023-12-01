class Asteroid extends Floater{
  private double rotation;
  public Asteroid() {
    rotation = (Math.random()*10) - 5;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = - (int) ((Math.random()*10)+5);
    yCorners[0] = - (int) (Math.random()*10);
    xCorners[1] = (int) (Math.random()*10);
    yCorners[1] = -(int) (Math.random()*10);
    xCorners[2] = (int) ((Math.random()*10)+5);
    yCorners[2] = 0;
    xCorners[3] = (int) (Math.random()*10);
    yCorners[3] = (int) ((Math.random()*10)+5);
    xCorners[4] = -(int) ((Math.random()*10)+5);
    yCorners[4] = (int) (Math.random()*10);
    xCorners[5] = -(int) (Math.random()*10);
    yCorners[5] = 0;   
    myCenterX = Math.random()*800; 
    myCenterY = Math.random()*800;
    myColor = (int) (Math.random()*50)+125;
    myXspeed = (Math.random()*2)-1; 
    myYspeed = (Math.random()*2)-1;  
    myPointDirection = 0;
  }
  public void move(){
    turn(rotation);
    super.move();
  }
}
