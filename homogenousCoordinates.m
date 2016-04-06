im = imread('attachments/cameraman.jpg');

degrees = 30;

rad = degreesToRadian(degrees);
[heightOriginalImage, widthOriginalImage, ~] = size(im);
[newHeight, newWidth] = calculateBorder(degreesToRadian(mod(degrees,90)), heightOriginalImage, widthOriginalImage);
newImage = zeros(floor(newHeight+1), floor(newWidth+1));
newImage = uint8(newImage);
newImage(:,:,1) = 0;
newImage(:,:,2) = 0;
newImage(:,:,3) = 0;

startHeight = floor((newHeight/2)-(heightOriginalImage/2));
startWidth = floor((newWidth/2)-(widthOriginalImage/2));

for i=1:heightOriginalImage
    for j=1:widthOriginalImage
        newImage(startHeight + i, startWidth + j, 1) = im(i, j, 1);
        newImage(startHeight + i, startWidth + j, 2) = im(i, j, 2);
        newImage(startHeight + i, startWidth + j, 3) = im(i, j, 3);
    end
end

[m1, m2, m3] = rotationTemp(rad, newImage);
matrix = m3*m2*m1;
storageImage = newImage;
[newHeight, newWidth, ~] = size(newImage);
pixelsMatrix = createMatrix(newHeight, newWidth);
newPixelsMatrix = matrix*pixelsMatrix;
[~, length] = size(newPixelsMatrix);

for i=1:length
    oldLocationVector = newPixelsMatrix(:,i);
    [colorR, colorG, colorB] = pixelValue(storageImage, oldLocationVector(1), oldLocationVector(2), 'linear');
    newLocationVector = pixelsMatrix(:,i);
    newImage(newLocationVector(1),newLocationVector(2),1) = colorR;
    newImage(newLocationVector(1),newLocationVector(2),2) = colorG;
    newImage(newLocationVector(1),newLocationVector(2),3) = colorB;
end

image(newImage)