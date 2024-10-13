Die[] dice;
int totalDots = 0;
void setup()
{
  size(500, 300);
  textAlign(CENTER, CENTER);
  noLoop();
dice = new Die[7];
for(int i = 0; i < dice.length; i++){
 dice[i] = new Die(10+i*60,50);
}
}
void draw()
{
background(173,216,230);
  //your code here
  
    for( int i = 0; i < dice.length; i++){
   dice[i].show();
   totalDots += dice[i].getDotCOunt();
}
    fill(0);
    textSize(20);
    text( "Total Dots: " + totalDots, width / 2, height - 30);
}
void mousePressed()
{
  for(int i = 0; i < dice.length; i++){
  dice[i].roll();
}
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
  int dotCount;
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
      dotCount = 1;
    }
    else if( Math.random() < 0.333){
      twodots = true;
      dotCount = 2;
    } 
    else if( Math.random() < 0.5){
     threedots = true;
     dotCount = 3;
    }
     else if( Math.random() < 0.666) {
     fourdots = true;
     dotCount = 4;
    }
  else if( Math.random() < 0.83){
  fivedots = true;
  dotCount = 5;
}
else if( Math.random() < 1){
  sixdots = true;
  dotCount = 6;
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
 int getDotCount(){
 return dotCount;
}
}
