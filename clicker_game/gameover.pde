void gameover () {
  background (0, 255, 0);
  theme.pause();
  gameover.play();
  textSize (75);
  textAlign (CENTER, CENTER);
  fill(0);
  text (" gameOver", 400, 200);
}

void gameoverClicks () {
  mode = INTRO;
}
