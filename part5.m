% load and show image
im = imread('attachments/flyers.png');
im = im2double(im);
im = rgb2gray(im);
imshow(im);

sizeNewImage = 500;

% select coordinates, round off
p = ginput(4);
p = floor(p + 0.5);
q = [1, 1; sizeNewImage, 1; sizeNewImage, sizeNewImage; 1,sizeNewImage];

projMatrix = createProjectionMatrix(p, q);

newImage = zeros(sizeNewImage,sizeNewImage);
oldMatrix = createMatrix(sizeNewImage, sizeNewImage);
newMatrix = projMatrix \ oldMatrix;
[~, length] = size(oldMatrix);

for i=1:length
    newVector = newMatrix(:,i);
    newVector = newVector/newVector(3);
    oldVector = oldMatrix(:,i);
    newImage(oldVector(2), oldVector(1)) = pixelValue(im, newVector(1), newVector(2), 'nearest');
end

imshow(newImage)