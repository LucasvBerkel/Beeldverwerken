im = rgb2gray(im2double(imread('cameraman.jpg')));
[newImage, fww] = canny(im, 1);
newImage = imcomplement(newImage);
imshow(newImage, [])