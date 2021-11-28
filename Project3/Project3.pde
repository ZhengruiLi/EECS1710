
PImage doge;

void setup() {
  size(820, 860);
  doge = loadImage("doge.png");
  background(0);
}

void draw() {
  //image(frog, 0, 0);
  for (int i = 0; i < 500; i++) {
    float x = random(width);
    float y = random(height);
    color c = doge.get(int(x), int(y));
    fill(c, 25);
    noStroke();
    ellipse(x, y, 16, 16);
  }
}
