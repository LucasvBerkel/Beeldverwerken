function [ newImage ] = removeBorder( image, heightOr, widthOr )
newImage = zeros(heightOr, widthOr);
[height, width] = size(image);
startValueHeight = (height/2)-(heightOr/2);
startValueWidth = (width/2)-(widthOr/2);
for i=1:heightOr-1
    for j=1:widthOr-1
        newImage(i, j) = image(startValueHeight + i, startValueWidth + j);
    end
end
return;
end

