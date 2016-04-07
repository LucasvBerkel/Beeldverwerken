function [ error ] = checkImage(imOr, imCheck )
[height, width] = size(imCheck);
error = 0;
for i=1:height
    for j=1:width
        error = error + (imOr(i, j)-imCheck(i, j))^2;
    end
end
error = sqrt(error);
return;
end

