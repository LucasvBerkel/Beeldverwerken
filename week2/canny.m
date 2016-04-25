function [ edge, fww ] = canny( image, sigma )
% Receives the image and calculatest the fw and fww of the image.
% If the fww passes through 0, the gradient is put on a canvas.
[height, width] = size(image);
edge = zeros(width, height);
fww = calculateFww(image, sigma);
fw = calculateFw(image, sigma);
temp = 0;
for i=1:width
    for j=1:height
        if fww(i,j) > 0
            check = 1;
        else
            check = 0;
        end
        
        if isequal(temp,check)
            edge(i, j) = fw(i, j);
            temp = check;
        end
    end
end
end

