function [ height ] = gaussian( sigma, dimension, x )
% The standard gaussian function
x = sqrt(dot(x,x));
height = (1/(sqrt(2*pi)*sigma)^dimension)*exp(-(x^2)/(2*sigma^2));
end

