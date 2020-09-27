PImage img;
int windowSize = 50;

void setup() {
  size(213,236);
  
  img = loadImage("../sunflower.jpg");
}

void draw() {
 loadPixels();
 img.loadPixels();
 
 for(int y = 0; y < img.height; y++) {
   for(int x = 0; x < img.width; x++) {
     // Calculate the 1D pixel location
    int loc = x + y * img.width;
    
    // Get the RGB values from image
    float r = red(img.pixels[loc]);
    float g = green(img.pixels[loc]);
    float b = blue(img.pixels[loc]);
    
    // Change brightness according to the mouse here
    float distance = dist(mouseX, mouseY, x, y); 
    float adjustBrightness = (windowSize - distance)/windowSize;
    r *= adjustBrightness;
    g *= adjustBrightness;
    b *= adjustBrightness;
    
    // Constrain RGB to be between 0 - 255
    r = constrain(r, 0, 255);
    g = constrain(g, 0, 255);
    b = constrain(b, 0, 255);
    
    // Make a new color and set pixels in the window
    color c = color(r,g,b);
    pixels[loc] = c;
   }
 }
 
 updatePixels();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      windowSize += 10;
    }
    else if (keyCode == DOWN) {
      windowSize -= 10;
    }
  }
}
