PImage appleImg, bananaImg, orangeImg, currentImg;
String message = "";
PFont font;
int fontSize = 20;
color fontColor = color(255);
color fontShadowColor = color(0);
PVector textPos, shadowPos;

void setup() {
  size(640,480, P2D);
  setupSttReceiver();

  font = createFont("Arial", fontSize);
  textFont(font);
  textAlign(CENTER);
  textPos = new PVector(width/2, height - (fontSize * 2));
  shadowPos = new PVector(textPos.x + 2, textPos.y + 2);
  
  appleImg = loadImage("apple.png");
  bananaImg = loadImage("banana.png");
  orangeImg = loadImage("orange.jpg");
  currentImg = appleImg;
}

void draw() {
  if (result.contains("apple")) {
    message = "apple";
    result = "";
    currentImg = appleImg;
  } else if (result.contains("banana")) {
    message = "banana";
    result = "";
    currentImg = bananaImg;
  } else if (result.contains("orange")) {
    message = "orange";
    result = "";
    currentImg = orangeImg;
  }
  
  image(currentImg, 0, 0, width, height);    
  
  fill(fontShadowColor);
  text(message, shadowPos.x, shadowPos.y);
  fill(fontColor);
  text(message, textPos.x, textPos.y);
}
