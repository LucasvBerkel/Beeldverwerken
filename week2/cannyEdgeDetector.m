% Part 3.7 and 3.8 of the assignment
% Loads the cameraman image and detects the edges of the image

im = rgb2gray(im2double(imread('cameraman.jpg')));
[newImage, fww] = canny(im, 1);
newImage = imcomplement(newImage);
imshow(newImage, [])