im = imread('attachments\cameraman.jpg');
[height, width, ~] = size(im);
newIm = myAffine(im, 100, 100, height, 1, height, width, 356, 356, 'nearest');

image(newIm)