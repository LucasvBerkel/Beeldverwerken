im = imread('cameraman.jpg');
im = rgb2gray(im2double(im));

question = 'Do you want to mean, blur or unsharp mask the image?';
request = input(question, 's');
if(strcmp(request, 'mean'))
    disp('Mean')
    g = 1/9*[1 1 1; 1 1 1; 1 1 1];
elseif(strcmp(request, 'blur'))
    disp('Blur')
    g = 1/16*[1 2 1; 2 4 2; 1 2 1];
elseif(strcmp(request, 'unsharp mask'))
    disp('Unsharp mask')
    g = 1/8*[0 -1 0; -1 12 -1; 0 -1 0];
else
    disp('Nothing interesting done.');
    g = [0 0 0; 0 1 0; 0 0 0];
end

h = imfilter(im, g, 'conv', 'replicate');

figure
imshow(im)

figure
imshow(h)
