
class Stars
{
  //create twinkling stars for background

  int colorR;
  int colorG;
  int colorB;
  float xPos = random(width);
  float yPos = random(height);

  void starSetup()
  {
    colorMode(RGB);
    colorR = (int)random(255); // random colors of red
    colorG = (int)random(255); // random colors of green
    colorB = (int)random(255); // random colors of blue
  }

  void starDraw()
  {
    fill(colorR, colorG, colorB);

    noStroke();
    ellipse(xPos, yPos, (int)random(1, 5), (int)random(1, 10));

    colorR = (int)random(255); // random colors of red
    colorG = (int)random(255); // random colors of green
    colorB = (int)random(255); // random colors of blue
  }
}