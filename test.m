% Beeldverwerken Opdracht 2
% Part 2, testing
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

a = sum(sum(Gauss(1)));
b = sum(sum(Gauss(5)));
c = sum(sum(Gauss(400)));
d = sum(Gauss(1));
e = sum(Gauss(5));
f = mesh(Gauss(3));

im = rgb2gray(im2double(imread('cameraman.jpg')));

h = imfilter(im, Gauss(400), 'conv', 'replicate');
imshow(h)
figure
g = imfilter(im, Gauss(1), 'conv', 'replicate');
imshow(g)