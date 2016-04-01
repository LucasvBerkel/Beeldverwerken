function [ boolean ] = inImage(height, width, x, y)
if(x > width || x < 1)
    boolean = false;
elseif(y > height || y < 1)
    boolean = false;
else
    boolean = true;
end
