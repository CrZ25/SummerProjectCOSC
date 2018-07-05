import processing.core.*;

public class imageData {
	float x, y;
	PImage img;
	
	public imageData(PImage img, float x, float y) {
		super();
		this.x = x;
		this.y = y;
		this.img = img;
	}

	public float getX() {
		return x;
	}

	public void setX(float x) {
		this.x = x;
	}

	public float getY() {
		return y;
	}

	public void setY(float y) {
		this.y = y;
	}

	public PImage getImg() {
		return img;
	}

	public void setImg(PImage img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "imageData [x=" + x + ", y=" + y + ", img=" + img + "]";
	}
	
}
