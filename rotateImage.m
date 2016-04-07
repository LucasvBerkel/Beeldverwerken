function [ newImage ] = rotateImage( im, degrees )

rad = degreesToRadian(degrees);
[heightOriginalImage, widthOriginalImage] = size(im);
[newHeight, newWidth] = calculateBorder(degreesToRadian(mod(degrees,90)), heightOriginalImage, widthOriginalImage);
newImage = zeros(floor(newHeight+1), floor(newWidth+1));
newImage(:,:) = 0;

startHeight = floor((newHeight/2)-(heightOriginalImage/2));
startWidth = floor((newWidth/2)-(widthOriginalImage/2));

for i=1:heightOriginalImage
    for j=1:widthOriginalImage
        newImage(startHeight + i, startWidth + j) = im(i, j);
    end
end

matrix = rotation(rad, newImage);
storageImage = newImage;
[newHeight, newWidth] = size(newImage);
pixelsMatrix = createMatrix(newHeight, newWidth);
newPixelsMatrix = matrix*pixelsMatrix;
[~, length] = size(newPixelsMatrix);

for i=1:length
    oldLocationVector = newPixelsMatrix(:,i);
    color = pixelValue(storageImage, oldLocationVector(1), oldLocationVector(2), 'linear');
    newLocationVector = pixelsMatrix(:,i);
    newImage(newLocationVector(1),newLocationVector(2)) = color;
end

newImage;
return;

end

