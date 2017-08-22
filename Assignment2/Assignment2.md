Assignment 2
=========================
Assigned on 17th August, 2017

Question 1
-------------------------
Add random noise to an image. Repeat noise addition N times for different values of N and add the resulting images.

Question 2
-------------------------
Rotate an image by 45 and 90 degrees. Use different interpolation methods.

Question 3
-------------------------
For `spine.tif` enhance it using
1. Log transformation
2. Power-law transformation

Question 4
-------------------------
Write a function, generateHistogram, which generates the histogram of an image. The
function should take an image data array (with pixel values in the range 0 – 255) as its only
parameter and return an array containing the histogram of the image. The histogram can be
displayed using the built in plotting function. Use this new function to generate and display
histograms for the following images.

Question 5
-------------------------
Implement a histogram equalization function. Use it to enhance the above images. If using
Matlab, compare your implementation with Matlab’s built-in function.

Question 6
-------------------------
Using any programming language you feel comfortable with, load an image and then
perform a simple spatial 3x3 average of image pixels. In other words, replace the value of
every pixel by the average of the values in its 3x3 neighborhood. If the pixel is located at
(0,0), this means averaging the values of the pixels at the positions (-1,1), (0,1), (1,1), (-1,0),
(0,0), (1,0), (-1,-1), (0,-1), and (1,-1). Be careful with pixels at the image boundaries. Repeat
the process for a 10x10 neighbourhood and again for a 20x20 neighbourhood. Observe
what happens to the image and give explanation for it. If you are using Matlab, investigate
simple command lines to do this important operation.
