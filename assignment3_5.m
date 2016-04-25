x = -100:100;
y = -100:100;
[X , Y ] = meshgrid (x , y );
A = 1; B = 2; V = 6* pi /201; W = 4* pi /201;
F = A * sin ( V * X ) + B * cos ( W * Y );
imshow(F, [])
fOverX = A * V * cos( V * X );
figure
imshow(fOverX, [])
fOverY = - B * W * sin( W * Y );
figure
imshow(fOverY, [])

%%
xx = 1:10:201;
yy = 1:10:201;
[ XX , YY ] = meshgrid ( xx , yy );
fOverX = A * V * cos( V * XX );
fOverY = - B * W * sin( W * YY );
Fx = -fOverX;
Fy = fOverY;
imshow (F , []);
hold on ;
quiver ( xx , yy , Fx , Fy , 'r ' );
hold off ;
%%
imageX = gD(F, 1, 1, 0);
imageY = gD(F, 1, 0, 1);
xx = 1:10:201;
yy = 1:10:201;
Gx = zeros(21, 21);
Gy = zeros(21, 21);
for i=1:21
    for j=1:21
        Gx(i, j) = imageX(xx(i), yy(j));
        Gy(i, j) = imageY(xx(i), yy(j));
    end
end
imshow (F , []);
hold on ;
quiver ( xx , yy , Gx , Gy , 'r ' );
hold off ;

%%
H = rotateImage(F, 10, 'linear');
imageX = gD(H, 1, 1, 0);
imageY = gD(H, 1, 0, 1);
xx = 1:10:233;
yy = 1:10:233;
Gx = zeros(24, 24);
Gy = zeros(24, 24);
for i=1:24
    for j=1:24
        Gx(i, j) = imageX(xx(i), yy(j));
        Gy(i, j) = imageY(xx(i), yy(j));
    end
end
imshow (H , []);
hold on ;
quiver ( xx , yy , Gx*50 , Gy*50 , 'r ');
hold off ;

%% 
