class Shapes{
float angle=0;
float angle1=0;
float speed =0.008;
PShape p;
boolean rota =false;
int amp;
float x3;
float rectSize;
float rectS = 1;

void generate(){
float flow = main.mix.get(amp);
 if(mousePressed){
    rota = true;
    }  
    //if(main.isPlaying()==false){
    //  rota = false;
    //}
for (int i = 0; i < main.bufferSize() - 1; i++){
    amp=i;
    float x1 = map(i, 0, main.bufferSize(), 0, width);
    float x2 = map(i+1, 0, main.bufferSize(), 0, width);
    strokeWeight(7);
    stroke(#FF6666);
    line(x1, 45 - flow*50, x2, 45 - main.mix.get(i+1)*50);
    strokeWeight(5);
     stroke(#FFFF00);
    line(x1, 48 - flow*50, x2, 51 - main.mix.get(i+1)*50);
    strokeWeight(7);
    stroke(#0066CC);
    line(x1, 55 - flow*50, x2, 58 - main.mix.get(i+1)*50);
  }
////////////////////////////////////////////////////  rect
  pushMatrix();
  fill(#99CCFF);
  rectMode(CENTER);
  translate(width/2,height/2);
  
  if(rota==true){
  rot();
  }
  rectSize = 280;
   rectSize+=rectS;
  rect(0,0,280 - flow*50,280 - flow*50);
  if(rectSize>=350||rectSize<=280){
  rectS*=-1;
  }
 
   if(rota==true){
  reverseRot();
  }
 fill(255,255,0);
 rect(0,0,rectSize - flow*50,rectSize - flow*50);
 popMatrix();
 
////////////////////////////////////////////////////rect
  

 noStroke();
  fill(#FF0033,80);
  ellipse(width/2,height/2,180 - sound1.mix.get(50)*50,180 - sound1.mix.get(51)*50);
  
  fill(#FF0033);
  ellipse(width/2,height/2,100 - sound1.mix.get(50)*50,100 - sound1.mix.get(51)*50);
  noStroke();
  fill(#FF0033,20);
  ellipse(width/2,height/2,140 - sound1.mix.get(50)*100,140 - sound1.mix.get(51)*50);
 /////////////////////////////////////Projection circle 
  noStroke();
  fill(#FF0033,20);
  ellipse(550,730,220 - sound1.mix.get(50)*50,50 - sound1.mix.get(51)*50);
  
  noStroke();
  fill(#FF0033,20);
  ellipse(550,730,180 - sound1.mix.get(50)*50,40 - sound1.mix.get(51)*50);
 
  noStroke();
  fill(#FF0033,30);
  ellipse(550,730,140 - sound1.mix.get(50)*50,20 - sound1.mix.get(51)*50);
  
 
  
 
  ////////////////////////////////////
  
}
void reverseRot(){
rotate(angle1);
angle1-=speed;

}

void rot(){
rotate(angle);
angle+=speed;
}


}
