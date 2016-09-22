int option = 1;
int moveY;

void setup() {
  size(300, 300);
}

// this 'pattern change on click' code is 
// from the 'repeat' example you demoed in class
void mousePressed() {
  option++;
  if (option > 6) option = 1;
}

void draw() {
  background(255);
  
  // pattern 1
  if (option == 1) {
    for (int x = 50; x <= width - 50; x += 20) {
        for (int y = 50; y <= height - 25; y += 20) {
          line(x-1, y, x+1, y);
        }
        for (int y = 50; y <= height - 25; y += 20) {
          line(x+1, y, x, y+1);
        }
    }
  }
  
  // pattern 2
  if (option == 2) {
    for (int x = 50; x <= width - 50; x += 50) {
        for (int y = 50; y <= height - 50; y += 50) {
          line(x-40, y-40, x+40, y+40);
          line(x+40, y+40, x-40, y+40);
        }
    }
  }
  
  // pattern 3
  if (option == 3) {
    background(255);
    
    // PRESS 'W' OR 'S' KEYS TO MOVE DOTS UP/DOWN
    if(keyPressed){
      if(key == 's'){
        moveY+=2.5;
      }
      else if(key == 'w'){
        moveY-=2.5;
      }
    }
    
    for (int x = 5; x <= width - 50; x += 50) {
        for (int y = 5; y <= height - 50; y += 50) {
          line(x, y+moveY, x, y+moveY);
          line(x+10, y+10, x-10, y+10);
        }
    }
  }
  
  // pattern 4
  if (option == 4) {
    for (int x = 100; x <= width - 5; x += 5) {
        for (int y = 100; y <= height - 5; y += 5) {
          line(x-100, y-100, x+100, y+100);
          line(x+100, y+100, x-100, y+100);
        }
    }
  }
  
  // pattern 5
  if (option == 5) {
    background(255);
    
    // PRESS 'D' OR 'S' TO MOVE LINES/ARROWS AROUND
    if(keyPressed){
      if(key == 'd'){
        moveY+=5;
      }
      else if(key == 'a'){
        moveY-=55;
      }
    }
    
    for (int x = 10; x <= width - 5; x += 50) {
        for (int y = 100; y <= height - 50; y += 5) {
          line(x-100, y-100, x+100, y-moveY);
          line(x+100, y+moveY, x-100, y+100);
        }
    }
  }
  
  // pattern 6
  if (option == 6) {
    background(255);
    
    // PRESS 'W' OR 'S' TO MOVE LINES UP/DOWN
    if(keyPressed){
      if(key == 'w'){
        moveY+=20;
      }
      else if(key == 's'){
        moveY-=20;
      }
    }
    
    for (int x = 99; x <= width - 5; x += 5) {
        for (int y = 1; y <= height - 50; y += 50) {
          line(x-5, y-100, x+100, y-moveY);
          line(x, y, x, y+moveY);
        }
    }
  }
  
  
}