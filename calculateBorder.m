function [ height, width ] = calculateBorder( angle, heightOr, widthOr )
%% Function calculates the measurments of the new image before rotation
% So no information is lost

height = sin(angle)*widthOr + cos(angle)*heightOr;
width = cos(angle)*widthOr + sin(angle)*heightOr;
return;
end

