Die bob;
int totalDots = 0;
int oneDot = 0;
int twoDots = 0;
int threeDots = 0;
int fourDots = 0;
int fiveDots = 0;
int sixDots = 0;

void setup(){
  size(500, 500);
  background(0);
  noLoop();
}

void draw() {
  background(0);
  fill(196, 164, 132);
  rect(0, 400, 500, 100);
  for(int diceX = 25; diceX < 500; diceX += 50){
    for(int diceY = 25; diceY < 400; diceY += 50){
      bob = new Die(diceX, diceY);
      bob.show();
    }
  } 
  fill(255);
  textAlign(CENTER);
  textSize(25);
  text("Total Number of Dots: " + totalDots, 250, 430);
  textSize(10);
  text("Dice with 1 dot: " + oneDot, 250, 445);
  text("Dice with 2 dots: " + twoDots, 250, 455);
  text("Dice with 3 dots: " + threeDots, 250, 465);
  text("Dice with 4 dots: " + fourDots, 250, 475);
  text("Dice with 5 dots: " + fiveDots, 250, 485);
  text("Dice with 6 dots: " + sixDots, 250,495);
  if(totalDots > 300){
    text("You got over 300!", 125, 455);
    text("You got over 300!", 375, 455);
    text("WINNER!", 125, 475);
    text("WINNER!", 375, 475);
  }
}

void mousePressed(){
  if(mouseButton == LEFT)
    bob.roll();
  totalDots = 0;
  oneDot = 0;
  twoDots = 0;
  threeDots = 0;
  fourDots = 0;
  fiveDots = 0;
  sixDots = 0;
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
      if(result == 1){
        ellipse(myX, myY, 10, 10);
        oneDot += 1;
      }
      else if(result == 2){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
        twoDots += 1;
      }
      else if(result == 3){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
        ellipse(myX, myY, 10, 10);
        threeDots += 1;
      }
      else if(result == 4){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY+12.5, 10, 10);
        ellipse(myX-12.5, myY-12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
        fourDots += 1;
      }
      else if(result == 5){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY+12.5, 10, 10);
        ellipse(myX-12.5, myY-12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
        ellipse(myX, myY, 10, 10);
        fiveDots += 1;
      }
      else if(result == 6){
        ellipse(myX-12.5, myY+12.5, 10, 10);
        ellipse(myX+12.5, myY+12.5, 10, 10);
        ellipse(myX-12.5, myY-12.5, 10, 10);
        ellipse(myX+12.5, myY-12.5, 10, 10);
        ellipse(myX-12.5, myY, 10, 10);
        ellipse(myX+12.5, myY, 10, 10);
        sixDots += 1;
      }
    }
}
