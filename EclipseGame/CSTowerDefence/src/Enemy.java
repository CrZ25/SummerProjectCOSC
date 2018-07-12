import processing.core.*;

// ENEMY Class
// These are the Enemies that the User attacks with the Weapon Towers
public class Enemy extends game {
	// enemy image
	PImage e;
	// enemy position
	float x, y;
	// enemy velocity
	float vel;
	// direction facing (radians)
	float dirFacing;
	
	boolean upState;

	Enemy(PImage e, float x, float y, float vel) {
		this.e = e;
		this.x = x;
		this.y = y;
		this.vel = vel;
	}

	ImageData CreateEnemy() {
		// image(Health, x - 32, y - 50, 130, 86);
		// image(enemies[0], x, y);
		
		return new ImageData(0, x, y);
	}

	float moveX(float x, float y) {
		int m = floor(x / 64);
		int n = floor((y + 5) / 64);

		if (m < COLS - 1 && n < ROWS - 1) {
			if (mapArr[n][m + 1] == 3) {
				x = x + vel;
				return x;
			}
		}
		return x;
	}

	float moveY(float x, float y) {
		int m = floor((x + 5) / 64);
		int n = floor(y / 64);
		if (m < COLS - 1 && n < ROWS - 1 && upState == true) {
			if (mapArr[n + 1][m] == 3) {
				y = y + vel;
				return y;
			}
			if (mapArr[n - 1][m] == 3) {
				y = y - vel;
				upState = false;
				return y;
			}
		}

		return y;
	}

	void checkEnd() {
		if (x > 605) {
			Scene = -10;
		}
	}
}
