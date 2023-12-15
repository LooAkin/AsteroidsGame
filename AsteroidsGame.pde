Spaceship zoom;
ArrayList <Bullet> bill = new ArrayList<Bullet>();
Star [] constellation = new Star [100];
ArrayList <Asteroid> rock = new ArrayList<Asteroid>();
boolean showBill = false;
boolean win = false;

public void setup() 
{
  size(800, 800);
  zoom = new Spaceship();
  textAlign(CENTER,CENTER);
  textSize(10);
  for (int i = 0; i < constellation.length; i++)
    constellation[i] = new Star();
  for (int i = 0; i < rock.size(); i++)
    rock.remove(i);  
  for (int i = 0; i < 100; i++)
    rock.add(new Asteroid(1, -1, -1));
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < constellation.length; i++)
    constellation[i].show();
  zoom.show();
  zoom.move();
  zoom.displayHealth(); 
  if (showBill == true) {
    for (int i = 0; i < bill.size(); i++) {
      bill.get(i).show();
      bill.get(i).move();
    }
  }
  if(rock.size() == 0)
  win = true;
  for (int i = 0; i < rock.size(); i++) {
    rock.get(i).show();
    rock.get(i).move();
      float d = dist(zoom.getX(), zoom.getY(), rock.get(i).getX(), rock.get(i).getY());
      if(d < 20) {
          if(zoom.getHealth() > 0)
          zoom.loseHealth();
          if (rock.get(i).getSize() == 1) {
          for(int k = 0; k < 5; k++)
            rock.add(new Asteroid(0, rock.get(i).getX(), rock.get(i).getY()));
          }
            rock.remove(i);
            break;
        }
    for (int j = 0; j < bill.size(); j++) {
      float di = dist(bill.get(j).getX(), bill.get(j).getY(), rock.get(i).getX(), rock.get(i).getY());
      if (di < 25) {
        if (rock.get(i).getSize() == 1) {
          for(int k = 0; k < 5; k++)
            rock.add(new Asteroid(0, rock.get(i).getX(), rock.get(i).getY()));
            bill.remove(j);
        }
        rock.remove(i);
        break;
      }
    }
  }
  if(win == true){
  textSize(100);
  fill(0, 250, 0);
  text("YOU WIN!", 400, 200);
  text(":D", 400, 300);
  noLoop();
  }
  if(zoom.getHealth() < 1){
  zoom.displayHealth();
  textSize(50);
  fill(250, 0, 0);
  text("YOU LOSE", 400, 200);
  text("GOOD DAY SIR", 400, 250);
  text(">:(", 400, 300);
  noLoop();
  }
  if((win == true)||(zoom.getHealth()<1)){
    fill(0, 0, 255);
    rect(300, 500, 200, 200);
    fill(255, 255, 255);
    textSize(15);
    text("Play Again?", 400, 550);
    text("Just Hit Enter!", 400, 650);
  }
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
  } 
  if (keyCode == LEFT) {
    zoom.setDirection(0);
  } 
  if (keyCode == SHIFT) {
    zoom.hyperSpace();
  } 
  if (keyCode == CONTROL) {
    bill.add(new Bullet(zoom));
    showBill = true;
  }
      if((keyCode == ENTER)&&(win == true)||(zoom.getHealth()<1)){
      System.out.print("RESETIING");
        setup();
        loop();   
  }
}
