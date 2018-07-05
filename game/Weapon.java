import processing.core.*;

// WEAPON Class
// These are the Weapon Towers that the User can spawn in
public class Weapon extends game {
	// enemy position
	float x, y;
	// type of tower
	int weaponType;
	// enemy velocity
	float vel;
	// direction facing (radians)
	float dirFacing;
	
	private PApplet pa;

	// mouse over box movement
	boolean mOver = false, mLocked = false;
	int dragSpeed = 20;

	// mouse over box vars
	float mOX, mOY;

	Weapon(int x, int y, int weaponType) {
		this.x = pa.mouseX - 64;
		this.y = pa.mouseY;
		this.weaponType = weaponType;
		mOX = (float) 0.0;
		mOY = (float) 0.0;
	}

	boolean mousePressed;

	public void display() {
		mPressed();
		mouseClicked(this); // send over to create weapon in mouse clicked
		if (mouseX > x - y && mouseX < x + dragSpeed && mouseY > y - dragSpeed && mouseY < y + dragSpeed) {
			mOver = true;
			if (!mLocked) {
				// create indicator if mouse is over
			}
		} else {
			// create reset indicator
			mOver = false;
		}
		pa.image(weapons[weaponType], x, y);
	}

	public void mPressed() {
		if (mousePressed) {
			if (mOver) {
				mLocked = true;
				// fill(255, 255, 255);
			} else {
				mLocked = false;
			}
			mOX = mouseX - x;
			mOY = mouseY - y;
		}
	}

	public void mouseClicked(Weapon weap) {
		if (weap.mLocked) {
			weap.x = mouseX - weap.mOX;
			weap.y = mouseY - weap.mOY;
		}
	}
}