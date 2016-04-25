% Beeldverwerken Opdracht 2
% Part 2, Function gD, to calculate the Gaussian derivatives of an image
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

function [ image ] = gD(f, sigma, xorder, yorder)
    kernelX = 1;
    kernelY = 1;
    if isequal(xorder,1)
        kernelX = firstOrderGaussianDerivative(sigma);
    end
    if isequal(yorder,1)
        kernelY = firstOrderGaussianDerivative(sigma);
    end
    if isequal(xorder,2)
        kernelX = secondOrderGaussianDerivative(sigma); 
    end
    if isequal(yorder,2)
        kernelY = secondOrderGaussianDerivative(sigma);
    end    
    image = imfilter(f, kernelX, 'conv', 'replicate');
    image = imfilter(image, kernelY', 'conv', 'replicate');

end