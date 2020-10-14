void intro () {
  theme.play();
  background (255);
  fill (255);
  rect(100, 300, 200, 100);
  rect (500, 300, 200, 100);
  textSize (75);
  textAlign (CENTER, CENTER);
  fill(0);
  text ("start", 200, 350);
  fill (0);
  text ("clicker game", 400, 200);
  fill (0);
  textSize (55);
  text ("options", 600, 350);
}

void introClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) 
    mode = GAME;
}
