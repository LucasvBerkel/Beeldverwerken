pic1 = imread('testImage.png');
pic2 = imread('testImage1.png');

pic3 = imread('attachments\cameraman.jpg');

function color = pixelValue(image, x, y, method)
% pixel value at real coordinates
if inImage ( size ( image ) ,x , y )
    % do the interpolation
    switch ( method )
        case 'nearest'
            return ;
        case 'linear'
            % Do bilinear interpolation
    end %end switch
else
    % return a constant
end