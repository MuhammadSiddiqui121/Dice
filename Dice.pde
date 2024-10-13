void setup()
{
  size(500, 300);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  //your code here
  {\
    for( int x = 10; x < 450; x = x+60){
    Die bob = new Die(50,50);
    bob.show();
}
    }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  boolean onedot;
  boolean twodots;
  boolean threedots;
  boolean fourdots;
  boolean fivedots;
  boolean sixdots;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
  onedot= false;
  twodots = false;
  threedots = false;
  fourdots = false;
  fivedots= false;
  sixedots = false;
    if( Math.random() < .166){
      onedot = true;
    }
    else if( Math.random() < 0.333){
      twodots = true;
    } 
    else if( Math.random() < 0.5){
     threedots = true;
    }
     else if( Math.random() < 0.666) {
     fourdots = true;
    }
  else if( Math.random() < 0.83){
  fivedots = true;
}
else if( Math.random() < 1){
  sixdots = true;
}
    
  }
  void show()
  {
    //your code here
    noStroke();
    fill (255,255,255);
    rect( myX, myY, 50,50);
    fill(0,0,0);
    if( onedot == true){
     ellipse( myX + 25, myY + 25, 10,10);
    }
    else if( twodots == true){
    ellipse( myX+10, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    }
else if ( threedots == true){
     ellipse( myX+10, myY + 40, 10,10);
     ellipse( myX + 40, myY + 10, 10,10);
     ellipse ( myX + 25, myY + 25, 10, 10);
    }
 else if( fourdots == true){
    ellipse( myX+10, myY + 10, 10,10);
    ellipse( myX +40, myY + 40, 10,10);
    ellipse( myX+40, myY + 10, 10,10);
    ellipse( myX+10, myY + 40, 10,10);
    }
 else if( fivedots == true){
    ellipse( myX+10, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    ellipse( myX+40, myY + 10, 10,10);
    ellipse( myX+10, myY + 40, 10,10);
    ellipse( myX + 25, myY + 25, 10,10);
    }
   else if( sixdots == true){
    ellipse( myX+10, myY + 10, 10,10);
    ellipse( myX + 40, myY + 40, 10,10);
    ellipse( myX+40, myY + 10, 10,10);
    ellipse( myX+10, myY + 40, 10,10);
    ellipse( myX + 10, myY + 25, 10,10);
    ellipse( myX + 40, myY + 25, 10,10);
    }

}
}
