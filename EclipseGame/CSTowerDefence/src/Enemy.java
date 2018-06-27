import processing.core.PImage;

// ENEMY Class
// These are the Enemies that the User attacks with the Weapon Towers
public class Enemy {
	// enemy image
	PImage e;
	// enemy position
	float x, y;
	// enemy velocity
	float vel;
	// direction facing (radians)
	float dirFacing;

	Enemy(PImage e, float x, float y, float vel) {
		this.e = e;
		this.x = x;
		this.y = y;
		this.vel = vel;
	}

	void CreateEnemy() {
		image(Health, x - 32, y - 50, 130, 86);
		image(e, x, y);
	}

	float moveX(float x, float y) {
		if (y > 125 && x < 190 && y < 135) {
			x = x + vel;
			return x;
		} else if (y < 395 && y > 385) {
			x = x + vel;
			return x;
		} else if (y > 185 && x > 385 && y < 195) {
			x = x + vel;
			return x;
		}
		return x;
	}

	float moveY(float x, float y) {
		while (x < 195 && y < 390 && x > 185) {
			y = y + vel;
			return y;
		}
		while (x > 385 && x < 395) {
			y = y - vel;
			return y;
		}
		return y;
	}

	void checkEnd() {
		if (x > 605) {
			Scene = -10;
		}
	}
}
