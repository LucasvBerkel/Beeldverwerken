% Beeldverwerken Opdracht 2
% Part 2, Check if the result of two consecutive convolutions is equal to
% a single convolution of the appropriate scale
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

% Perfom gaussian convolution with sigma = 3, then with sigma = 4
im = rgb2gray(im2double(imread('cameraman.jpg')));
f = imfilter(im, Gauss(3), 'conv', 'replicate');
f = imfilter(f, Gauss(4), 'conv', 'replicate');
imshow(f);

% Perform gaussian convolution with sigma = 5
im = rgb2gray(im2double(imread('cameraman.jpg')));
g = imfilter(im, Gauss(5), 'conv', 'replicate');
imshow(g);

% Check and return the difference of the pixelvalues
checkImage(g,f)