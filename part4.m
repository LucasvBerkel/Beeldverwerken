% Part 4 of the assignment
% Loads image and perfoms the affine transformation
% For now the points selected, produces the 45 degrees rotation

im = imread('attachments\cameraman.jpg');
im = im2double(im);
im = rgb2gray(im);
[sizeIm, width] = size(im);
% punten in volgorde in vullen: linksboven, rechtsboven, rechtsonder
question = 'Do you want to select three points?(default is performing 45 degrees rotation)';
request = input(question, 's');
if strcmp(request, 'yes')
    imshow(im);
    points = ginput(3);
    a = [points(1, 2); points(1,1)];
    b = [points(2, 2); points(2,1)];
    c = [points(3, 2); points(3,1)];
else
    offset = sin(degreesToRadian(45))*(sizeIm/3);
    a = [-offset; sizeIm/2];
    b = [sizeIm/2; sizeIm+offset];
    c = [sizeIm+offset; sizeIm/2];
end
newIm = myAffine(im, a, b, c, sizeIm, width, 'nearest');

imshow(newIm)