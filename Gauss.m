% Beeldverwerken Opdracht 2
% Part 2, Gauss function
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

function [gauss] = Gauss(sigma)
size = floor(sigma*2.5);
size = size + mod(size+1,2);
gauss = zeros(size,size);
for i=1:size
    for j=1:size
        distance(1) = i-(floor(size/2)+1);
        distance(2) = j-(floor(size/2)+1);
        gauss(i, j) = gaussian(sigma, 2, distance);
    end
end
normalizeFactor = sum(sum(gauss));
gauss = gauss/normalizeFactor;
end

