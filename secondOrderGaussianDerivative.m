function [ kernel ] = secondOrderGaussianDerivative( sigma )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
size = floor(sigma*2.5);
size = size + mod(size+1,2);
kernel = zeros(1, size);
for i=1:size
    distance = sqrt((i-(floor(size/2)+1))^2);
    kernel(1, i) = ((distance^2/sigma^4) - (distance/sigma^2))*gaussian(sigma, 1, distance);
end
normalizeFactor = sum(kernel);
kernel = kernel/normalizeFactor;

end

