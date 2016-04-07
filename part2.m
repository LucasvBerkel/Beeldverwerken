im = imread('attachments/calibrationpoints.jpg');

% x = 10;
% y = 10;
% method = 'nearest';
% color = pixelValue(im, x, y, method)
% method = 'linear';
% color = pixelValue(im, x, y, method)

% plot ( profile ( im , 100 , 100 , 120 , 120 , 200 , 'nearest') );

hold on ;
plot ( profile ( im , 100 , 100 , 130 , 130 , 200 , 'linear') , 'b' );
plot ( profile ( im , 100 , 100 , 130 , 130 , 200 , 'nearest') , 'r' );
hold off ;

