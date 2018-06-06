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

  void CreateEnemy(float x, float y) {
    image(enemy0, x, y);

    while (x < 310.0) {
      x = x + 0.1;
      image(enemy0, x, y);
      break;
    }

    while (y < 400.0) {
      y = y + 0.1;
      image(enemy0, x, y);
      break;
    }

    while (x < 540.0) {
      x = x + 0.1;
      image(enemy0, x, y);
      break;
    }

    while (y > 200.0) {
      y = y - 0.1;
      image(enemy0, x, y);
      break;
    }

    while (x < 768.0) {
      x = x + 0.1;
      image(enemy0, x, y);
      break;
    }
  }
}
