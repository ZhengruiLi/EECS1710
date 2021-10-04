PImage bg,fish,hunter;
float x1, y1, x2, y2;
float speedX1, speedX2;
PVector p1,p2,p3;
Fish[] Fishs = new Fish[20];
void setup() {
  size(960, 640, P2D);
  bg = loadImage("bg.jpg");
  bg.resize(800,600);
  fish = loadImage("fish.jpg");
  hunter = loadImage("hunter.jpg");
  imageMode(CENTER);
  p1 = new PVector (width/2,height/2);
  x1 = width/2;
  y1 = height/2;
  for (int i=0; i<Fishs.length; i++) {
    Fishs[i] = new Fish(random(width), random(height));
  }
}

void draw() {
  background(0, 127, 255);
  image(bg, x1, y1);
    for (int i=0; i<Fishs.length; i++) {
    Fishs[i].run();
  }
  image(hunter,mouseX,mouseY,100,60);
  //tint(255, 127);
  
  noTint();

  


}
