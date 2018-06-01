PImage map;
PImage weapon1, weapon2, weapon3, weapon4;
PImage grass1, mapWeapon, horTopRoad;
PImage enemy1;
float x, y;
final int w = 10, h = 8;

PImage[] mapTextures = new PImage[15];
int mapArr[][] = {
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {1, 1, 1, 1, 2, 0, 0, 0, 0, 0}, 
  {3, 3, 3, 3, 4, 5, 1, 1, 1, 1}, 
  {6, 6, 7, 3, 4, 8, 3, 3, 3, 3}, 
  {0, 0, 8, 3, 4, 8, 3, 9, 6, 6}, 
  {0, 0, 8, 3, 10, 11, 3, 4, 0, 0}, 
  {0, 0, 8, 3, 3, 3, 3, 4, 0, 0}, 
  {0, 0, 12, 6, 6, 6, 6, 13, 0, 0}
}; //new int[w][h];

void setup() {
  frameRate(360);
  // width  : 128px for the weapons menu
  // width  : 640px for actual map
  // height : 512px (64 * 8)
  size(640, 512);
  x = 90;
  y = 95;


  // map tiles
  for (int i = 0; i < 14; i++) {
    mapTextures[i] = loadImage("map" + i + ".png");
  }

  //weapon1 = loadImage("towerDefense_tile203.png");
  //weapon2 = loadImage("towerDefense_tile204.png");
  //weapon3 = loadImage("towerDefense_tile205.png");
  //weapon4 = loadImage("towerDefense_tile206.png");
  //enemy1 = loadImage("towerDefense_tile245.png");
  drawMap1();
}

void draw() {
  //image(weapon1, -5, 55);
  //image(weapon2, 45, 55);
  //image(weapon3, -5, 110);
  //image(weapon4, 45, 110);
  //image(enemy1, x, y);
  

  // CreateEnemy(x, y);
}

void drawMap1() {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 10; j++) {
      image(mapTextures[mapArr[i][j]], i * 64, j * 64);
      noFill();
      rect(i*64, j*64, 64, 64);
      print(mapArr[i][j] + "\t");
    }
    println();
  }
}

void CreateEnemy(float x, float y) {
  image(enemy1, x, y);
  
  while (x < 310.0) {
    x = x + 0.1;
    image(enemy1, x, y);
    break;
  }

  while (y < 400.0) {
    y = y + 0.1;
    image(enemy1, x, y);
    break;
  }

  while (x < 540.0) {
    x = x + 0.1;
    image(enemy1, x, y);
    break;
  }

  while (y > 200.0) {
    y = y - 0.1;
    image(enemy1, x, y);
    break;
  }

  while (x < 768.0) {
    x = x + 0.1;
    image(enemy1, x, y);
    break;
  }
}

void mouseDragged() {
  image(weapon1, mouseX, mouseY);
}
