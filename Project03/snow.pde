class Snow{
float x = random(width);
float y = random(-700,-50);
float z = random(0,20);
float ySpeed = map(z,0,20,0,10);
float st = random(150,450);
float size = 15;
float f = random(-3,3);
float thick=0;
float al=0;
color c;
void fall(){

 y += ySpeed;
 ySpeed +=0.01;
if(y>height-abs(thick)){
  
y = random(-200,-100);
ySpeed = map(z,0,20,0,1);
}
if(y<=st){
c = 255;
}
if(y>st){
 c= rainbow.get((int)x,(int)y);
}
 

noStroke();
fill(c);
ellipse(x+f,y,size,size);





}

void move(){
  al+=0.008;
thick-=0.01;
x+=f;
}


void ground(){
fill(c,al);



rect(0,height,width,thick);




}






}
