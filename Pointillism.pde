PImage img;
int pointillize = 16; // diameter of each point that drwas the image

void setup() {
 size(213,236);
 
 img = loadImage("../sunflower.jpg");
 background(0);
 smooth();
 
 loadPixels();
 img.loadPixels();
}

void draw() {
 // Pick a random point
 int x = int(random(img.width));
 int y = int(random(img.height));
 
 int loc = x + y * width;
 
 // Look up the RGB color in the source image
 float r = red(img.pixels[loc]);
 float g = green(img.pixels[loc]);
 float b = blue(img.pixels[loc]);
 
 // Draw an ellipse at that location with that color
 noStroke();
 fill(r,g,b,100);
 ellipse(x, y, pointillize, pointillize);
}
