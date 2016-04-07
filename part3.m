im = imread('attachments/cameraman.jpg');
im = im2double(im);
im = rgb2gray(im);

newImage = rotateImage(im, 50);

imshow(newImage)