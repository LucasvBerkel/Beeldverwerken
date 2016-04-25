% Beeldverwerken Opdracht 2
% Part 2, convolution with a seperable function
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

% Load image, convolve along the rows, then convolve along the columns
im = rgb2gray(im2double(imread('cameraman.jpg')));
f = imfilter(im, Gauss1(5), 'conv', 'replicate');
g = imfilter(f, Gauss1(5)', 'conv', 'replicate');
imshow(g)