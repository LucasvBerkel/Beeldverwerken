function [ resultingRow ] = createRowHeight( height, width )
currentRow = [];
for i=1:height
    currentRow = [currentRow ones(1,width)*i];
end
resultingRow = currentRow;
return;
end

