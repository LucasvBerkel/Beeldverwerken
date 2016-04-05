function [ height, width ] = calculateBorder( angle, heightOr, widthOr )
height = sin(angle)*widthOr + cos(angle)*heightOr;
width = cos(angle)*widthOr + sin(angle)*heightOr;
return;
end

