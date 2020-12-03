float d;
float buttonWidth = 80;
float buttonHeight = 40;
boolean pickFlower, pickSnow, pickSquare;
color cc1 = color(random(224), random(255), random(139, 255), 15);
color cc2 = color(random(224), random(255), random(139, 255), 15);
float xx = constrain(mouseX, 150, 1260);
float yy = constrain(mouseY, 20, 700);

void setup() {
  size(1280, 720);
  colorMode(RGB, 256, 256, 256, 100);
  background(255);
}

void draw() {
  pushStyle();
  fill(255);
  noStroke();
  rect(0, 0, 140, 290);
  popStyle();

  judgeStroke1();
  showButton(50, 50+(buttonHeight+20)*0, buttonWidth, buttonHeight, cc1);
  judgeStroke2();
  showButton(50, 50+(buttonHeight+20)*1, buttonWidth, buttonHeight, cc1);
  judgeStroke3();
  showButton(50, 50+(buttonHeight+20)*2, buttonWidth, buttonHeight, cc1);

  noFill();
  stroke(cc2);
  rect(150, 20, 1110, 680);
  judgeStroke4();
  fill(cc2);
  ellipse(90, 250, 60, 60);
  if (dist(mouseX, mouseY, 90, 250)<=30) {
    if (mousePressed) {
      background(255);
    }
  }
  float target = dist(mouseX, mouseY, pmouseX, pmouseY);
  d = target;
  judge();
  if ( pickFlower) {
    if (mousePressed) {
      flower(d);
    }
  }
  if (pickSnow) {
    if (mousePressed) {
      snow(d);
    }
  }
  if (pickSquare) {
    if (mousePressed) {
      square(d);
    }
  }
}

void judge() {
  if (mousePressed&&(mouseX < 50 + buttonWidth && mouseX > 50 &&
    mouseY < 50 + buttonHeight && mouseY > 50)) {
    pickFlower=true;
    pickSnow=false;
    pickSquare=false;
  }
  if (mousePressed&&(mouseX < 50 + buttonWidth && mouseX > 50 &&
    mouseY < 50 + (buttonHeight*2+20) && mouseY > 50+(buttonHeight+20))) {
    pickSnow=true;
    pickSquare=false;
    pickFlower=false;
  }
  if (mousePressed&&(mouseX < 50 + buttonWidth && mouseX > 50 &&
    mouseY < 50 + (buttonHeight*3+40) && mouseY > 50+(buttonHeight*2+40))) {
    pickSquare=true;
    pickSnow=false;
    pickFlower=false;
  }
}
