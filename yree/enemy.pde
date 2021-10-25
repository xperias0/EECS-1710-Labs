class Enemy{

float x=800;

float y=350;
float speedx=5;;

PImage ghost;
PImage explo;

float gSize = 0;

int health = 3;

float dis;

void enemy(){
  ghost = loadImage("ghost.png");
  ghost.resize(100,100);
  image(ghost,x,y);
  x -=speedx;
  if(x<=0){
   x = 810;
   y = random(0,350);
      }
 }
 
 
 
 


void chase(float batX,float batY){
    
    if(x-batX>=100){
    x = lerp(x,batX,0.01);
     y = lerp(y,batY,0.05);
    }
  dis = abs(y-batY);
  if(x-batX<=5&&dis<=50&&x-batX>=0){
  explo = loadImage("exp.png");
  explo.resize(50,50);
  gSize = lerp(gSize,100,1);
  image(explo,x,y,gSize,gSize);
  health -=1;

  }

}

void title(){
fill(0,255,127);
textSize(20);
text("Health :"+health,50,50);


}



}
