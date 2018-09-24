//sicsab by Gabriella Valentin (read the title backwards)

float r= 255;
float g= 255;
float b= 255;

void setup(){
  size (800,800);
  rectMode(CENTER);
}

void draw(){
  background(r,g,b);
  
  for (int j=2; j<width; j=j+60){
    line(j, 0, j, height);
    stroke(r,0,0);
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
}

void keyPressed(){
  r= random (0,255);
  g= random (0,255);
  b= random (0,255);
}

void mousePressed(){
  stroke(45,50,90);
  fill(60,80,120);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,60,30);
}
