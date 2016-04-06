function [ colorR, colorG, colorB ] = pixelValue(image, x, y, method)
% pixel value at real coordinates
sizeIm = size(image);
if inImage(sizeIm(1), sizeIm(2), x , y )
    % do the interpolation
    switch ( method )
        case 'nearest'
            colorR = image(floor(x+(1/2)),floor(y+(1/2)), 1);
            colorG = image(floor(x+(1/2)),floor(y+(1/2)), 2);
            colorB = image(floor(x+(1/2)),floor(y+(1/2)), 3);
            return;
        case 'linear'
            x_1 = floor(x);
            x_2 = x_1+1;
            y_1 = floor(y);
            y_2 = y_1+1;
            
            x_rest = x-x_1;
            y_rest = y-y_1;
            
            firstPointR = (x_rest*(image(x_2, y_1, 1)-image(x_1, y_1, 1)))+image(x_1, y_1, 1);
            secondPointR = (x_rest*(image(x_2, y_2, 1)-image(x_1, y_2, 1)))+image(x_1, y_2, 1);
            
            firstPointG = (x_rest*(image(x_2, y_1, 2)-image(x_1, y_1, 2)))+image(x_1, y_1, 2);
            secondPointG = (x_rest*(image(x_2, y_2, 2)-image(x_1, y_2, 2)))+image(x_1, y_2, 2);
            
            firstPointB = (x_rest*(image(x_2, y_1, 3)-image(x_1, y_1, 3)))+image(x_1, y_1, 3);
            secondPointB = (x_rest*(image(x_2, y_2, 3)-image(x_1, y_2, 3)))+image(x_1, y_2, 3);
            
            colorR = ((secondPointR-firstPointR)*y_rest)+firstPointR;
            colorG = ((secondPointG-firstPointG)*y_rest)+firstPointG;
            colorB = ((secondPointB-firstPointB)*y_rest)+firstPointB;
            return;
    end %end switch
else
    colorR = 0;
    colorG = 65;
    colorB = 0;
end

