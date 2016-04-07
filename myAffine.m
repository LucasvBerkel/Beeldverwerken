function r = myAffine ( image , a, b, c, M , N , method )
x1 = a(1);
y1 = a(2);
x2 = b(1);
y2 = b(2);
x3 = c(1);
y3 = c(2);
r = zeros (N, M); % allocate new image of correct size
B = [ x1 , x2 , x3 ; y1 , y2 , y3];
A = [ 1 , M , M ; 1 , 1 , N; 1 1 1];
X = B / A ;
for xa = 1: M
    for ya = 1: N
        newVector = X*[xa; ya; 1];
        r(ya, xa) = pixelValue ( image , newVector(1) , newVector(2) , method );
    end
end

% matrix = createMatrix(M, N);
% newMatrix = X*matrix;
% [length, ~] = size(matrix);
% for i=1:length
%     newVector = newMatrix(:,i);
%     oldVector = matrix(:,i);
%     r(oldVector(1), oldVector(2)) = pixelValue ( image , newVector(1) , newVector(2) , method );
% end
end
