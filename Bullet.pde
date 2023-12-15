class Bullet extends Floater{
  public Bullet(Spaceship theShip){
     myColor = 255;
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();
    myPointDirection = theShip.getDirection();
    accelerate(6.0);
 }
 public void show(){  
    stroke(myColor);    
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5); 
 }
   public float getX (){
    return (float) myCenterX;
  }
  public float getY (){
    return (float) myCenterY;
  }

}
