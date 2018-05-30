PImage map;
PImage weapon1, weapon2, weapon3, weapon4;
PImage enemy1;
float x = 90, y = 95;

void setup() {
  frameRate(1);
  size(746, 480);
  map= loadImage("map1.jpg");
  weapon1 = loadImage("towerDefense_tile203.png");
  weapon2 = loadImage("towerDefense_tile204.png");
  weapon3 = loadImage("towerDefense_tile205.png");
  weapon4 = loadImage("towerDefense_tile206.png");
  enemy1 = loadImage("towerDefense_tile245.png");
}

void draw() {
  image(map, 0, 0);
  image(weapon1, -5, 55);
  image(weapon2, 45, 55);
  image(weapon3, -5, 110);
  image(weapon4, 45, 110);
  CreateEnemy(x, y);
}

void CreateEnemy(float x, float y) {
  image(map, 0, 0);

  image(enemy1, x, y);
  while (x < 310.0) {
    x = x + 0.1; 
    image(enemy1, x, y);
  }
  while (y < 400.0) {
    y = y + 0.1;
    image(enemy1, x, y);
  }
  while (x < 540.0) {
    x = x + 0.1;
    image(enemy1, x, y);
  }
  while (y > 200.0) {
    y = y - 0.1;
    image(enemy1, x, y);
  }
  while (x < 768.0) {
    x = x + 0.1;
    image(enemy1, x, y);
  }
}

void mouseDragged() {
  image(weapon1, mouseX, mouseY);
}
