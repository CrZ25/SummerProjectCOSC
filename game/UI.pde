void drawMap1() {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 10; j++) {
      image(mapTextures[mapArr[i][j]], j * 64, i * 64);
      // print(mapArr[i][j] + ",\t"); // for debugging the array
    }
    // println();
  }
  // sidebar
  image(sideBar, 640, 0);
}

void drawWeapons(int unlocked) {
  unlocked--;
  switch (unlocked) {
  case 3:
    image(weapons[3], 704, 128);
  case 2:
    image(weapons[2], 640, 128);
  case 1:
    image(weapons[1], 704, 64);
  case 0:
    image(weapons[0], 640, 64);
    break;
  default:
    break;
  }
}

int judge() {
  if (dist(mouseX, mouseY, 704, 128)<32) {
    if (mousePressed)
      weapon2 = 3;
    else
      weapon2 = -1;
  } else if (dist(mouseX, mouseY, 640, 128)<32) {
    if (mousePressed)
      weapon2 = 2;
    else
      weapon2 = -1;
  } else if (dist(mouseX, mouseY, 704, 64)<32) {
    if (mousePressed)
      weapon2 = 1;
    else
      weapon2 = -1;
  } else if (dist(mouseX, mouseY, 640, 64)<32) {
    if (mousePressed)
      weapon2 = 0;
    else
      weapon2 = -1;
  }
  return weapon2;
}
