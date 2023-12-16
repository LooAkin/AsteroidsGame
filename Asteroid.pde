class Asteroid extends Floater{
  private double rotation;
  private int size;
  public Asteroid(int big, double pointX, double pointY) {
    size = big;
    if(pointX < 0){
      myCenterX = Math.random()*800; 
      myCenterY = Math.random()*800;
    } 
    else {
      myCenterX = pointX; 
      myCenterY = pointY;
    }
    rotation = (Math.random()*10) - 5;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    yCorners[2] = 0;
    yCorners[5] = 0; 
    if(size == 0){
      xCorners[0] = - (int) ((Math.random()*10)+7);
      yCorners[0] = - (int) ((Math.random()*10)+2);
      xCorners[1] = (int) ((Math.random()*10)+2);
      yCorners[1] = -(int) ((Math.random()*10)+2);
      xCorners[2] = (int) ((Math.random()*10)+2);
      xCorners[3] = (int) ((Math.random()*10)+2);
      yCorners[3] = (int) ((Math.random()*10)+7);
      xCorners[4] = -(int) ((Math.random()*10)+7);
      yCorners[4] = (int) ((Math.random()*10)+2);
      xCorners[5] = -(int) ((Math.random()*10)+2);   
    } 
    else {
      xCorners[0] = - (int) ((Math.random()*25)+5);
      yCorners[0] = - (int) (Math.random()*25);
      xCorners[1] = (int) (Math.random()*25);
      yCorners[1] = -(int) (Math.random()*25);
      xCorners[2] = (int) ((Math.random()*25)+5);
      xCorners[3] = (int) (Math.random()*25);
      yCorners[3] = (int) ((Math.random()*25)+5);
      xCorners[4] = -(int) ((Math.random()*25)+5);
      yCorners[4] = (int) (Math.random()*25);
      xCorners[5] = -(int) (Math.random()*25);
    }
    myColor = (int) (Math.random()*50)+125;
    myXspeed = (Math.random()*2)-1; 
    myYspeed = (Math.random()*2)-1;  
    myPointDirection = 0;
  }
  public void move(){
    turn(rotation);
    super.move();
  }
  public float getX (){
    return (float) myCenterX;
  }
  public float getY (){
    return (float) myCenterY;
  }
  public int getSize (){
    return size;
  }
  public void setCenter(double x, double y){
    myCenterX = x;
    myCenterY = y;
  }
}
