import processing.core.*;

public class ImageData {
	float x, y;
	int img;
	
	public ImageData(int img, float x, float y) {
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

	public int getImg() {
		return img;
	}

	public void setImg(int img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "imageData [x=" + x + ", y=" + y + ", img=" + img + "]";
	}
	
}
