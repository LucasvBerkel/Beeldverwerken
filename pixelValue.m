function [ color ] = pixelValue(image, x, y, method)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% pixel value at real coordinates
sizeIm = size(image);
if inImage(sizeIm(1), sizeIm(2), x , y )
    % do the interpolation
    switch ( method )
        case 'nearest'
            color = image(floor(x+(1/2)),floor(y+(1/2)));
            return;
        case 'linear'
            x_1 = floor(x);
            x_2 = x_1+1;
            y_1 = floor(y);
            y_2 = y_1+1;
            
            x_rest = x-x_1;
            y_rest = y-y_1;
            
            firstPoint = (x_rest*(image(x_2, y_1)-image(x_1, y_1)))+image(x_1, y_1);
            secondPoint = (x_rest*(image(x_2, y_2)-image(x_1, y_2)))+image(x_1, y_2);
            
            color = ((secondPoint-firstPoint)*y_rest)+firstPoint;
    end %end switch
else
    color = 0;
end

