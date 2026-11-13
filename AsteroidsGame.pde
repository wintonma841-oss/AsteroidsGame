//your variable declarations here
Spaceship Pax = new Spaceship();
Star [] Paxson = new Star[1000];
public void setup() 
{
  size(400,400);
  for (int i =0; i<1000; i++) {
    Paxson[i]= new Star();
  }//end of for loop 1
}
public void draw() 
{
  background(0,0,0);
  noStroke();
  for(int i =0; i<1000; i++) {
    Paxson[i].show();
  }
  Pax.show();
}
public void keyPressed(){
  if (key=='a'){
    Pax.turn(-3);
    Pax.setDirection((Pax.getDirection()-3));
  }
  if (key=='d'){
    Pax.turn(3);
    Pax.setDirection((Pax.getDirection()+3));
  }
  if (key=='w'){
    Pax.setCenterX(Pax.getCenterX()+(3*Math.cos(Pax.getDirection()*PI/180)));
    Pax.setCenterY(Pax.getCenterY()+(3*Math.sin(Pax.getDirection()*PI/180)));
  }
  if (key=='s'){
    Pax.setCenterX(Math.random()*400);
    Pax.setCenterY(Math.random()*400);
    Pax.setDirection(Math.random()*360);
  }
}

