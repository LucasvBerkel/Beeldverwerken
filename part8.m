% Part 8 of the assignment
% It loads the values already given and calculates the remaining coordinates for the cube and plots them

im = imread('attachments/calibrationpoints.jpg');
im = im2double(im);
im = rgb2gray(im);

variables = load('attachments/calibrationpoints.mat');

xy = variables.xy;
XYZ = variables.XYZ;

matrix = estimateProjectionMatrix(XYZ, xy);
imshow(im)
faces = retrieveCubePoints(matrix, [0;0;0]);
subPlotFaces(faces);
faces = retrieveCubePoints(matrix, [0;7;4]);
subPlotFaces(faces);
faces = retrieveCubePoints(matrix, [6;0;2]);
subPlotFaces(faces);