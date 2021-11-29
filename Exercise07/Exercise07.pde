  float sizeX;
  float sizeX1;
  float sizeY;
  float sizeY1;
  float a =255;
  float ballX=500;
  float ballY=500;
  float speedX = 7;
  float speedY = 4;
  Element e= new Element();
  void setup(){
size(1040,1000);

}

void draw(){
  fill(255,255,0);
  ellipse(ballX,ballY,50,50);

  sizeX = map(mouseX,width/2,0,0,80);
  sizeX1 = map(mouseX,width/2,width,0,80);
  sizeY = map(mouseY,0,350,0,80);
   sizeY1 = map(mouseY,450,height,0,80);
   if(mousePressed){
   a-=0.8;
   }else a+=0.3;
   
   if(a>=255){
   a=255;
   }
   if(a<=0){
   a=0;
   }
  e.show(a);
  ballX+=speedX;
  ballY+=speedY;

  if(ballX>=width||ballX<=0){
  speedX*=-1;
  
  }
 if(ballY>=height||ballY<=0){
  speedY*=-1;
  
  }
 
 fill(#F3950D);
textSize(30);
text("Hold mouse to reduce the alpha value when moving",120,80);
 
 
 
}
