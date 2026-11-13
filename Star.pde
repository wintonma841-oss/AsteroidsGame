class Star {
  private int myRed, myGreen, myBlue;
  private int myOpacity;
  private int myHeight, myWidth;
  private double myX, myY;
  private double myAngle, mySpeed;
  public Star() {//constructor!
    myX=(Math.random()*400);
    myY=(Math.random()*400);
    myRed=(int)((Math.random()*225)+30);
    myGreen=(int)((Math.random()*225)+30);
    myBlue=(int)((Math.random()*225)+30);
    myHeight=5;
    myWidth= 5;
  }//end of constructor
  
  public void show() {
    fill(myRed, myGreen, myBlue);
    ellipse((int) myX, (int) myY, myHeight, myWidth);
  }//end of show()

}//end of Stars


  
