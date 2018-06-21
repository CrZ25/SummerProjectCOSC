float x0=0, y0=130;
float x1=-50, y1=130;
void Scene1() {
  drawMap1();
  drawWeapons(weapons.length);
  weapon=judge();
  Enemy A = new Enemy(enemy0,x0, y0,1);
  //Enemy B = new Enemy(enemy1,x1, y1,3);
  A.CreateEnemy();
 //B.CreateEnemy();
  x0=A.moveX(x0,y0);
  y0=A.moveY(x0,y0);
  print(x0,y0);
 // x1=B.moveX(x1,y1);
 // y1=B.moveY(x1,y1);
  A.checkEnd();
 // B.checkEnd();
  count++;
}
void reset(){
  x0=0; y0=130;
 x1=-20; y1=130;
 count=0;
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