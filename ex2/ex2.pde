PImage forest;
PImage zombies1;
PImage zombies2;
PImage zombies3;
float x1, y1, x2, y2;
float speedX1, speedX2;

void setup() {
  size(800, 600, P2D);
  forest = loadImage("Background1.jpg");
  forest.resize(forest.width * (height / forest.height), height);
  imageMode(CENTER);
  zombies1 = loadImage("zombies1.png");
  zombies2 = loadImage("zombies2.png");
  zombies3 = loadImage("zombies3.png");
  x1 = width/2;
  y1 = height/2;
  x2 = x1 + 50;
  y2 = y1 - 50;
  speedX1 = 5;
  speedX2 = speedX1 * 0.5;
}

void draw() {
  //background(0, 127, 255);
    
  tint(255, 127);
  image(forest, x2, y2);
  image(zombies1, x2+100, y2+100,width/10, height/10);
  image(zombies2, x2+300, y2+200,width/10, height/10);
  image(zombies3, x2+500, y2-100,width/10, height/10);
  noTint();
  //image(forest, x1, y1); // the image drawn last will be in front
  
  x1 += speedX1;
  x2 += speedX2;
    
  if (x1 > width || x1 < 0) {
    speedX1 *= -1;  
    speedX2 *= -1;
  }
}
