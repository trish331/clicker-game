void pausescreen () {
  theme.pause();
  println("PAUSE");
}

void pauseClicks () {
  if (dist(mouseX, mouseY, 100, 100)<50) {
    mode = GAME;
  }
}
