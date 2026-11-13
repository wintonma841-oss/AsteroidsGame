class Spaceship extends Floater  {   
    public Spaceship(){
      corners=4;
      xCorners= new int [corners];
      yCorners= new int [corners];
      xCorners[0]=-8;
      yCorners[0]=-8;
      xCorners[1]=16;
      yCorners[1]=0;
      xCorners[2]=-8;
      yCorners[2]=8;
      xCorners[3]=-2;
      yCorners[3]=0;
      setColor(255);
      setCenterX(200);
      setCenterY(200);
      setSpeedX(5);
      setSpeedY(5);
      setDirection(270);
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
}
