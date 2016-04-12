function [ error ] = checkImage(imOr, imCheck )
%% Function compares a refenrence image(imOr) with a the produced image(imCheck)
% The euclidian distance between every pixel value is compared

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

