function [ fw ] = calculateFw( im, sigma )
imageX = gD(im, sigma, 1, 0);
imageY = gD(im, sigma, 0, 1);

imageXSquared = imageX.*imageX;
imageYSquared = imageY.*imageY;

fw = sqrt(imageXSquared + imageYSquared);

end

