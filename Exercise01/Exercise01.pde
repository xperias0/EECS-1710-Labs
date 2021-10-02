void setup(){
  size(800,800);
  background(255);
  frameRate(10);
}

void draw(){
  
 if(mousePressed){
  fill(random(0,255),random(0,255),random(0,255));
 strokeWeight(10);
 rect(mouseX,mouseY,random(0,100),random(0,100));
 stroke(random(0,255),random(0,255),random(0,255));
 
 }



}
