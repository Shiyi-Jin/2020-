void setup() {
  size(1280, 720);
  colorMode(RGB, 256, 256, 256, 1);
  background(0);
  JSY();
}

void JSY() {
  String []str;
  str = new String[4];
  str[0] = "JSY isn't good at programming!'";
  str[1] ="JSY is trying her best on programming.";
  str[2] ="JSY has met some trouble programming.";
  str[3] ="JSY will overcome difficults.";

  for (int j =0; j<str.length; j++) {
    pushMatrix();
    translate(25, 100+150*j);
    for (int i = 0; i < str[j].length(); i++) {
      int w= (i+1)%9;
      char c = str[j].charAt(i);          
      int cl = int(c);
      println(cl);
      translate(30, 15*cos(w*PIE/4));
      fill(random(224), random(255), random(139, 255), 0.8);
      noStroke();
      judge(cl);
    }
    popMatrix();
  }
}
