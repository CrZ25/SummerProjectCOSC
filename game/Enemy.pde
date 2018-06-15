class Enemy {
  //enemy image
  PImage e;
  // enemy position
  float x, y;
  // enemy velocity
  float vel;
  // direction facing (radians)
  float dirFacing;

  Enemy(PImage e, float x, float y) {
    this.e=e;
    this.x = x;
    this.y = y;
  }


  void CreateEnemy() {
    image(e, x, y);
  }
  float moveX() {
    for (int j = 0; j < w; j++) {
      for (int i = 0; i < h; i++) {
        if (mapArr[i][j] == 3) {
          while (count<3*64||(count>7*64&&count<10*64)||count>13*64) {
            x=x+1.0;
            return x;
          }
        }
      }
    }
    return x;
  }
  float moveY() {
    for (int j = 0; j < w; j++) {
      for (int i = 0; i < h; i++) {
        if (mapArr[i][j] == 3) {
          while (y<i*64&&count>3*64) {
            y=y+1.0;
            return y;
          }
        
        
        while (y>(i+1)*64&&count>10*64) {
          y=y-1.0;
          return y;
        }
      }
    }}
    return y;
  }
  void checkEnd() {
    if (x>605) {
      exit();
    }
  }
}