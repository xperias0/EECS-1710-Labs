//Credit:
//alphabet.jpg : https://closed-studio.vercel.app/work/2019-2020/tmetcalf-a5/


////Press any button to generae a character on the window.

PImage alpha;
float x;
float y;
int index;
int row;
int coloum;
int size = 10;

int currentKey;
char button[]= {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '?', '!'};

void setup() {
  size(700, 480);


  alpha = loadImage("alphabet.jpg");
  alpha.resize(700, 480);
  background(255);
  //image(alpha,0,0);
}



void draw() {

  for (int i=0; i<button.length; i++) {
    if (keyPressed&&key==button[i]) {
      currentKey = i+1;
    }
  }




  for (int i=0; i<=6; i++) {
    for (int j =0; j<=4; j++) {
      fill(255);
      noStroke();
      ellipse(random(width), random(height), size, size);
     
      if (keyPressed) {
        x = random(coloum*100, coloum*100+100);
        y = random(row*120, row*120+120);
        color c = alpha.get((int)x, (int)y);

        fill(c);
        ellipse(x, y, size, size);
        index=currentKey;
      } 

      fill(255, 0, 0);

      if (index<=7) {
        row=0;
        coloum = index-1;
      } else if (index>=7) {


        if (index==14||index==21||index==28) {
          row=(index/7)-1;
          coloum=6;
        } else if (index!=14||index!=21||index!=28) {
          coloum = (index%7)-1;
          row = index/7;
        }
      }
    }
  }
}
