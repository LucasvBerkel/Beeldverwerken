function [ height ] = gaussian( sigma, dimension, x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
height = (1/(sqrt(2*pi)*sigma)^dimension)*exp(-(x^2)/(2*sigma^2));
return

end

