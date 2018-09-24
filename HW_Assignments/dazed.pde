//dazed by Gabriella Valentin

int doe=700;
float buck=.5;

void setup(){
  size (1070,730);
  background (11,115,54);
}

void draw(){  
if(mouseX>width/3){
    fill(60,169,35);
    quad(3,5,20,50,80,50,60,30);
  strokeWeight(5);
  stroke(30,15,200);
}
else if (mouseY<height/3){
  fill(60,97,145);
  triangle(100,200,400,600,500,300);
  strokeWeight(1);
  stroke(60,80,255);

stroke(1188,56,126);
  fill(0,0,255);
  rect(0+doe,buck,50,50);
  buck=buck+.5;
}
}
void mousePressed(){
  fill(145,60,13);
  stroke(0,255,0);
  ellipse(mouseX,mouseY,50,50);
  ellipseMode(CENTER);
  println("confusion");
}

void keyPressed(){
 background(0);
}
 

  
  
  

 
 
  
  
  
