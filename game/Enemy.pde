class Enemy {
  // enemy position
  float x, y;
  // enemy velocity
  float vel;
  // direction facing (radians)
  float dirFacing;

  Enemy(float x, float y) {

    this.x = x;
    this.y = y;
  }

  void CreateEnemy(PImage e, float a, float b) {
    image(e, a, b);
    for (int j = 0; j < w; j++) {
      for (int i = 0; i < h; i++) {
        if (mapArr[i][j] == 3) {
          while (x<j*64) {
            x=a+0.5;
            return;
          }
          
          while (y>i*64) {
            y=b-0.5;
            return;
          }

          while (y<i*64) {
            y=b+0.5;
            return;
          }
        }
      }
    }
  }
}
