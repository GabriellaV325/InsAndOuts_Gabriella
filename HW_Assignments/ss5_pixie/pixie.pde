//pixie by Gabriella Valentin 

//click any key for the text to show and hold it down
//release the key for the text to disappear
//move the mouse around to see the shapes change
//click the mouse to change the colors

import gifAnimation.*;

float r= 255;
float g= 255;
float b= 255;

float opacity= 20;
float fade= 30;
int state=0;

Gif pixie;

void setup(){
  size (800,800);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(35);
  pixie=new Gif(this,"pixie.gif");
  pixie.play();
}

void draw(){
  background(r,g,b);
  image(pixie,width/2,height/2);
  for (int j=2; j<width; j=j+60){
    line(j, 0, j, height);
  }
  
  for (int t=2; t<height; t=t+60){
    line(0, t, width, t);
  }
  
  if (mouseX> width/2){
    fill(0,g,b);
    ellipse(width/2, height/2, 200, 200);
  }
  
  else if(mouseY> height/2){
    fill(r,0,b); 
    rect(width/2,height/2,300,300);
  }
  
  else{
    fill(r,g,0);
    rect(width/2,height/2,400,400);
  }
  if(state==1){
  fill(opacity);
  text("faith trust and pixie dust",width/2, height/2-30);
  opacity= opacity+fade;
  if (opacity>255 || opacity<0){
    fade= -fade;
  }
   }
   else{state=0;
   }
   
}

void keyPressed(){
 state=1;

}
void keyReleased(){
 state=0;

}
 void mousePressed(){
   r=random(255);
   g=random(255);
   b=random(255);
 }
