% Part 3 of the assignment
% Takes the image and rotates it 45 degrees counterclockwise and 45 degrees
% clockwise. After the border is removed and the perfomance of the two
% pixel value methods are compared.

im = imread('attachments/cameraman.jpg');
im = im2double(im);
im = rgb2gray(im);
[height, width] = size(im);

disp('linear:')
tic
newImageLinear = rotateImage(im, 45, 'linear');
toc
disp('Second rotation:')
tic
newImageLinear = rotateImage(newImageLinear, -45, 'linear');
toc
newImageLinear = removeBorder(newImageLinear, height, width);

disp('nearest:')
tic
newImageNearest = rotateImage(im, 45, 'nearest');
toc
disp('Second rotation:')
tic
newImageNearest = rotateImage(newImageNearest, -45, 'nearest');
toc
newImageNearest = removeBorder(newImageNearest, height, width);

errorLinear = checkImage(im, newImageLinear);
errorNearest = checkImage(im, newImageNearest);

disp('Error for linear:')
disp(errorLinear)
disp('Error for nearest')
disp(errorNearest)