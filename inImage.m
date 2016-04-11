function [ boolean ] = inImage(height, width, x, y)
if(x > height || x < 1)
    boolean = false;
elseif(y > width || y < 1)
    boolean = false;
else
    boolean = true;
end
