% Beeldverwerken Opdracht 2
% Part 2, plotting the runtime of convolution
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

% Load image, define amount of runs, reset counter
im = rgb2gray(im2double(imread('cameraman.jpg')));
average = 0;
times = 25;
scale = 50;

% Per scale, execute the runs, calculate and store the average runtime 
for j = 1:scale
    elapsedTime = 0;
    for i = 1:times
        tic;
        H = imfilter(im, Gauss1(j) ,'conv' , 'replicate');
        H = imfilter(H, Gauss1(j)' ,'conv' , 'replicate');
        elapsedTime = elapsedTime + toc;
    end
    average(j) = elapsedTime/times;
end
plot(average)