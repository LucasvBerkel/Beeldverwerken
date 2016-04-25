% Beeldverwerken Opdracht 2
% Part 2, Gauss1 function
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

function [ gauss ] = Gauss1( sigma )
size = floor(sigma*2.5);
size = size + mod(size+1,2);
gauss = zeros(1, size);
for i=1:size
    distance = sqrt((i-(floor(size/2)+1))^2);
    gauss(1, i) = gaussian(sigma, 1, distance);
end
normalizeFactor = sum(gauss);
gauss = gauss/normalizeFactor;
end

