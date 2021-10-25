class Button{
   float x;
   float y;
   
   void button(float width,float height){
    strokeWeight(3);
     stroke(255,255,255);
    fill(  255, 62, 150);
    rect(mouseX-50,height,100,50);
    fill(171 ,130, 255,20);
    rect(0,height,800,50);
   }

  Boolean isInside(){
      if(mouseX>=330&&mouseX<=430){
      return true;
    }
      else if(mouseY>590&&mouseY<=630){
      return true;
      }
      
      else return false;
    }

  








}
