class Stars 
{
  private float x, y;
  private int myColor;
  public Stars() {
    x = (float) (Math.random()*800);
    y = (float) (Math.random()*800);
    myColor = 255;
  }
  public void show() {
    stroke(myColor);
    fill(myColor);
    beginShape();    
    vertex(x, y);
    vertex(x, y);
    vertex(x + 2.5, y + 5);
    vertex(x + 7.5, y + 7.5);
    vertex(x + 2.5, y + 10);
    vertex(x, y + 15);
    vertex(x - 2.5, y + 10);
    vertex(x - 7.5, y + 7.5);
    vertex(x - 2.5, y + 5); 
    vertex(x - 2.5, y + 5);  
    endShape();
    myColor = (int) (Math.random()*55) + 200;
  }
}
