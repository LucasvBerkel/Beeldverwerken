% Beeldverwerken Opdracht 2
% Part 2, Check if the result of two consecutive convolutions is equal to
% a single convolution of the appropriate scale
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

im = rgb2gray(im2double(imread('cameraman.jpg')));
f = imfilter(im, Gauss(5), 'conv', 'replicate');
imshow(f)
figure