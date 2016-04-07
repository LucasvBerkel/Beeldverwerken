function [ resultingMatrix ] = createMatrix( height, width )
matrix = ones(3, height*width);
widthRow = [];
heightRow = [];
for i=1:height
    widthRow = [widthRow 1:width];
    heightRow= [heightRow ones(1,width)*i];
end
matrix(1,:) = heightRow;
matrix(2,:) = widthRow;
resultingMatrix = matrix;


end

