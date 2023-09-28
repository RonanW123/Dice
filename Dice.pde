Die bob;
int totalDots = 0;

void setup(){
  size(500, 500);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  for(int diceX = 25; diceX < 500; diceX += 50){
    for(int diceY = 25; diceY < 400; diceY += 50){
      bob = new Die(diceX, diceY);
      bob.show();
    }
  } 
  fill(255);
  textAlign(CENTER);
  textSize(25);
  text("Total Number of Dots: " + totalDots, 250, 460);
}

void mousePressed(){
  if(mouseButton == LEFT)
    bob.roll();
  totalDots = 0;
  redraw();
}

class Die { //models one single dice cube

    int result, myX, myY;
      
    Die(int x, int y){ //constructor
      
      roll();
      myX = x;
      myY = y;
       
    }
    void roll(){
      
      result = (int)(Math.random()*6)+1;
      totalDots += result;
      
    }
    void show(){
      
      fill(255);
      rect(myX-25, myY-25, 50, 50);
      fill(0);
      if(result == 1)
        ellipse(myX, myY, 10, 10);
      else if(result == 2){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
      }
      else if(result == 3){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
        ellipse(myX, myY, 10, 10);
      }
      else if(result == 4){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY+12.5, 10, 10);
        ellipse(myX-12.5, myY-12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
      }
      else if(result == 5){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY+12.5, 10, 10);
        ellipse(myX-12.5, myY-12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
        ellipse(myX, myY, 10, 10);
      }
      else if(result == 6){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY+12.5, 10, 10);
        ellipse(myX-12.5, myY-12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
        ellipse(myX-12.5, myY, 10, 10);
        ellipse(myX+12.5, myY, 10, 10);
      }
    }
}
