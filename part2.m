% Part 2 of the assignment
% Loads an image and compares the two pixelvalue methods.

im = imread('attachments/calibrationpoints.jpg');
im = im2double(im);
im = rgb2gray(im);

hold on ;
plot ( profile ( im , 100 , 100 , 130 , 130 , 200 , 'linear') , 'b' );
plot ( profile ( im , 100 , 100 , 130 , 130 , 200 , 'nearest') , 'r' );
hold off ;

xlabel('pixel number');
ylabel('pixelvalue');
title('Comparing linear and nearest pixelvalue retrieval')
legend({'linear' 'nearest'})