void game(){
   background(#E8E7CC);
   strokeWeight(6);
   fill(#846CA0);
   tactile(30, 30, 60, 30);
   rect (30, 30, 60, 30);
   fill(0);
   textSize(15);
   text("pause", 60, 45);
   image(lol, x-circleD/2, y-circleD/2, circleD, circleD);
   textSize(40);
   text("score: "+score, 150, 700);
   text("lives: "+lives, 650, 700);

   
   x +=vx;
   y+= vy;
   if(x-circleD/2<=0 || x+circleD/2>=800)
     vx*= -1;
   if(y-circleD/2<=0 || y+circleD/2>=800)
     vy *= -1;
   // BOUNCE CODE
} // END OF GAME ==============================================

void gameClicks(){
 if(dist(x, y, mouseX, mouseY)<=circleD/2+3){
    score++; 
    coin.rewind();
    coin.play();
    circleD-= circleD/10;
    
 }
 else if(mouseX>=27 && mouseX<=93 && mouseY>=27 && mouseY <=63){
    mode = pause; 
 }
 else{
    lives--;
    bump.rewind();
    bump.play();
    if(lives<=0){
    mode = gameOver;
  }
}
}
