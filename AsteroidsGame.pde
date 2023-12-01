Spaceship zoom;
Star [] constellation = new Star [100]; 
ArrayList <Asteroid> rock = new ArrayList<Asteroid>();

public void setup() 
{
  size(800, 800);
  zoom = new Spaceship();
  for(int i = 0; i < constellation.length; i++)
      constellation[i] = new Star();
  for(int i = 0; i < 50; i++)
      rock.add(new Asteroid());
}
public void draw() 
{
  //your code here
  background(0);
    for(int i = 0; i < constellation.length; i++)
      constellation[i].show();
    zoom.show();
    zoom.move();
    for(int i = 0; i < rock.size(); i++){
      rock.get(i).show();
      rock.get(i).move();
      float d = dist(zoom.getX(), zoom.getY(), rock.get(i).getX(), rock.get(i).getY());
      if (d < 50){
      rock.remove(i);
      i --;
      }
    }
}

public void keyPressed(){
    if(keyCode == UP){
       zoom.accelerate(0.5);
    } 
    if(keyCode == DOWN){
      zoom.accelerate(-0.5);
    } 
    if (keyCode == RIGHT){
      zoom.setDirection(1);
    } 
    if (keyCode == LEFT){
      zoom.setDirection(0);

    } 
    if (keyCode == SHIFT){
    zoom.hyperSpace();
    } 
}
