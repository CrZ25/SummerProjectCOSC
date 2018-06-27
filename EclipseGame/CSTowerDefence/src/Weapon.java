// WEAPON Class
// These are the Weapon Towers that the User can spawn in
public class Weapon {
	// enemy position
	float x, y;
	// type of tower
	int weaponType;
	// enemy velocity
	float vel;
	// direction facing (radians)
	float dirFacing;

	// mouse over box movement
	boolean mOver = false, mLocked = false;
	int dragSpeed = 20;

	// mouse over box vars
	float mOX, mOY;

	Weapon(int x, int y, int weaponType) {
		this.x = x - 64;
		this.y = y;
		this.weaponType = weaponType;
		mOX = (float) 0.0;
		mOY = (float) 0.0;
	}

	int mouseX, mouseY;
	boolean mousePressed;
	
	public void display(int mouseX, int mouseY, boolean mousePressed) {
		this.mouseX = mouseX;
		this.mouseY = mouseY;
		this.mousePressed = mousePressed;
		
		mPressed();
		mouseClicked(this);
		if (mouseX > x - y && mouseX < x + dragSpeed && mouseY > y - dragSpeed && mouseY < y + dragSpeed) {
			mOver = true;
			if (!mLocked) {
				// create indicator if mouse is over
			}
		} else {
			// create reset indicator
			mOver = false;
		}

		image(weapons[weaponType], x, y);
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


	public Weapon weaponCreation() {
		System.out.println(mouseX + ", " + mouseY);
		if (mouseX >= 704 && mouseX <= 754 && mouseY >= 128 && mouseY <= 178) {
			if (mousePressed) {
				weaponArr.add(new Weapon(mouseX, mouseY, 3));
			}
		} else if (mouseX >= 640 && mouseX <= 690 && mouseY >= 128 && mouseY <= 178) {
			if (mousePressed) {
				weaponArr.add(new Weapon(mouseX, mouseY, 2));
			}
		} else if (mouseX >= 704 && mouseX <= 754 && mouseY >= 64 && mouseY <= 94) {
			if (mousePressed)
				weaponArr.add(new Weapon(mouseX, mouseY, 1));
		} else if (mouseX >= 640 && mouseX <= 690 && mouseY >= 64 && mouseY <= 94) {
			if (mousePressed)
				weaponArr.add(new Weapon(mouseX, mouseY, 0));
		}
	}

	public void mouseClicked(Weapon weap) {
		if (weap.mLocked) {
			weap.x = mouseX - weap.mOX;
			weap.y = mouseY - weap.mOY;
		}
	}
}