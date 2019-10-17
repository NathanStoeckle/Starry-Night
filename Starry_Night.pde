
//For Windows platform
/*import ddf.minim.*;
 import ddf.minim.analysis.*;
 import ddf.minim.effects.*;
 import ddf.minim.signals.*;
 import ddf.minim.spi.*;
 import ddf.minim.ugens.*;
 */

//For macs
import processing.sound.*;

// create planets moving across
// include music

//Four Planets, four necessary line of codes needed due to
  //PImage(String fileName) in my line of program
Planets Earth = new Planets();
Planets Venus = new Planets();
Planets Desert = new Planets();
Planets Purple = new Planets();

//Multiple Stars created by Array for convenience
Stars[] myStars = new Stars[500];

//Has a constructor built in for ship image
Ships myShips;

// windows
//Minim music;
//AudioPlayer ap;

//Mac platform
SoundFile music;

void setup()
{
  size(1000, 700);

  //Stars have to be in an array for multiple to be created
  for (int i = 0; i < myStars.length; i = i + 1)
  {
    myStars[i] = new Stars();
    myStars[i].xPos = (int)random(width);
    myStars[i].yPos = (int)random(height);
  }

  //Again, PImage(FileName) is why there are 4
  Earth.setupPlanets("earth.png");
  Venus.setupPlanets("venus.png");
  Desert.setupPlanets("desert.png");
  Purple.setupPlanets("purple.png");


  //sets up sounds
  // Windows
  //music = new Minim(this);
  //ap = music.loadFile("opal.mp3");
  //ap.play();

  //Mac
  music =  new SoundFile(this, "opal.mp3"); //song is about 1 min and 42 sec
  music.play();

  PImage ship = loadImage("hero.png");
  myShips = new Ships(ship);
}


void draw()
{
  //background will be black so stars can be shown
  background(0);

  //multiple stars can be created thanks to the array here
  for (int i = 0; i < myStars.length; i = i + 1)
  {
    myStars[i].starDraw();
  }

  //Each planet is loaded here
  Earth.drawPlanets();
  Venus.drawPlanets();
  Desert.drawPlanets();
  Purple.drawPlanets();

  //Ship info is loaded here to be drawn
  myShips.drawShips();
}

void mousePressed()
{
  //stops and starts the position of the planets
  Earth.planetsMouse();
  Venus.planetsMouse();
  Desert.planetsMouse();
  Purple.planetsMouse();
}

void keyPressed()
{
  //sends ship out, and speed can be determined by key pressed
  myShips.keyShipPressed();
}