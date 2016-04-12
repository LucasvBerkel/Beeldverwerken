% Part8B of the assignment
% The views points of the pictures are already defined in a matlab array
% With the new picture and xy coordinates, the same calculations are made as with the origanal part8

variables = load('attachments/calibrationpoints.mat');
XYZ = variables.XYZ;

question = 'Do you want to see view 1, 2, 3 or 4?';
request = input(question);
switch request
    case 1
        im = imread('attachments/view1.jpg');
        variables = load('xyView1.mat');
        xy = variables.xyView1;
    case 2
        im = imread('attachments/view2.jpg');
        variables = load('xyView2.mat');
        xy = variables.xyView2;
    case 3
        im = imread('attachments/view3.jpg');
        variables = load('xyView3.mat');
        xy = variables.xyView3;
    case 4
        im = imread('attachments/view4.jpg');
        variables = load('xyView4.mat');
        xy = variables.xyView4;
end

im = im2double(im);
im = rgb2gray(im);

imshow(im)

matrix = estimateProjectionMatrix(XYZ, xy);
faces = retrieveCubePoints(matrix, [0;0;0]);
subPlotFaces(faces);
faces = retrieveCubePoints(matrix, [0;7;4]);
subPlotFaces(faces);
faces = retrieveCubePoints(matrix, [6;0;2]);
subPlotFaces(faces);
