% Beeldverwerken Opdracht 2
% Part 2, testing
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

a = sum(sum(Gauss(1)));
b = sum(sum(Gauss(5)));
c = sum(sum(Gauss(400)));
d = sum(Gauss(1));
e = sum(Gauss(5));

im = rgb2gray(im2double(imread('cameraman.jpg')));

f = imfilter(im, Gauss(5), 'conv', 'replicate');
imshow(f)
figure
g = imfilter(im, Gauss1(5), 'conv', 'replicate');
g = imfilter(g, Gauss1(5)', 'conv', 'replicate');
imshow(g)

