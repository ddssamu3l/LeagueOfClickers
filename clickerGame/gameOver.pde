void gameOver(){
   background(255, 0, 0);
   theme.pause();
   theme.rewind();
   gg.play();
   System.out.println("GAME OVER LOSER!");
   textSize(80);
   text("GAME OVER LOSER!", 400, 400);
   text("high score: "+score, 400, 500);
 }
