% Part 4 of the assignment
% Loads image and perfoms the affine transformation
% For now the points selected, produces the 45 degrees rotation

im = imread('attachments\cameraman.jpg');
im = im2double(im);
im = rgb2gray(im);
[sizeIm, width] = size(im);
% punten in volgorde in vullen: linksboven, rechtsboven, rechtsonder
offset = sin(degreesToRadian(45))*(sizeIm/3);
a = [-offset; sizeIm/2];
b = [sizeIm/2; sizeIm+offset];
c = [sizeIm+offset; sizeIm/2];
newIm = myAffine(im, a, b, c, sizeIm, width, 'nearest');

imshow(newIm)