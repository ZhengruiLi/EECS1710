PImage doge;

void setup() {
  size(820, 860);
  doge = loadImage("doge.png");
  background(0);
}

void draw() {
  //image(doge, 0, 0);
 
     for (int i = 0; i < 500; i++) {
    float x = random(width);
    float y = random(height);
    color c = doge.get(int(x), int(y));
    fill(c, 25);
    noStroke();
    ellipse(x, y, 16, 16);
 
    }
    }
  
  
void keyPressed() {
 if (keyCode == 65) {
    loadPixels();
    doge.loadPixels();
    for(int x1 = 0;x1 < width; x1++){
      for(int y1 =0; y1 < height; y1++){
      int loc = x1 + y1 * width;
      float r = red(doge.pixels[loc]);
      float g = green(doge.pixels[loc]);
      float b = blue(doge.pixels[loc]);
      float d = dist(width/2, height/2, x1,y1);
      float factor = map(d, 0, 200, 0, 2);
      pixels[loc] = color(r*factor, g*factor, b*factor);
  }
  }
    updatePixels();
}
}
  
