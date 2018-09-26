//Blue Dream by Gabriella Valentin

int grass=12;
float strain=24;

void setup(){
  size(1080,720);
  background(10,128,106);

  fill(39,161,27); 
  stroke(0);
  strokeWeight(4.5);
  triangle(30,20,40,350,350,350);
  
  strokeWeight(2.5);
  stroke(51,203,189);
  fill(30, 76, 25);  
  ellipse(520,420,50,90);
}
void draw(){
  stroke(0,175,0);
  fill(0,255,0);
  rect(0+strain,grass,40,50);
  grass=grass+2;
}

void mousePressed(){
  stroke(45);
  fill(56);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY, 40, 20);
  println("BLAZERS!!!!!!!!!!");
}

void keyPressed(){
  background(255);
}
  
