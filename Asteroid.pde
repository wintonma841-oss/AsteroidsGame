class Asteroid extends Floater  { 
  protected double rotSpeed;
  public Asteroid(){
    corners=8;
    xCorners= new int [corners];
    yCorners= new int [corners];
    xCorners[0]=7;
    yCorners[0]=8;
    xCorners[1]=12;
    yCorners[1]=2;
    xCorners[2]=10;
    yCorners[2]=-4;
    xCorners[3]=5;
    yCorners[3]=-7;
    xCorners[4]=-1;
    yCorners[4]=-9;
    xCorners[5]=-7;
    yCorners[5]=-5;
    xCorners[6]=-8;
    yCorners[6]=2;
    xCorners[7]=-3;
    yCorners[7]=7;
    setColor(155);
    setCenterX((Math.random()*300));
    setCenterY((Math.random()*300));
    setSpeedX(((Math.random()*5)-2));
    setSpeedY(((Math.random()*5)-2));
    setDirection(270);
  }//end of Asteroid Constructor
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void setRotSpeed(double n){
    rotSpeed=n;
  }
  public void setColor(int n){
    myColor=n;
  }
  public void setCenterX(double n){
    myCenterX=n;
  }
  public void setCenterY(double n){
    myCenterY=n;
  }
  public void setSpeedX(double n){
    myXspeed=n;
  }
  public void setSpeedY(double n){
    myYspeed=n;
  }
  public void setDirection(double n){
    myPointDirection=n;
  }
  public double getRotSpeed(){
    return rotSpeed;
  }
  public int getColor(){
    return myColor;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public double getSpeedX(){
    return myXspeed;
  }
  public double getSpeedY(){
    return myYspeed;
  }
  public double getDirection(){
    return myPointDirection;
  }
}//end of asteroid class
