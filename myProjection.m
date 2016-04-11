function projection = myProjection ( image , x1 , y1 , x2 , y2 , ...
x3 , y3 , x4 , y4 , m , n , method )
% allocate new image of correct size
projection = zeros (n , m );
% calculate projection matrix
for xIndex = 1: m
    for yIndex = 1: n
    % calculate x and y
    projection ( yIndex , xIndex ) = ...
    pixelValue ( image , x , y , method );
    end
end