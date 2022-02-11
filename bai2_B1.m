clc; clear;
X = imread('imgb2_B1.jpg');
blsize = floor(size(X)./4);
X = X(1:blsize(1)*4, 1:blsize(2)*4, 1:3);
%imshow(X);
Posi = randperm(16);

for i = 1:16
    a = floor((i-1)/4);
    b = i - a*4 -1;
    a1 = floor((Posi(1,i)-1)/4);
    b1 = Posi(i) - 1 - a1*4;
    Y(a*blsize(1)+1:(a+1)*blsize(1), b*blsize(2)+1:(b+1)*blsize(2), 1:3) = X((a1*blsize(1)+1):(a1+1)*blsize(1), (b1*blsize(2)+1):(b1+1)*blsize(2), 1:3);
end

imshow(Y);
