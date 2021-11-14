class Rain{

float x = random(width);
float y = random(-500,-50);
float z = random(0,20);
float ySpeed = map(z,0,20,10,15);
float len = random(10,20);
float st = random( 0,450);
color c;

float vlo;
void fall(){
  
 
  
  
 vlo=map(mouseY,0,height,0,1);
 y += ySpeed;
 ySpeed +=vlo;
if(y>height){
y = random(-200,-100);
ySpeed = map(z,0,20,4,10);
}
 float t = map(z,0,20,1,3);  
 strokeWeight(t);
 
if(y<=st){
c = 255;
}
if(y>st){
 c= rainbow.get((int)x,(int)y);
}
 
 stroke(c);
line(x,y,x,y+len);
 

}



}
