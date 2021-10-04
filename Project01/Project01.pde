float faceX=400;
float faceY =350;
float faceW = 140;
float faceH = 115;
float time=0;
float eyeX1;
float eyeX2;
float eyeY;
float earHl;
float earHr;
float back;


void setup(){
size(800,800);
frameRate(60);
 
}


void draw(){
 
 
  
  
 if(mousePressed){
 faceX=mouseX-50;
 faceY=mouseY-50;
 }
//background
//fill(255,255,255);
 for(int i=0;i<=height;i+=80){
  fill(133,206,235);
  rect(0,i,width,80);
  fill(127,255,212);
  rect(0,i-80,width,back);
  };
back=map(mouseY,0,height,40,80);

ears();
//face
fill(41,36,33);
noStroke();
ellipse(faceX,faceY,140,115);
line(100,100,faceX-40,faceY);
strokeWeight(10);




eyes();


blink();

}

void eyes(){

fill(255,227,132);
ellipse(faceX-34,faceY,faceW-106,faceH-76);
ellipse(faceX+34,faceY,faceW-106,faceH-76);
//eye balls
fill(41,36,33);
ellipse(eyeX1-3,eyeY,faceW-122,faceH-91);
ellipse(eyeX2,eyeY,faceW-122,faceH-91);

fill(255,255,255);
ellipse(eyeX1+3,eyeY-1,faceW-133,faceH-105);
ellipse(eyeX2+3,eyeY-1,faceW-134,faceH-105);

eyeX1=map(mouseX,0,width,faceX-42,faceX-25);
eyeX2=map(mouseX,0,width,faceX+25,faceX+42);
eyeY = map(mouseY,0,height,faceY-9,faceY+9);
}
void ears(){
//ears
fill(41,36,33);
ellipse(faceX-45,faceY-32,faceW-90,earHl);
ellipse(faceX+45,faceY-32,faceW-90,earHr);

fill(255,192,203);
noStroke();
ellipse(faceX-45,faceY-32,faceW-115,earHl-35);
ellipse(faceX+45,faceY-32,faceW-115,earHr-35);
earHl=map(mouseX,0,width,faceH-46,faceH-10); 
earHr=map(mouseX,0,width,faceH-10,faceH-46); 
}

void blink(){
if(time>40){
fill(41,36,33);
rect(faceX-65,faceY-23,125,44);
}
if(time>=41){
  time=0;
}
time+=0.1;
}
