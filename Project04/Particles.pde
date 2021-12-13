class Particle{

  float x;
  float y;
  float size;
  float rdSize = random(15,35);
  float speedx =1;
  float speedy = 3;
  PVector ball = new PVector(random(width),random(160,height));
  PVector speed = new PVector(random(-speedx,speedx),random(-speedy,speedy));
  void show(color a,AudioPlayer p){
  x = ball.x;
  y = ball.y;
 
  noStroke();
  fill(a);
 
  ellipse(x,y,rdSize-p.mix.get(50)*10,rdSize-p.mix.get(51)*10);
  ball.add(speed);
  //addText();
  bounce();

  }


  void bounce(){
  if(ball.x>=width||ball.x<=150){
  speed.x*=-1;
  
  }
  if(ball.y>=height||ball.y<=165){
  speed.y*=-1;
  
  }
  }
  
  void addText01(color a){
   fill(255);
   textSize(20);
   text("(Press'a')track01: ",830,83);
   fill(a);
   ellipse(1027,76,20,20);
    
  }
  
  void addText02(color a){
   fill(255);
   textSize(20);
   text("(Press'd')track02: ",830,111);
    fill(a);
   ellipse(1027,104,20,20);
  }
  
  void addText03(color a){
   fill(255);
   textSize(20);
   text("(Press'q')track03: ",830,140);
    fill(a);
   ellipse(1027,136,20,20);
  }
  
  
}
