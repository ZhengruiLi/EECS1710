//https://www.reddit.com/r/processing/comments/bm9liz/how_to_run_glsl_programs_in_processing/
PShader myShader;

float previousTime = 0.0;


void setup() {
  size(640, 360, P2D);
  
  // Load the shader file from the "data" folder
  myShader = loadShader("defaultShader.glsl");
  
  myShader.set("iResolution", float(width), float(height), 0.0);
  myShader.set("rate",1.0);
  myShader.set("depth", 1.0);

}


void draw() {
  
  // shader playback time (in seconds)
  float currentTime = millis()/1000.0;
  myShader.set("iTime", currentTime);
  
  // render time (in seconds)
  float timeDelta = currentTime - previousTime;
  previousTime = currentTime;
  myShader.set("iDeltaTime", timeDelta);
  
  // shader playback frame
  myShader.set("iFrame", frameCount);
  
  float timeInSeconds = hour()*3600 + minute()*60 + second();
  myShader.set("iDate", year(), month()-1, day()-1, timeInSeconds );  

  // This uniform is undocumented so I have no idea what the range is
  myShader.set("iFrameRate", frameRate);

  // Apply the specified shader to any geometry drawn from this point  
  shader(myShader);

  // Draw the output of the shader onto a rectangle that covers the whole viewport.
  rect(0, 0, width, height);
  
  resetShader();
  
}
