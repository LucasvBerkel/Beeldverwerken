% Beeldverwerken Opdracht 2
% Part 2, Function gD, to calculate the Gaussian derivatives of an image
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

function [ image ] = gD(f, sigma, xorder, yorder)
    switch xorder
        case 1
            image = firstOrderGaussianDerivative(f, sigma)
        case 2
            image = secondOrderGaussianDerivative(f, sigma)
    end
    switch yorder
        case 1
            image = firstOrderGaussianDerivative(f, sigma)
        case 2
            image = firstOrderGaussianDerivative(f, sigma)
end

