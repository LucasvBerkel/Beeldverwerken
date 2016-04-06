function [ resultingMatrix ] = createMatrix( height, width )
matrix = ones(3, height*width);
rowHeight = createRowHeight(height, width);
rowWidth = createRowWidth(height, width);
matrix(1,:) = rowHeight;
matrix(2,:) = rowWidth;
resultingMatrix = matrix;


end

