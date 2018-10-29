// Forest Quest by Gabriella Valentin
// the ellipse game code is what had been implemented

String state= "pregame";

PImage forest;
PImage deadforest;
PImage surprise;
PImage Mian;
PImage fire;

void setup(){
  size(1024,557);
  forest=loadImage("forest.jpg");
  deadforest=loadImage("deadforest.jpg");
  surprise=loadImage("surprise.jpg");
  Mian=loadImage("Mian.jpg");
  fire=loadImage("fire.jpg");
  textSize(20);
}

void draw(){
  if(state=="pregame"){
    background(0);
    text("hi there, click to begin",width/2,height/2);
  }else if(state=="game"){
    background(0);
    text("Mian will be with you,click to move along",width/2,height/2);
    image(Mian,pmouseX,pmouseY,100,100);
  }else if(state=="game1"){
    image(deadforest,0,0,1024,1024);
    text("this is the dark forest where all perish who enter", width/2,height/2);
    text("let's go on ahead then",width/4,460);
  }else if (state=="game2"){
   image(fire,0,0,1024,1024);
   text("the fires consumed the dark forest lifting a curse", width/2,height/2);
 }else if(state=="gameover"){
    image(forest,0,0,1024,1024);
    text("Welcome to Elisya, thought you would take long?",width/4,230);
    fill(255);
    text("hold down any key for a surprise", width/4,460);
  }
}
 void keyPressed(){
   image(surprise,0,0,1024,1024);
   text("just kidding",width/4,450);
 }
  
//click the mouse to make the image and text appear
void mousePressed(){
 if(state=="pregame"){
   state="game";
 }else if(state=="game"){
   state="game1";
 }else if(state=="game1"){
  state="game2";
}else if(state=="game2"){
state="gameover";
}
}
