clc; clear;
X = imread('imgb2_B1.jpg');
middle = round(size(X)./2);
distance = ceil(sqrt(middle(1)^2 + middle(2)^2));
alpha = pi/3;
black(1,1,:) = [0 0 0];


for x = 1:size(X,1)
    for y = 1:size(X,2)
        x1 = round(middle(1) + (x - middle(1))*cos(alpha) - (y - middle(2))*sin(alpha));
        y1 = round(middle(2) + (x - middle(1))*sin(alpha) + (y + middle(2))*cos(alpha));
        Y(x1+distance - middle(1), y1+distance - middle(2), 1:3) = X(x,y, 1:3);
    end
end

check = 0;
for x = 1:size(Y,1)
    for y = 1:size(Y,2)
        if (Y(x,y,:) == black) 
            continue;
        else
            Y = Y(x:size(Y,1), :, :);
            check = 1;
            break;
        end
    end
    if (check == 1) 
        break;
    end
end
check = 0;
for y = 1:size(Y,2)
    for x = 1:size(Y,1)
        if (Y(x,y, :) == black)
            continue;
        else
            Y = Y(:, y:size(Y, 2), :);
            check = 1;
            break;
        end
    end
    if (check == 1)
        break;
    end
end

imshow(Y);
