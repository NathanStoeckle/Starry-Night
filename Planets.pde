class Planets
{
  float xPos;
  float yPos;
  PImage planets; //Named planets for convenience
  float speed;

  //Loads the images in here by their filename
  void setupPlanets(String filename)
  {
    planets = loadImage(filename);
    xPos = -200;           //xPos is - 200 due to the planets being 200x200
    yPos = random(0, 700); // set so it is at a random spot
    speed = random(1, 20);  //Determines the speed of rate for the planets
  }

  void drawPlanets()
  {
    //list of planets that will appear in the program
    image(planets, xPos, yPos);

    //moves the planets from start to end in a loop
    xPos = xPos + speed;

    //Sent back to left side of screen when it reaches the end of the right screen
    if (xPos > width + 200)
    {
      xPos = -200;
      yPos = random(0, 500);
    }
  }

  void planetsMouse()
  {
    speed = random(1, 5);  //creates a different speed for each planet
  }
}