% Beeldverwerken Opdracht 2
% Part 2, plotting the runtime of convolution
% Lucas van Berkel, 10747958
% Gideon Mooijen, 10686290

% Load image, define amount of runs, reset counter
im = rgb2gray(im2double(imread('cameraman.jpg')));
times = 10;
elapsedTime = 0;

% Execute run, store runtimes
for i = 2:times
    tic;
    H = imfilter (im, Gauss(3) ,'conv' , 'replicate');
    toc;
    elapsedTime(i) = elapsedTime(i-1) + toc;
end

% Plot runtimes, calculate average
plot(elapsedTime)
average = elapsedTime(times)/times