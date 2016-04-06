function [ resultingRow ] = createRowWidth( height, width )
currentRow = [];
for i=1:height
    currentRow = [currentRow 1:width];
end
resultingRow = currentRow;
return;

end

