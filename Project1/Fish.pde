class Fish{
 PVector position;
  float sizeVal;
  boolean alive = true;
  PImage fish;
  Fish(float x, float y) {
  position = new PVector(x, y);
  sizeVal = random(50, 30);
  fish = loadImage("fish.jpg");
  }
  
  void update() {
    // TODO
  }
  
  void draw() {
    if (alive) {
      ellipseMode(CENTER);
      noStroke();
      fill(0);

      image(fish,random(800), random(600), sizeVal, sizeVal);
      delay(30);
    }
  }
  
  void run() {
    update();
    draw();
  }
  
}
