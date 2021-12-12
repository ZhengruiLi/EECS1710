void keyReleased(){
 if (keyCode == 65) {
    rValue = 250;
    gValue = 145;
    bValue = 1;
    fill(rValue,gValue,bValue);
    strokeWeight(1.6);
    stroke(0.1);
    text("press keys a, b, c, d, e, f & g to choose a sound and color", 50, 90);
    file = fileA;
    file.play();
  //B = LEMON
  } else if (keyCode == 66) {
    rValue = 255;
    gValue = 230;
    bValue = 9;
    fill(rValue,gValue,bValue);
    strokeWeight(1.6);
    stroke(0.1);
    text("press keys a, b, c, d, e, f & g to choose a sound and color", 50, 90);
    file = fileB;
    file.play();
  //C = GREEN
    } else if (keyCode == 67) {
    rValue = 37;
    gValue = 139;
    bValue = 1;
    fill(rValue,gValue,bValue);
    strokeWeight(1.6);
    stroke(0.1);
    text("press keys a, b, c, d, e, f & g to choose a sound and color", 50, 90);
    file = fileC;
    // file.play();
  //D = BLUE
    } else if (keyCode == 68) {
    rValue = 44;
    gValue = 65;
    bValue = 232;
    fill(rValue,gValue,bValue);
    strokeWeight(1.6);
    stroke(0.1);
    text("press keys a, b, c, d, e, f & g to choose a sound and color", 50, 90);
    file = fileD;
    file.play();
  //E = VIOLET
    } else if (keyCode == 69) {
    rValue = 144;
    gValue = 0;  
    bValue = 175;
    fill(rValue,gValue,bValue);
    strokeWeight(1.6);
    stroke(0.1);
    text("press keys a, b, c, d, e, f & g to choose a sound and color", 50, 90);
    file = fileE;
    file.play();
  //F = MAGENTA
    } else if (keyCode == 70) {
    rValue = 211;
    gValue = 0;
    bValue = 255;
    fill(rValue,gValue,bValue);
    strokeWeight(1.6);
    stroke(0.1);
    text("press keys a, b, c, d, e, f & g to choose a sound and color", 50, 90);
    file = fileF;
    file.play();
  //G = RED
    } else if (keyCode == 71){
    rValue = 244;
    gValue = 0;
    bValue = 4;
    fill(rValue,gValue,bValue);
    strokeWeight(1.6);
    stroke(0.1);
    text("press keys a, b, c, d, e, f & g to choose a sound and color", 50, 90);
    file = fileG;
    file.play();
    } 
 

}

void mousePressed() {
  file.play();
   systems.add(new ParticleSystem(1, new PVector(mouseX, mouseY)));
}
