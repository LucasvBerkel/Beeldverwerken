im = imread('attachments/calibrationpoints.jpg');
im = im2double(rgb2gray(im));

matrix = rotation(30, im)

matrix*[1; 1; 1]
matrix*[320; 240; 1]