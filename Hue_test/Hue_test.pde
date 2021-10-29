/**
 * Hue. 
 * 
 * Hue is the color reflected from or transmitted through an object 
 * and is typically referred to as the name of the color (red, blue, yellow, etc.) 
 * Move the cursor vertically over each bar to alter its hue. 
 */
 
int barHeight = 10;
int lastBar = -1;

void setup() 
{
  size(500, 500);
  colorMode(HSB, height, height, height);  
  noStroke();
  background(0);
}

void draw() 
{
  int whichBar = mouseY / barHeight;
  if (whichBar != lastBar) {
    int barY = whichBar * barHeight;
    fill(mouseX, width, width);
    rect(0, barY, width, barHeight);
    lastBar = whichBar;
  }
}
