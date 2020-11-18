void setup() {
  size(900, 900);
  background(255);
  for (int i=0; i<8; i++) {
    int choice= floor(random(3));
    switch(choice) {
    case 0:
      drawshapeA();
      break;
    case 1:
      drawshapeB();
      break;
    case 2:
      drawshapeC();
      break;
    }
  }
}


void drawshapeA() {
  int x=floor(random(1, 9))*100;
  int y=floor(random(1, 9))*100;
  int d=floor(random(1, 6))*100;
  int choice1 = floor(random(5));
  switch(choice1) {
  case 0:
    fill(153, 80, 154);
    break;
  case 1:
    fill(239, 137, 144);
    break;
  case 2:
    fill(251, 219, 214);
    break;
  case 3:
    fill(202, 190, 219);
    break;
  case 4:
    fill(235, 83, 51);
    break;
  }
  strokeWeight(4);
  rect(x, y, d, d);
  stroke(0);
  strokeWeight(4);
  int choice2 = floor(random(4));
  switch(choice2) {
  case 0:
    line(0, y, x+d, y);
    line(x, y+d, 900, y+d);
    break;
  case 1:
    line(x, y, x, 900);
    line(x+d, y+d, x+d, 0);
    break;
  case 2:
    line(x, y, 900, y);
    line(0, y+d, x+d, y+d);
    break;
  case 3:
    line(x, y+d, x, 0);
    line(x+d, y, x+d, 900);
    break;
  }
}


void drawshapeB() {
  int x=floor(random(1, 9))*100;
  int y=floor(random(1, 9))*100;
  int d=floor(random(1, 6))*100;
  int choice1 = floor(random(5));
  switch(choice1) {
  case 0:
    fill(153, 80, 154);
    break;
  case 1:
    fill(239, 137, 144);
    break;
  case 2:
    fill(251, 219, 214);
    break;
  case 3:
    fill(202, 190, 219);
    break;
  case 4:
    fill(235, 83, 51);
    break;
  }
  strokeWeight(4);
  rect(x, y, d, d);
  stroke(0);
  strokeWeight(4);
  int choice2 = floor(random(8));
  switch(choice2) {
  case 0:
    line(x, y+d, x, 0);
    line(x, y, 900, y);
    break;
  case 1:
    line(x, y, 900, y);
    line(x+d, y, x+d, 900);
    break;
  case 2:
    line(x+d, y, x+d, 900);
    line(x+d, y+d, 0, y+d);
    break;
  case 3:
    line(x+d, y+d, 0, y+d);
    line(x, y+d, x, 0);
    break;
  case 4:
    line(x+d, y, 0, y);
    line(x+d, y+d, x+d, 0);
    break;
  case 5:
    line(x+d, y, 0, y);
    line(x, y, x, 900);
    break;
  case 6:
    line(x, y, x, 900);
    line(x, y+d, 900, y+d);
    break;
  case 7:
    line(x+d, y+d, x+d, 0);
    line(x, y+d, 900, y+d);
    break;
  }
}


void drawshapeC() {
  int x=floor(random(1, 9))*100;
  int y=floor(random(1, 9))*100;
  int d=floor(random(1, 6))*100;
  int choice1 = floor(random(5));
  switch(choice1) {
  case 0:
    fill(153, 80, 154);
    break;
  case 1:
    fill(239, 137, 144);
    break;
  case 2:
    fill(251, 219, 214);
    break;
  case 3:
    fill(202, 190, 219);
    break;
  case 4:
    fill(235, 83, 51);
    break;
  }
  strokeWeight(4);
  rect(x, y, d, d);
  stroke(0);
  strokeWeight(4);
  int choice2 = floor(random(4));
  switch(choice2) {
  case 0:
    line(0, y, x+d, y);
    line(x, 0, x, y+d);
    break;
  case 1:
    line(x+d, y, 900, y);
    line(x+d, y, x+d, 0);
    break;
  case 2:
    line(x, y+d, x, 900);
    line(x, y+d, 0, y+d);
    break;
  case 3:
    line(x+d, y+d, x+d, 900);
    line(x+d, y+d, 900, y+d);
    break;
  }
}
