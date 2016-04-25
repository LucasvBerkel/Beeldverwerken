% Beeldverwerken Opdracht 2
% Part 2, Function gD, to calculate the Gaussian derivatives of an image
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

function [ output_args ] = gD(f, sigma, xorder, yorder)
    switch xorder
        case 1
            firstOrderGaussianDerivative
        case 2
            secondOrderGaussianDerivative
    end
    switch yorder
        case 1
            ..
        case 2
end

