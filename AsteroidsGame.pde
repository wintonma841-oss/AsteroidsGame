//your variable declarations here
Spaceship Pax = new Spaceship();
ArrayList <Asteroid> Cormac = new ArrayList <Asteroid>();
Star [] Paxson = new Star[1000];
public void setup() 
{
  size(400,400);
  for (int i =0; i<1000; i++) {
    Paxson[i]= new Star();
  }
  for(int i =0; i<10; i++) {
    Cormac.add(new Asteroid());
    Cormac.get(i).setRotSpeed((Math.random()*5)-2);
  }//end of for loop 1
}
public void draw() 
{
  background(0,0,0);
  noStroke();
  for(int i =0; i<1000; i++) {
    Paxson[i].show();
  }
  for(int i =0; i<10; i++) {
    Cormac.get(i).show();
    Cormac.get(i).move();
    float d = dist((float)Pax.getCenterX(), (float)Pax.getCenterY(), (float)Cormac.get(i).getCenterX(), (float)Cormac.get(i).getCenterY());
    if(d<10){
      Cormac.remove(i);
      Cormac.add(new Asteroid());
      Cormac.get(i).setRotSpeed((Math.random()*5)-2);
    }
  }
  Pax.move();
  Pax.show();
}
public void keyPressed(){
  if (key=='a'){
    Pax.turn(-3);
  }
  if (key=='d'){
    Pax.turn(3);
  }
  if (key=='w'){
    Pax.accelerate(1);
  }
  if (key=='s'){
    Pax.setCenterX(Math.random()*400);
    Pax.setCenterY(Math.random()*400);
    Pax.setDirection(Math.random()*360);
    Pax.setSpeedX(0);
    Pax.setSpeedY(0);
  }
}
