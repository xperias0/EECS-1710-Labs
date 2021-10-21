float recH;
int s;
int m;
int h;
float speed= 0.8;
float moveM=0;
float moveH=0;
float colorR;
float colorG;
float colorB;
void setup(){
size(780,780,P2D);

recH=height/60;

}


void draw(){
 s = second();
 m = minute();
 h = hour();  

fill(128,138,135);
rect(0,0,width,height);

for(int i=0;i<=height;i+=130){
fill(#FFDAB9);
rect(0,i,width,2);
}




seconds();

        //redraw everyMIN
        if(s==0){
          fill(#F9F3DF);
        rect(0,0,width,height);
        
        for(int i=0;i<=height;i+=130){
        fill(#708090);
        rect(0,i,width,2);
        }
      
       }

minutes();
hours();
}

void seconds(){

pushMatrix();
//noStroke();
//createFont("Cambria",16);
//textSize(12);
fill(0);
text(s,0,13*s);
if(s%2==0){

fill(#889EAF);
rect(0,13*s,1+13*s,13);
}
else{
 
fill(#00A19D);
rect(0,13*s,1+13*s,13);

}
popMatrix();

}

void minutes(){
pushMatrix();
moveM+= speed;
if(moveM>=160||moveM<=0){;
speed*=-1;
}
rectMode(CORNER);
//textSize(20);
//fill(0);
//text(m,520,13*m+18);
noStroke();

colorR=map(moveM,0,309,0,255);
colorG=map(moveM,0,309,120,228);
colorB=map(moveM,0,309,130,255);

fill(colorR,colorG,colorB);
rect(moveM,0,150,13*m);
popMatrix();
}

void hours(){

pushMatrix();
rectMode(CORNER);
//textSize(30);
//fill(0);
//text(h,600,13*h);
noStroke();
fill(255,228,225);
rect(309,0,width/8,13*h);
popMatrix();



}
