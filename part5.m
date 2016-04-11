% load and show image
im = imread('attachments/flyers.png');
imshow(im)

% select coordinates, round off
p = ginput(4)
p = floor(p + 0.5)