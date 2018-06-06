void drawMap1() {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 10; j++) {
      image(mapTextures[mapArr[i][j]], j * 64, i * 64);
      print(mapArr[i][j] + ",\t"); // for debugging the array
    }
    println();
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
