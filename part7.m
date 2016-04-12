% Part 7 of the assignment
% Takes the values of already given and produces the projectionMatrix

variables = load('attachments/calibrationpoints.mat');

estimateProjectionMatrix(variables.XYZ, variables.xy)