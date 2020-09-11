//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int x;
int y;

// Add a constructor with parameters to initialize each variable.
public Segment(int x, int y) {
  this.x = x;
  this.y = y;
}
}


//*
// ***** GAME VARIABLES *****
Segment head;
int width = 500;
int height = 500;
int foodX;
int foodY;
int direction = UP;
int eaten;
// All the game variables that will be shared by the game methods are here
//*





//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size(500, 500);
head = new Segment(75, 75);
frameRate(20);
dropFood();
}

void dropFood() {
  //Set the food in a new random location
   foodX = ((int)random(45)*10);
   foodY = ((int)random(45)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background(#0A0500);
  drawFood();
  move();
  drawSnake();
}

void drawFood() {
  //Draw the food
  rect(foodX, foodY, 10, 10);
  fill(#E04F52);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  rect(head.x, head.y, 10, 10);
  fill(#4FE066);
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 

}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if (key == UP) {
    direction = UP;
  }
  if (key == DOWN) {
    direction = DOWN;
  }
  if (key == RIGHT) {
    direction = RIGHT;
  }
  if (key == LEFT) {
    direction = LEFT;
  }
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
  switch(direction) {
  case UP:
    // move head up here 
    break;
  case DOWN:
    // move head down here 
    break;
  case LEFT:
   // figure it out 
    break;
  case RIGHT:
    // mystery code goes here 
    break;
  }
  checkBoundaries();
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 if(head.x < 0 && head.x > 500) {
   head.x = 50;
 }
 if(head.y < 0 && head.y > 500) {
   head.y = 50;
 }
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear

}
