PImage sideBar, menu, GameOver, Health;
PImage[] weapons = new PImage[4];
PImage grass1, mapWeapon, horTopRoad;
PImage enemy0,enemy1,enemy2,enemy3;
PImage Help;
int count=0;
final int w = 10, h = 8;
<<<<<<< HEAD
Enemy a = new Enemy(x, y);
ArrayList<Weapon> weaponArr = new ArrayList<Weapon>();
int count = 0;
=======

int Scene=0;
>>>>>>> 3f338b15214135fa93c841334a95175af95cfea1
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
<<<<<<< HEAD
  x = 0;
  y = 130;
  
  imageMode(CENTER);
  
=======
>>>>>>> 3f338b15214135fa93c841334a95175af95cfea1
  sideBar = loadImage("sideBar.png");

  // map tiles
  for (int i = 0; i < 14; i++) {
    mapTextures[i] = loadImage("map" + i + ".png");
  }

<<<<<<< HEAD
  // weapon tiles
  for (int i = 0; i < weapons.length; i++) {
    weapons[i] = loadImage("weap" + i + ".png");
  }
  
  enemy1 = loadImage("enemy0.png");
}



void draw() {  
  drawMap1();
  drawWeapons(weapons.length);
  // weapon = judge();
  a.CreateEnemy(enemy1, x, y);
  
  for (Weapon weap : weaponArr) {
    weap.display();
  }
}
/*
void mouseDragged() { 
  int weapon = judge();

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
*/
=======
  for (int i = 0; i < weapons.length; i++) {
    weapons[i] = loadImage("weap" + i + ".png");
  }
  menu = loadImage("menu.png");
  enemy0 = loadImage("enemy0.png");
  enemy1 = loadImage("enemy1.png");
  enemy2 = loadImage("enemy2.png");
  enemy3 = loadImage("enemy3.png");
  Help = loadImage("help.png");
  GameOver = loadImage("GameOver.jpg");
  Health = loadImage("Health.png");
                            

  }


void draw() { 
  if(Scene==0){
  Menu();}
  if(Scene==1){
  Scene1();}
  if(Scene==-10){
  GameOver();}
  
  
}
void mouseClicked() {
  if (Scene==0&&dist(mouseX, 462, 527, 462)<57&&dist(527, mouseY, 527, 462)<23) {
    exit();

  }
  if (Scene==0&&dist(mouseX,462, 663, 462)<57&&dist(663,mouseY,663,462)<23){
    
    Scene=1;
  }
  if (Scene==0&&dist(mouseX,32, 76, 32)<57&&dist(76,mouseY,76,32)<23){
    Help();
    Scene=-1;
  }
  if (Scene==-1&&dist(mouseX,470, 66, 470)<45&&dist(66,mouseY,66,470)<20){
 
    image(menu, 0, 0); 
    Scene=0;}
    
}
>>>>>>> 3f338b15214135fa93c841334a95175af95cfea1
