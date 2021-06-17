# Image manipulation
The pixel and image manipulation exercises demostrate how Photoshop or any other image editor algorithms are implemeted. The exercises in this repository operate on images and build on the pixel manipulation exercises as the image itself is not really modified but rather the pixel of the canvas it map on are differently displayed.  

**Difficulty level:** Beginner. 

**Programming language:** Java.

**How they were built:** The image maipulation exercises simply access pixels in a canvas and manipulates their RGB values. The canvas is directly proportional with the image that is going to be manipulated. All pixels are stored in the Processing environment in a simple array. However, to access the position of a certain pixel, the program visualizes each picture as a 2D matrix for simplicity. Thus, to iterate over each pixel two for loops are used, one for the rows and one for the culmns. The position of a pixel is calulated as: *column + row * numb_of_elems_in_row*.  

> This exercise is written and animated using the Processing IDE. More information on inbuilt functions that have been used throughout the code can be found by accessing the [Processing Documentation](https://processing.org/reference/)

## ChangingBrightness.pde
https://user-images.githubusercontent.com/60512873/122463465-7cab0d80-cf6a-11eb-8d7b-e0b6c7d3d570.mp4

## ColorAltering.pde
![colorAltering](https://user-images.githubusercontent.com/60512873/122463945-1a064180-cf6b-11eb-91c8-6d2918e1b8ef.png)

## Pointillism.pde
https://user-images.githubusercontent.com/60512873/122464523-cb0cdc00-cf6b-11eb-9b2b-92b4fe084103.mp4

## SourceDestinationAltering.pde
![sourceDestinationAltering](https://user-images.githubusercontent.com/60512873/122465672-3a370000-cf6d-11eb-860f-67c89ffc605a.png)

## WindowBrightness.pde
https://user-images.githubusercontent.com/60512873/122465926-808c5f00-cf6d-11eb-87f5-4b4b725e8e74.mp4











