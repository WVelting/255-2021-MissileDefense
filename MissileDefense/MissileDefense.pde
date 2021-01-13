
Player thePlayer;
GameObject background;


ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

// this function is called exactly once:
void setup() {
  size(700, 800); //set size of window

  thePlayer = new Player();
  background = new GameObject( loadImage("space.png") );
  background.position.x = width/2;
  background.position.y = height/2;

  for (int i = 0; i < 10; i++) {
    Asteroid a = new Asteroid();
    asteroids.add(a);
  }
}


// this function is called every 60th of a second
// We will use this to create the "Game Loop" design pattern
// Each time the function is called, it is known as a "tick."
void draw() {

  // === Calc Time ===
  // Calculate how much time has passed since the previous tick.

  // === Process Input ===
  // Get all input from devices.

  // === Update ===
  // Update all game objects

  // This is essentially the "Update" design pattern:
  for (Asteroid a : asteroids) a.update();
  thePlayer.update();


  // === Draw ===
  // Render all game objects
  background(0);
  background.draw();
  for (Asteroid a : asteroids) a.draw();
  thePlayer.draw();
}

PImage GetRandomAsteroidImage() {
  PImage img = null;


  int num = (int)random(0, 3);
  switch(num) {
  case 0:
    img = loadImage("asteroid1.png");
    break;
  case 1:
    img = loadImage("asteroid2.png");
    break;
  case 2:
  default:
    img = loadImage("asteroid3.png");
    break;
  }
  return img;
}
