function r = myAffine ( image , x1 , y1 , x2 , y2 , x3 , y3 , M , N , method )
r = zeros (M , N , 'uint8'); % allocate new image of correct size
A = [ x1 , x2 , x3 ; y1 , y2 , y3 ; 1 , 1 , 1];
B = [ 1 , N , N ; 1 , 1 , M ];
X = B / A ;
for xa = 1: M
    for ya = 1: N
        newVector = X * [xa; ya; 1];
        [colorR, colorG, colorB] = pixelValue ( image , floor(newVector(1)) , floor(newVector(2)) , method );
        r(xa, ya, 1) = colorR;
        r(xa, ya, 2) = colorG;
        r(xa, ya, 3) = colorB;
    end
end
