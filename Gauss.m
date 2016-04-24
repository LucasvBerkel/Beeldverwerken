function [ gauss ] = Gauss( sigma )
size = 5;
gauss = zeros(size,size);
for i=1:size
    for j=1:size
        distance = sqrt(((i-(floor(size/2)+1))^2)+((j-(floor(size/2)+1))^2));
        gauss(i, j) = gaussian(sigma, 2, distance);
    end
end
normalizeFactor = sum(sum(gauss));
gauss = gauss/normalizeFactor;
end

