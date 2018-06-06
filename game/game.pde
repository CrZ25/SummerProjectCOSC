PImage sideBar;
PImage[] weapons = new PImage[4];
PImage grass1, mapWeapon, horTopRoad;
PImage enemy0;
float x, y;
Enemy enemies;

final int w = 10, h = 8;

// textures for map
PImage[] mapTextures = new PImage[14];

// map array 1
int mapArr[][] = {
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, 
  {1, 1, 1, 1, 2, 0, 0, 0, 0, 0}, 
  {3, 3, 3, 3, 4, 5, 1, 1, 1, 1}, 
  {6, 6, 7, 3, 4, 8, 3, 3, 3, 3}, 
  {0, 0, 8, 3, 4, 8, 3, 9, 6, 6}, 
  {0, 0, 8, 3, 10, 11, 3, 4, 0, 0}, 
  {0, 0, 8, 3, 3, 3, 3, 4, 0, 0}, 
  {0, 0, 12, 6, 6, 6, 6, 13, 0, 0}
};
//new int[w][h];

void setup() {
  frameRate(60);
  // width  : 128px for the weapons menu
  // width  : 640px for actual map
  // height : 512px (64 * 8)
  size(768, 512);
  x = 90;
  y = 95;

  sideBar = loadImage("sideBar.png");

  // map tiles
  for (int i = 0; i < 14; i++) {
    mapTextures[i] = loadImage("map" + i + ".png");
  }

  for (int i = 0; i < weapons.length; i++) {
    weapons[i] = loadImage("weap" + i + ".png");
  }

  enemy0 = loadImage("enemy0.png");
}

void draw() {  
  drawMap1();
  drawWeapons(weapons.length);
  
  image(enemy0, x, y);

  enemies.CreateEnemy(x, y);
}
