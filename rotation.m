function [ matrix ] = rotation ( angle, image )
%% Function calculates the rotation matrix

[height, width, ~] = size(image);
transformationMatrix = [1 0 -height/2; 0 1 -width/2; 0 0 1];
inverseTransMatrix = [1 0 height/2; 0 1 width/2; 0 0 1];
rotationMatrix = [cos(angle) sin(angle) 0; -sin(angle) cos(angle) 0; 0 0 1];

matrix = inverseTransMatrix*rotationMatrix*transformationMatrix;
return;
end

