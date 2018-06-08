PImage sideBar;
PImage[] weapons = new PImage[4];
PImage grass1, mapWeapon, horTopRoad;
PImage enemy1;
float x, y;
final int w = 10, h = 8;
Enemy a = new Enemy(x, y);
int count=0;
// textures for map
PImage[] mapTextures = new PImage[14];
int weapon;
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
  x = 0;
  y = 130;

  sideBar = loadImage("sideBar.png");

  // map tiles
  for (int i = 0; i < 14; i++) {
    mapTextures[i] = loadImage("map" + i + ".png");
  }

  for (int i = 0; i < weapons.length; i++) {
    weapons[i] = loadImage("weap" + i + ".png");
  }

  enemy1 = loadImage("enemy0.png");
}

void draw() {  
  drawMap1();
  drawWeapons(weapons.length);
  weapon=judge();
  a.CreateEnemy(enemy1, x, y);
}
void mouseDragged() { 
  int weapon=judge();
  switch (weapon) {
  case 3:
    image(weapons[3], mouseX, mouseY); 
    break;
  case 2:
    image(weapons[2], mouseX, mouseY); 
    break;
  case 1:
    image(weapons[1], mouseX, mouseY); 
    break;
  case 0:
    image(weapons[0], mouseX, mouseY); 
    break;
  default:
    break;
  }
}