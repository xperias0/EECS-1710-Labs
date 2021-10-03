PImage earth;
PImage rocket;
float x=150;
float y=390;
float speedX=2;
float scale=100;

void setup(){

size(800,800,P2D);
earth = loadImage("earth.png");
rocket = loadImage("rocket.png");
earth.resize(400,400);
//rocket.resize(80,40);
}

void draw(){
fill(0,20);
rect(0,0,width,height);


fill(255);
image(earth,200,200);
image(rocket,x,y,scale,scale/2);




ellipse(random(width), random(height), random(8), random(8));

x+=speedX;

if(x==550||x==150){
speedX*=-1;
}
if(x==520){
scale=0;
}else if (x==150){
scale=100;

}

}
