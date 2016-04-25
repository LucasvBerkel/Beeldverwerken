function [ fww ] = calculateFww( im, sigma )
fx = gD(im, sigma, 1, 0);
fy = gD(im, sigma, 0, 1);

fxx = gD(im, sigma, 2, 0);
fyy = gD(im, sigma, 0, 2);

fxy = gD(im, sigma, 1, 1);

fxSquared = fx.*fx;
fySquared = fy.*fy;



fww = (fxx .* fxSquared + 2 * fxy .* fx .* fy + fyy .* fySquared)/(fxSquared + fySquared);


end

