function projMatrix = estimateProjectionMatrix( XYZ, uv)
x = XYZ (: , 1);
y = XYZ (: , 2);
z = XYZ (: , 3);

u = uv (: , 1);
v = uv (: , 2);
o = ones ( size ( x ));
zero = zeros ( size ( x ));
Aoddrows = [x , y , z , o , zero , zero , zero , zero, -u .* x , -u .* y , -u.*z , -u ];
Aevenrows = [zero , zero , zero , zero , x , y , z , o , -v .* x , -v .* y , -v .* z, -v ];

A = [Aoddrows; Aevenrows];
    

[~, ~, V] = svd(A); 
m = V(:, end); 

projMatrix = reshape(m, 4, 3)';
end