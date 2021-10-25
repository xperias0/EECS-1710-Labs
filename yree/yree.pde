//////////////////////////////////////////////////////////////
//credit:
//batman.gif :   printerest.com
//ghost.png  :   pikpng.com
//exp.png    :   toppng.com
//bleeding   :   blackpearldecals.com

/////////////////////////////////////////////////////////////
PImage [] gif;
PImage s;
PImage bleed;
float s1= 5;
int pic=1;
int index=1;
PShape tree;
PShape cloud;
float x=180;
float y=400;
float x1=130;
float y1=100;
float speed=0;
float cSpeed=0;
float xPos;
float yPos;
Boolean pressed=false;

float bY=700;
float tY=0;
float textE=20;
float textS;
Button b ;
Enemy e;


void setup(){
  
size(800,700,P2D);
gif = new PImage[13];
s = loadImage("5.png");
bleed = loadImage("bleeding.png");
bleed.resize(100,100);
while(index<13){
gif[index]=loadImage(index+".png");
gif[index].resize(100 ,100);
index++;
}

noSmooth();
frameRate(45);
b = new Button();
e = new Enemy();
yPos = height/2+20;




}
////////////////////////////
////////////////////////////

void draw(){
noStroke();
fill(28,28,28,80);
rect(0,0,width,height);

fill(255, 218, 185);
textSize(textE);
text("Press the pink button to start, and press again to jump ",120,550);

if(mouseY<=590||mouseY>=650){
textS=25;
fill(255 ,193, 37,90);
textSize(textS);
text("Please keep the mouse inside the box",150,620);
}else textS=0.1;



x-=speed;
x1-=cSpeed;
if(x<=-350){
x=width;
}
noFill();
tree();

shape(tree);
cloud();
image(s,s1,height/2,100,100);

/////////////////////////////BUTTON///////////////////////////////////
    if(mousePressed&&b.isInside()==true){
    stroke(220,220,220);
    fill(105,105,105);
    speed = 2;
    cSpeed = 0.5;
    pressed = true;
    yPos = lerp(yPos,yPos-100,0.09);
    
    }
    else{
      if(yPos<=height/2){
      yPos+=9;
    }
     b.button(330,590);
   }
   if(pressed==true){
     textE=  0.1;
     e.enemy();
     
     e.chase(xPos,yPos);
     e.title();
     s1=-500;
/////////////////////////////////////batman/////////////////////////////////////
    xPos = lerp(xPos,mouseX,0.08);
   image(gif[pic],xPos-20,yPos,100,100);
    pic ++;
    if(pic>12){
    pic =1;
    }
   }
 ////////////////////////////////////button///////////////////////////////////////  
   
  
   if(e.health==0){
  
   tY= lerp(tY,400,0.07);
   bY= lerp(bY,170,0.07);
   
   pressed = false;
   
   
   
   fill(0);
   rect(0,0,width,height);
   
   fill(139 ,58, 58);
   textSize(80);
   text("GAME OVER",160,tY);
   
   fill(  34, 139, 34,80);
   textSize(80);
   text("GAME OVER",180,tY);
   
    tint(255,0,0);
   image(bleed,220,bY,350,200);
  
   }
}

























void tree(){
strokeWeight(5);
fill(84 ,255,159);

stroke(84 ,255,159);
tree = createShape();
tree.beginShape();
tree.vertex(1000,y+50);
tree.vertex(x,y+50);
tree.vertex(x,y);
tree.vertex(x-90,y);
tree.vertex(x-0,y-90);
tree.vertex(x-66,y-90);
tree.vertex(x+19,y-160);
tree.vertex(x+108,y-90);
tree.vertex(x+43,y-90);
tree.vertex(x+130,y);
tree.vertex(x+43,y);
tree.vertex(x+43,y+50);
tree.vertex(x+221,y+50);


tree.vertex(0,y+50);
tree.vertex(x+360,y+50);
tree.vertex(x+360,y);
tree.vertex(x+270,y);
tree.vertex(x+366,y-90);
tree.vertex(x+297,y-90);
tree.vertex(x+381,y-160);
tree.vertex(x+469,y-90);
tree.vertex(x+403,y-90);
tree.vertex(x+493,y);
tree.vertex(x+403,y);
tree.vertex(x+403,y+50);
tree.vertex(x+700,y+50);


tree.endShape();

}

void cloud(){
strokeWeight(5);
noStroke();
fill(99 ,184 ,255,170);
//noFill();
ellipse(x1,y1,63,37);
ellipse(x1+15,y1-10,54,58);
ellipse(x1+29,y1-1,60,42);

strokeWeight(5);
noStroke();
fill(99, 184 ,255,170);
//noFill();
ellipse(x1+400,y1+50,63,37);
ellipse(x1+415,y1+40,54,58);
ellipse(x1+429,y1+50,60,42);


}
