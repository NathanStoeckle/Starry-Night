//Involves passing by ships when pressed by key

class Ships
{
  PImage ship;
  float xPos;
  float yPos;
  boolean moving;
  float speed;

  Ships()
  {
    //Cord for where ship will be located
    ship = loadImage("hero.png");
    xPos = -100;            //x cord  for its location
    yPos = random(0, 550);  //y cord  for its location
  }

  Ships(PImage image)
  {
    //same info as above
    ship = image;
    xPos = -300;
    yPos = random(0, 550);
  }

  void drawShips()
  {
    //list of ships that will appear in the program
    image(ship, xPos, yPos, 150, 150);
    xPos = xPos + speed;
  }

  void keyShipPressed()
  {
    //when pressing any key, ship will appear and disappear once,
      //unless key is pressed again
    //pressing any key on keyboard allows the ship to move at different speeds
    speed = random(1, 10);
    if (xPos >= width) //checks to see if the ship reaches the end the screen
    {
      xPos = -300;
      yPos = random(0, 550);
    }
  }
}