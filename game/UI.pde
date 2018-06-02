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
