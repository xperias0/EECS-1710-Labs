 /*
  Credit:
  rainbow.jpg:https://www.rgbstock.com/
  class Rain base on: https://www.youtube.com/watch?v=KkyIDI6rQJI , and made changes on it.
  */
  PImage rainbow;
  float sizeX ;
  float sizeY ;

  float textY=250;
  int index;
  String c;
  float v=3;
  Rain[] p ;
  Snow[] s;
  int rainN;
  void setup(){
  size(800,800,P2D);
  index=0;
  rainbow = loadImage("rainbow.jpg");
  rainbow.resize(800,800);
 
    p =new Rain[550];
    s =new Snow[500];
  for(int i =0; i<p.length;i++){

  p[i]= new Rain();
  } 
  
  for(int j =0; j<s.length;j++){
  s[j]= new Snow();
  } 
  
  println(index);
  
  
}

void draw(){
 background(0);
 textSize(30);
 text("Click mouse to change scene",150,50);
 
 
 sizeX = 15;
 sizeY = map(mouseY,0,height,0,40);
 if(index==0){
 for(int i=0;i<=300;i++){
  float  x=random(width);
  float y=random(height);
 color c = rainbow.get((int)x,(int)y);
 noStroke();
 fill(c);
 ellipse(x,y,sizeX,sizeY);
 }
 
 }
 
   if(mousePressed){
 //index = index+(int)random(1,2);
   index +=1;
if(index>2){
index=1;
}
 }
 

 if(index==2){
    String s = "slower";
     String f = "faster";
   textY+=v;

   c=f;
   if(textY>=400){
   v= 1;
   v*=-1;
   }
   if(textY<=250){
     
   v*=-1;
   v=3;
   }
   if(v<1){
   c=s;
   }
  
  fill(255);
  text(c,700,textY);
   
   
  for(int i=0;i<p.length;i++){
p[i].fall();
}
 
 }

if(index==1){
  
 for(int j=0;j<s.length;j++){
s[j].fall();
s[j].move();
s[j].ground();
}
}
 

  }
  
  
