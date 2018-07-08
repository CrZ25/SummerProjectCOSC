import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;
import processing.core.*;

public class game extends PApplet {
	PImage sideBar, menu, Help, GameOver, Health, moneyIMG;
	PImage[] weapons = new PImage[4];
	PImage grass1, mapWeapon, horTopRoad;
	PImage[] enemies = new PImage[4];
	int weapon2 = -1;
	int money;

	boolean mLock = false; // for drag and drop
	float x, y;
	final int ROWS = 16, COLS = 20;
	ArrayList<Weapon> weaponArr = new ArrayList<Weapon>();
	int count = 0;

	// which screen the game is on
	int Scene = 0;

	// textures for map
	PImage[] mapTextures = new PImage[14];
	int weapon;
	// map array 1
	int mapArr[][] = new int[ROWS][COLS];

	// new int[w][h];

	@Override
	public void settings() {
		// width : 128px for the weapons menu
		// width : 640px for actual map
		// height : 512px (64 * 8)
		size(768, 512);
	}

	@Override
	public void setup() {
		frameRate(60);
		smooth();
		imageMode(CENTER);


		sideBar = loadImage("sideBar.png");

		// Load in Map Tiles
		for (int i = 0; i < 14; i++) {
			mapTextures[i] = loadImage("map" + i + ".png");
		}

		// Load in map
		try {
			mapLoad();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Load in Weapons
		for (int i = 0; i < weapons.length; i++) {
			weapons[i] = loadImage("weap" + i + ".png");
		}

		// Splash Screens
		menu = loadImage("menu.jpg");
		GameOver = loadImage("GameOver.jpg");
		Help = loadImage("help.jpg");

		// Load in Enemy Sprites
		for (int i = 0; i < 3; i++) {
			enemies[i] = loadImage("enemy" + i + ".png");
		}

		// Load in Enemy Health
		Health = loadImage("Health.png");

		// title page
		image(menu, width / 2, height / 2);
		
		// money icon
		moneyIMG = loadImage("money.png");
		
		// money initial
		money = 2000;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PApplet.main("game");
	}

	public void draw() {
		switch (Scene) {
		case 1:
			try {
				Scene1();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// FRAMERATE
		fill(255);
		textSize(10);
		text(frameRate, 10, 10);
	}

	void Menu() {
		image(menu, width / 2, height / 2);
	}

	void Help() {
		image(Help, width / 2, height / 2);
	}

	void GameOver() {
		int time = millis();
		image(GameOver, width / 2, height / 2);
		if (millis() - time > 10) {
			time = millis();
			reset();
			Scene = 0;
		}
	}

	// for Scene 1
	float x0 = 0, y0 = 130;
	float x1 = -50, y1 = 130;

	ImageData iTmp = new ImageData(0, 0, 0);
	
	// SCENE 1
	// game level 1
	void Scene1() throws FileNotFoundException {
		drawMap1();
		drawWeapons(weapons.length);
		Enemy A = new Enemy(enemies[0], x0, y0, 1);
		// Enemy B = new Enemy(enemy1,x1, y1,3);
		//// A.CreateEnemy();
		// B.CreateEnemy();
		x0 = A.moveX(x0, y0);
		y0 = A.moveY(x0, y0);

		// PRINT COORD OF ENEMY
		// print(x0, y0);

		// x1=B.moveX(x1,y1);
		// y1=B.moveY(x1,y1);
		A.checkEnd();
		// B.checkEnd();
		
		// display weapons when clicked
		for (Weapon weap : weaponArr) {
			iTmp = weap.display();
			image(weapons[iTmp.getImg()], iTmp.getX(), iTmp.getY());
		}

		count++;
	}

	// reset
	void reset() {
		x0 = 0;
		y0 = 130;
		x1 = -20;
		y1 = 130;
		count = 0;
	}

	// MAP
	// Drawing MAP 1
	void drawMap1() {
		for (int row = 0; row < mapArr.length; row++) {
			for (int col = 0; col < mapArr[row].length; col++) {
				image(mapTextures[mapArr[row][col]], col * 32 + 16, row * 32 + 16);
			}
		}
		// UI Sidebar
		drawUI();
	}

	// MAP
	// Load map in from text file
	void mapLoad() throws FileNotFoundException {
		File file = new File("src/maps/map01.txt");
		System.out.println("'File Loaded'");
		Scanner s = new Scanner(file);
		for (int row = 0; row < mapArr.length; row++) {
			for (int col = 0; col < mapArr[row].length; col++) {
				mapArr[row][col] = s.nextInt();
				System.out.print(mapArr[row][col] + "\t");
			}
			System.out.println();
		}
		s.close();
	}

	// GUI
	// Weapon Towers RHS
	void drawWeapons(int unlocked) {
		unlocked--; // aligning the amount of weapons
		switch (unlocked) {
		case 3:
			image(weapons[3], 736, 160);
		case 2:
			image(weapons[2], 672, 160);
		case 1:
			image(weapons[1], 736, 96);
		case 0:
			image(weapons[0], 672, 96);
			break;
		default:
			break;
		}
	}
	
	// GUI 
	// Draw Resources/Money
	void drawUI() {
		image(sideBar, 704, height / 2);
		image(moneyIMG, 660, 23);
		fill(0);
		textSize(16);
		text("$" + money, 670, 30);
	}

	public void mousePressed() {
		weaponCreation();
	}

	public void weaponCreation() {
		if (mouseX >= 710 && mouseX <= 763 && mouseY >= 134 && mouseY <= 187) {
			if (mousePressed) {
				weaponArr.add(new Weapon(mouseX, mouseY, 3));
			}
		} else if (mouseX >= 646 && mouseX <= 699 && mouseY >= 134 && mouseY <= 187) {
			if (mousePressed) {
				weaponArr.add(new Weapon(mouseX, mouseY, 2));
			}
		} else if (mouseX >= 710 && mouseX <= 763 && mouseY >= 70 && mouseY <= 123) {
			if (mousePressed)
				weaponArr.add(new Weapon(mouseX, mouseY, 1));
		} else if (mouseX >= 646 && mouseX <= 699 && mouseY >= 70 && mouseY <= 123) {
			if (mousePressed)
				weaponArr.add(new Weapon(mouseX, mouseY, 0));
		}
	}

	public void mouseClicked() {
		System.out.println(mouseX + ", " + mouseY);
		// SCENE SELECTION
		if (Scene == 0 && mouseX >= 468 && mouseX <= 584 && mouseY >= 439 && mouseY <= 486) {
			exit();
		}
		if (Scene == 0 && mouseX >= 604 && mouseX <= 720 && mouseY >= 439 && mouseY <= 486) {
			Scene = 1;
		}
		if (Scene == 0 && mouseX >= 20 && mouseX <= 131 && mouseY >= 14 && mouseY <= 50) {
			Help();
			Scene = -1;
		}
		if (Scene == -1 && mouseX >= 21 && mouseX <= 112 && mouseY >= 453 && mouseY <= 491) {
			image(menu, width / 2, height / 2);
			Scene = 0;
		}
	}

}
