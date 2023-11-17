Spaceship zoom;
Stars [] constellation = new Stars [100]; 

public void setup() 
{
  size(800, 800);
  zoom = new Spaceship();
  for (int i = 0; i < constellation.length; i++)
    constellation[i] = new Stars();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < constellation.length; i++)
    constellation[i].show();
  zoom.show();
  zoom.move();
}

public void keyPressed() {
  if (keyCode == UP) {
    zoom.accelerate(0.5);
  } 
  if (keyCode == DOWN) {
    zoom.accelerate(-0.5);
  } 
  if (keyCode == RIGHT) {
    zoom.setDirection(1);
    zoom.accelerate(-0.1);
  } 
  if (keyCode == LEFT) {
    zoom.setDirection(0);
    zoom.accelerate(-0.1);
  } 
  if (keyCode == SHIFT) {
    zoom.hyperSpace();
  }
}
