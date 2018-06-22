void drawMap1() {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 10; j++) {
      image(mapTextures[mapArr[i][j]], j * 64 + 32, i * 64 + 32);
      // print(mapArr[i][j] + ",\t"); // for debugging the array
    }
    // println();
  }
  // sidebar
  image(sideBar, 704, height / 2);
}

void drawWeapons(int unlocked) {
  unlocked--;
  switch (unlocked) {
  case 3:
    image(weapons[3], 704 + 32, 128 + 32);
  case 2:
    image(weapons[2], 640 + 32, 128 + 32);
  case 1:
    image(weapons[1], 704 + 32, 64 + 32);
  case 0:
    image(weapons[0], 640 + 32, 64 + 32);
    break;
  default:
    break;
  }
}
<<<<<<< HEAD
=======
int judge() {
  int weapon=-1;
  if (dist(mouseX, mouseY, 704, 128)<32) {
    weapon=3;
  } else if (dist(mouseX, mouseY, 640, 128)<32) {
    weapon=2;
  } else if (dist(mouseX, mouseY, 704, 64)<32) {
    weapon=1;
  } else if (dist(mouseX, mouseY, 640, 64)<32) {
    weapon=0;
  }       
  return weapon;
}
>>>>>>> 3f338b15214135fa93c841334a95175af95cfea1
