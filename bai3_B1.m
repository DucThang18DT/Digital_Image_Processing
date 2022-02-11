clc; clear;
X = imread('imgb2_B1.jpg');
middle = round(size(X)./2);
distance = ceil(sqrt(middle(1)^2 + middle(2)^2));
alpha = pi/3;
for x = 1:size(X,1)
    for y = 1:size(X,2)
        x1 = round(middle(1) + (x - middle(1))*cos(alpha) - (y - middle(2))*sin(alpha));
        y1 = round(middle(2) + (x - middle(1))*sin(alpha) + (y + middle(2))*cos(alpha));
        Y(x1+distance - middle(1), y1+distance - middle(2), 1:3) = X(x,y, 1:3);
    end
end
imshow(Y);