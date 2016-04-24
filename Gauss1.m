function [ gauss ] = Gauss1( sigma )
size = 5;
gauss = zeros(1, size);
for i=1:size
    distance = sqrt((i-(floor(size/2)+1))^2);
    gauss(1, i) = gaussian(sigma, 1, distance);
end
normalizeFactor = sum(gauss);
gauss = gauss/normalizeFactor;
end

