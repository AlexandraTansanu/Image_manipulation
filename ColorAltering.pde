PImage img;

void setup() {
  size(213,234); // make the canvas the same size as the image for simplicity
  img = loadImage("../sunflower.jpg"); 
}

void draw() {
 loadPixels();
 
 // Since we are going to access the image's pixels too
 img.loadPixels();
 
 for(int y = 0; y < height; y++) {
   for(int x = 0; x < width; x++) {
    int loc = x + y * width;
    
    // Image Processing algorithm would go here
    float r = red(img.pixels[loc]);
    float g = green(img.pixels[loc]);
    float b = blue(img.pixels[loc]);
   
    // Set the display pixel to the image pixel where red and green are dialed down
    pixels[loc] = color(r/2, g/2, b);
   }
 }
 
 updatePixels();
}
