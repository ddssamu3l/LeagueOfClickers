void optionsScreen(){
   background(#E8E7CC);
   fill(#E8E7CC);
   
  tactile(30,30, 200, 200);
   rect(30, 30,200, 200);
   image(loadImage("face_lol.png"), 31, 31, 198, 198);
   
      tactile(30, 260, 200, 200);
   rect(30, 260, 200, 200);
   image(loadImage("face_megusta.png"), 31, 261, 198, 198);
   
      tactile(30, 490, 200, 200);
   rect(30, 490, 200, 200);
   image(loadImage("face_rage.png"), 31, 491, 198, 198);
   
   tactile(625, 700, 150, 75);
   rect(625, 700, 150, 75);
   fill(0);
   textSize(30);
   text("done", 700, 737);   
   
   fill(0);
   textSize(50);
   text("CHOOSE YOUR TARGET!", 525, 50);
   
   stroke(255);
  fill(255);
  line(300, 290, 300, 450);
  stroke(0);
  circle(300, sliderY, 50); 
 circleD = map(sliderY, 280, 455, 50, 200);// slider================
    image(lol, 350, 260, circleD, circleD);

}
void optionClicks(){
    if(mouseX>=625 && mouseX<=775 && mouseY >= 700 && mouseY <=775){
       mode = home; 
    }
   else if(mouseX>=31 && mouseX<=230 && mouseY >= 30 && mouseY <=230){
   lol = loadImage("face_lol.png");
}
   else if(mouseX>=31 && mouseX<=230 && mouseY >= 260 && mouseY <=460){
     lol = loadImage("face_megusta.png");
   }
   else if(mouseX>=31 && mouseX<=230 && mouseY >= 491 && mouseY <=689){
      lol = loadImage("face_rage.png"); 
   }

}
