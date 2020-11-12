void setup(){
 size(1280,720);
 background(255);
 colorMode(RGB,255);
}


void draw(){
 int a = int(random(1280));
 int b = int(random(720));
 int c = int(a+random(-200,200));
 int d = int(b+random(-200,200));
 line(a,b,c,d);
 stroke(random(224),random(255),random(139,255));
 strokeWeight(random(100)); 

 
  if(dist(a,b,c,d)<200){
    noStroke(); 
    ellipse(a/2+c/2,b/2+d/2,a/2-c/2,a/2-c/2);
     
     fill(random(224),random(255),random(139,255));
   }
   
 }
