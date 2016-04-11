variables = load('attachments/calibrationpoints.mat');

estimateProjectionMatrix(variables.XYZ, variables.xy)