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
