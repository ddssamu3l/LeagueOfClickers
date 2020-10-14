import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

AudioPlayer theme, coin, bump, gg;

PFont dance;


int mode;
int home;
int game;
int gameOver;
int pause;
int options;
// mode variables
int sizeX;
int sizeY;
int vx;
int vy;
int x;
int y;
float circleD;
int lives;
int score;
int sliderY;

PImage lol;

void setup(){
  sizeX = 800;
  sizeY = 800;
  size(800, 800);
  background(#E8E7CC);
  home = 0;
   game = 1;
   gameOver = 2;
   pause = 3;
   options = 4;
   mode = home; // starts at homescreen
   vx = 4;
   vy = 2;
   x = sizeX/2;
   y = sizeY/2;
   circleD = 200;
   lives = 5;
   score = 0;
   strokeWeight(6);
   sliderY = 391;
   
   lol = loadImage("face_lol.png");
   
   dance = createFont("Dance.ttf", 70);

   minim = new Minim(this);
   theme = minim.loadFile("mario bros theme.mp3");
   bump = minim.loadFile("bump.wav");
   coin = minim.loadFile("coin.wav");
   gg = minim.loadFile("gameover.wav");
   
}

void draw(){
  if(mode == home){ // home
  gg.pause();
  
    theme.play();
  
     background(#E8E7CC); 
        strokeWeight(3);
    fill(#4F35E5);
    textAlign(CENTER , CENTER);
    textSize(70);
    textFont(dance);
    text("LEAGUE OF CLICKERS", 400, 200); // homescreenText
    
     strokeWeight(6);
     fill(#FFE979);
     tactile(300, 600, 200, 80);
     rect(300, 600, 200, 80);
     textSize(45);
     tactile(300, 500, 200, 80);
     rect(300, 500, 200, 80);
     fill(0);
      text("options", 400, 540);
      text("START!", 400, 640);
     
   
     lives = 5;
     score = 0;
     vx = 4;
     vy = 2;
   
  }
  else if(mode == game){ // game
       game();
   }
   else if(mode == pause){
      pauseScreen(); 
   }
   else if(mode == gameOver){ // gameOver
      gameOver(); 
   }
   else if(mode == options){
       optionsScreen();
   }
  
} // END OF DRAW ==============================================================
void mousePressed(){
   if(mode ==  home && mouseX>300 && mouseX<500 && mouseY >600 && mouseY <680){
      mode = game; 
   }
   else if(mode == home &&  mouseX>300 && mouseX<500 && mouseY >500 && mouseY <580){
      mode = options; 
   }
   else if(mode == game ){
     gameClicks();
   }
  else if(mode == pause){
     pauseClicks(); 
  }
   else if(mode == gameOver){
      mode = home; 
   }
   else if(mode == options){
      optionClicks(); 
   }
   else {
      System.out.println("mode error "+ mode); 
   }
} // END OF MOUSEPRESSED ==========================================================

void tactile(int x,int y, int w, int h){
    if(mouseX>=x && mouseX<= x+w && mouseY>=y && mouseY <=y+h){
       stroke(255); 
    }
    else{
        stroke(0);
    }
} // END OF TACTILE =============================================================
void mouseDragged(){
  if(mode == options)
   controlSlider(); 
}

void controlSlider(){
   if(mouseY >290 && mouseY <450 && mouseX>= 275 && mouseX<=325){
      sliderY = mouseY; 
   }
} // END OF CONTROLSLIDER =========================================================
