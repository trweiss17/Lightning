int startX = 250;
int endX = 250;
int startY = 360;
int endY = 360;
boolean generateLightning = false;

void setup() {
  size(800, 600);
  strokeWeight(4);
  frameRate(60);
}

void draw() {
 // background(240);  
  

  if (generateLightning) {
    // Lightning
    endX = startX + (int)(Math.random() * 10);
    endY = startY + (int)(Math.random() * 19) - 9;
    stroke(255, 0, 0); // Set stroke color to red for lightning
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;

    if(startX >= width) {
      generateLightning = false;
      startX = 250;
      startY = 360;
      endX = 250;
      endY = 360;
    }
  }
}

void mousePressed() {
  startX = 250;
  startY = 360;
  endX = 250;
  endY = 360;
  generateLightning = true;
}


