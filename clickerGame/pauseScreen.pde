void pauseScreen (){
    fill(#846CA0);
   rect (30, 30, 60, 30);
   fill(0);
   textSize(12);
   text("resume", 60, 45);
   theme.pause();
}

void pauseClicks(){
  if(mouseX>=27 && mouseX<=93 && mouseY>=27 && mouseY <=63){
     mode = game; 
     theme.play();
  }
}
