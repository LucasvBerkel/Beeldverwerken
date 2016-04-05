im = imread('attachments/calibrationpoints.jpg');

rad = degreesToRadian(30);
[heightOriginalImage, widthOriginalImage, ~] = size(im);
[newHeight, newWidth] = calculateBorder(rad, heightOriginalImage, widthOriginalImage);
newImage = zeros(floor(newHeight+1), floor(newWidth+1));
newImage = uint8(newImage);
for i=1:newHeight
    for j=1:newWidth
        newImage(i,j,1) = 0;
        newImage(i,j,2) = 23;
        newImage(i,j,3) = 0;
    end
end

startHeight = floor((newHeight/2)-(heightOriginalImage/2));
startWidth = floor((newWidth/2)-(widthOriginalImage/2));

for k=1:heightOriginalImage
    for l=1:widthOriginalImage
        newImage(startHeight + k, startWidth + l, 1) = im(k, l, 1);
        newImage(startHeight + k, startWidth + l, 2) = im(k, l, 2);
        newImage(startHeight + k, startWidth + l, 3) = im(k, l, 3);
    end
end

matrix = rotation(rad, newImage);
newVector = matrix*[397;368;1]
% for a=1:newHeight
%     for b=1:newWidth
%         a
%         b
%         newVector = matrix*[a;b;1]
%         [colorR, colorG, colorB] = pixelValue(newImage, newVector(1), newVector(2), 'nearest');
%         newImage(a,b,1) = colorR;
%         newImage(a,b,2) = colorG;
%         newImage(a,b,3) = colorB;
%     end
% end

image(newImage)