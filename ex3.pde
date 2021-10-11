void setup() {
  size(400,400);
}

void draw() {
  background(0);
  translate(200, 200);
  rotate(-HALF_PI);
  
  int hr = hour();
  int mn = minute();
  int sc = second();

  strokeWeight(8);
  stroke(random(255), random(255), random(255));
  noFill();
  float secondAngle = map(sc, 0, 60, 0, TWO_PI);
  arc(0, 0, 300, 300, 0, secondAngle);

  stroke(random(255),random(255),random(255));
  float minuteAngle = map(mn, 0, 60, 0, TWO_PI);
  arc(0, 0, 280, 280, 0, minuteAngle);

  stroke(random(255),random(255),random(255));
  float hourAngle = map(hr % 12, 0, 12, 0, TWO_PI);
  arc(0, 0, 260, 260, 0, hourAngle);


 }
