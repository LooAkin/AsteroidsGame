Spaceship zoom;
Star [] constellation = new Star [100]; 
Asteroid [] rock = new Asteroid [100];

public void setup() 
{
  size(800, 800);
  zoom = new Spaceship();
  for(int i = 0; i < constellation.length; i++)
      constellation[i] = new Star();
  for(int i = 0; i < rock.length; i++)
      rock[i] = new Asteroid();

}
public void draw() 
{
  //your code here
  background(0);
    for(int i = 0; i < constellation.length; i++)
      constellation[i].show();
    for(int i = 0; i < rock.length; i++){
      rock[i].show();
      rock[i].move();
    }
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
