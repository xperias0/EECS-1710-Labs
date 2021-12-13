//  This is a Project that allow user to custom the times of looping 
//  and then generate the same number of particles of the times looping 
//  times, and the size of each particles is maping the track that they
//  represent to.

//* For the main track: click the mouse button to play.
//* For each track:Press button once will not looping many times. Press 
//  space to increase the times of looping, and then press the track button
//  to start looping 

//* Press 'a' to play track01
//* Press 'd' to play track02
//* Press 'q' to play track03
//* Press 's' to pause all the playing track
//* Press 'c' to clear all the particles that generated

//  Credit:All tracks from www.freesound.org

import processing.sound.*;
import ddf.minim.*;

Minim minim;
AudioPlayer main;
AudioPlayer sound1;
AudioPlayer currentSound; 
AudioPlayer drum1;
AudioPlayer sound2;
color[] c = new color[10];
color s1;
color d1;
color s2;
Shapes s = new Shapes();
int loopTimes =0;
String stringSd;
Boolean isZero = false;
Boolean smor = false;
Boolean mor =false;
Boolean s2mor = false;
Particle t = new Particle();
ArrayList<Particle> sound01 = new ArrayList<Particle>();
ArrayList<Particle> drum01 = new ArrayList<Particle>();
ArrayList<Particle> sound02 = new ArrayList<Particle>();
void setup(){
  size(1100,800,P3D);
  minim = new Minim(this);
  main = minim.loadFile("Piano01.mp3");
 sound1 = minim.loadFile("drum.mp3");
 drum1 = minim.loadFile("sample.mp3");
 sound2 = minim.loadFile("track03.mp3");
 c[0] = color(#AE4CCF);
 c[1] = color(#FF2442);
 c[2] = color(#519259);
 c[3] = color(#E6E6E6);
 c[4] = color(#FF6A38);
 c[5] = color(#FF4893);
 c[6] = color(#9EF5CF);
 c[7] = color(#D06224);
 c[8] = color(#344CB7);
 c[9] = color(#FFCC1D);

}

void draw(){
 
  noStroke();
  rectMode(CORNER);
  fill(10,15);
  rect(0,0,width,height);
  fill(#336633,60);
  ellipse(width/2,750,1180-main.mix.get(50)*200,1180 - main.mix.get(51)*200);
  
  stroke(255);
  strokeWeight(5);
  line(0,150,width,150);
  s.generate();
  stop();
fill(255);
textSize(16);
text("CurrentSound is : "+stringSd,10,30);

fill(255);
textSize(20);
text("Current times of looping is : "+loopTimes,10,90);

textSize(20);
text("Press space to increase the times of looping",10,128);

text("Click mouse to start main track",10,178);


textSize(15);
text("*Press 'c' to clear all the particles",10,780);
text("*Press 's' to pause all the sound",10,760);
System.out.println(drum1.position());
t.addText01(s1);
t.addText02(d1);
t.addText03(s2);
//////sound01
for(Particle p: sound01){
p.show(s1,sound1);
}
//////drum01
for(Particle drum: drum01){
drum.show(d1,drum1);
}
for(Particle track03: sound02){
track03.show(s2,sound2);
}
//////text
//for(Particle text: text01){
//text.addText();
//}
}
void keyPressed(){
  //space
  if(keyCode==32){
    loopTimes+=1;
    
  }
 if(key=='a'){  
sound1.play();
sound1.rewind();
if(loopTimes<=1&&smor==false){
addSound01Partis();
smor =true;
}
else if(loopTimes>1){
for(int i=0;i<loopTimes;i++){
addSound01Partis();
}
}
sound1.loop(loopTimes);
//addSound01Partis();
System.out.println("loopcount:"+sound1.loopCount());

currentSound = sound1;
stringSd = "track01";
loopTimes = 0;

}

 if(key=='d'){
drum1.play();
if(loopTimes<=1&&mor==false){
addDrum01Partis();
mor =true;
}
else if(loopTimes>1){
for(int i=0;i<loopTimes;i++){
addDrum01Partis();
}
}

drum1.loop(loopTimes);
if(drum1.isPlaying()==true){
drum1.rewind();
}
currentSound = drum1;
stringSd = "track02";
loopTimes = 0;
}

 if(key=='q'){
sound2.play();
if(loopTimes<=1&&s2mor==false){
addSound02Partis();
s2mor =true;
}
else if(loopTimes>1){
for(int i=0;i<loopTimes;i++){
addSound02Partis();
}
}

sound2.loop(loopTimes);
if(sound2.isPlaying()==true){
sound2.rewind();
}
currentSound = sound2;
stringSd = "track03";
loopTimes = 0;
}


else if(key=='c'){
clear();
 }

}


void mousePressed(){
 
  if(main.isPlaying()==false){
main.play();
main.loop(loopTimes);
stringSd = "Main";
loopTimes = 0;
}
  else if(main.isPlaying()==true){
 main.pause();
  }
  }
  
  
  void addSound01Partis(){

s1 = c[(int)random(10)];
Particle p = new Particle();
sound01.add(p);

}

  void addDrum01Partis(){

d1 = c[(int)random(10)];
Particle drum = new Particle();
drum01.add(drum);

}
void addSound02Partis(){

s2 = c[(int)random(10)];
Particle track03 = new Particle();
sound02.add(track03);

}


void clear(){
if(sound01.size()==0){
isZero=true;
}else if(sound01.size()>0){
isZero = false;

}
if(isZero==false){
sound01.clear();
drum01.clear();
sound02.clear();
 } 
}

void stop(){
if(keyPressed&&key=='s'){
main.pause();
sound1.pause();
drum1.pause();
sound2.pause();
}

}
