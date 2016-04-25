% Beeldverwerken Opdracht 2
% Part 2, calculate the second order gaussian derivative
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

function [ kernel ] = secondOrderGaussianDerivative(sigma)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
size = floor(sigma*2.5);
size = size + mod(size+1,2);
kernel = zeros(1, size);
for i=1:size
    distance = i-(floor(size/2)+1);
    kernel(1, i) = ((distance^2/sigma^4) - (distance/sigma^2))*gaussian(sigma, 1, distance);
end
end

