class Hunter{
PImage hunter;
 int foodChoice;
  boolean isHunting = false;
  PVector position, target;
  float margin = 50;
  float triggerDistance1 = 100;
  float triggerDistance2 = 25;
  float movementSpeed = 0.08;
    Hunter(float x, float y) {
    position = new PVector(x, y);
    pickEscapeTarget();
    hunter = loadImage("Hunter.jpg");
      boolean isHunting = false;

    }
void update(){
 PVector mousePos = new PVector(mouseX, mouseY); 
       if (position.dist(target) < triggerDistance2) {
        pickEscapeTarget();
      }
        if (!isHunting) {
        pickFoodTarget();
        isHunting = true;
      }
          if (isHunting && position.dist(target) < 5) {
      Fishs[foodChoice].alive = false; 
      pickFoodTarget();
    }
}

  void pickEscapeTarget() {
    target = new PVector(random(margin, width-margin), random(margin, height-margin));
  }
  
  void pickFoodTarget() {
    foodChoice = int(random(Fishs.length));
    if (Fishs[foodChoice].alive) {
      target = Fishs[foodChoice].position;
    }
  }
















}
