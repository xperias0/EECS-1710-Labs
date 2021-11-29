class Element{
 float speed =0.1;
 float size = 15;
 float speedX = 1;
 float speedY = speed;
 float ballX;
 float ballY;
 float x =40;
  void show(float alpha){
    
  for(int i=0;i<=width;i+=80){
   for(int j=0;j<=height;j+=80){
     ballX = i+40;
     ballY = j+40;
    
    
   stroke(0);
   fill(92,167,186,alpha);
   rect(i,j,sizeX,80);
   fill(255,66,93,alpha);
   rect(i,j,sizeX1,80);
   fill(248,232,137,alpha);
   rect(i,j,80,sizeY);
   fill(174,221,129,alpha);
   rect(i,j,sizeX,sizeY1);
   

   noStroke();
   fill(255);
  // ellipse(ballX,ballY,size,size);
  // ellipse(x,40,size,size);
    x+=speed;
   ballX+=1;
   ballY+=speedY;
   if(x>=i+80){
   speed*=-1;
   }
   if(x<=i){
   speed*=-1;
   }
   
  
   
   
   
   
   }
  }
  
  }
  

 




}
