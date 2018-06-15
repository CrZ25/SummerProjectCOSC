
void Scene1() {
  drawMap1();
  drawWeapons(weapons.length);
  weapon=judge();
  Enemy A = new Enemy(enemy1,x, y);
  A.CreateEnemy();
  x=A.moveX();
  y=A.moveY();
  A.checkEnd();
  count++;
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