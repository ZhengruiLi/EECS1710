import processing.sound.*;
SoundFile file,fileA, fileB, fileC,fileD,fileE,fileF, fileG;
ArrayList<ParticleSystem> systems;
PGraphics pg;
int rValue = 250;
int gValue = 145; 
int bValue = 1;
int marktime = 0;
int timeout = 1000;

void setup() {
  size(1920, 1080, P2D);
  pg = createGraphics(1920, 1080, P2D);
  fileA = new SoundFile(this, "a.mp3");
  fileB = new SoundFile(this, "sunbells.mp3");
  fileC = new SoundFile(this, "c.mp3");
  fileD = new SoundFile(this, "d.mp3");
  fileE = new SoundFile(this, "fluttering.mp3");
  fileF = new SoundFile(this, "f.mp3");
  fileG = new SoundFile(this, "g.mp3");
  file = fileA;
  systems = new ArrayList<ParticleSystem>();

  pg.beginDraw();
  pg.background(225);
  pg.endDraw();
}

void draw() {
  background(0);
    textAlign(LEFT);
  textSize(32);
  noFill();
  strokeWeight(1.6);
  stroke(0.1);
  text("click the mouse to paint and play a sound", 50, 50);
  fill(rValue,gValue,bValue);
  text("press keys a, b, c, d, e, f & g to choose a sound and color", 50, 90);
  fill(16,205,255);
   for (ParticleSystem ps : systems) {
    ps.run();
    ps.addParticle();
  }
  if (systems.isEmpty()) {
    fill(255);
    textAlign(CENTER);
    text("click mouse to start", width/2, height/2);
  }
}
  
