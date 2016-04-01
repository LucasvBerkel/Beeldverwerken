function [ matrix ] = rotation ( angle, image )
sizeIm = size(image);
width = sizeIm(2);
height = sizeIm(1);
transformationMatrix = [1 0 width/2; 0 1 height/2; 0 0 1];
inverseTransMatrix = [1 0 -width/2; 0 1 -height/2; 0 0 1];
rotationMatrix = [cos(angle) -sin(angle) 0; sin(angle) cos(angle) 0; 0 0 1];

matrix = transformationMatrix*rotationMatrix*inverseTransMatrix;
return;
end

