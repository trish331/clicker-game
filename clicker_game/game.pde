void game () {
  theme.play();
  background (255, 0, 0);
  fill(0);
  text ("SCORE: " + score, width/2, 50);
  text ("LIVES: " + lives, width/2, 100);
  //pause button
  stroke (0);
  fill (255);
  circle (100, 100, 100);

  //display target
  fill (255);
  strokeWeight(5);
  fill (255);
  circle (x, y, d);
  // movement
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x >= width-d/2 || x <= 0+d/2) {
    vx = vx * -1;
  }  
  if (y >= height-d/2 || y <= 0+d/2) {
    vy = vy * -1;
  }
}




void gameClicks () {
  if ( dist (mouseX, mouseY, x, y) < 50) {
    score = score + 1;
    vx = vy * 1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, 100, 100)<50) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) {
      mode = GAMEOVER;
      gameover.rewind();
      gameover.play();
    }
  }
}
