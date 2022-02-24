X = imread('imgb2_B1.jpg');
X = rgb2gray(X);
figure;
imshow(X);
for i = 1: size(X,1)
    for j = 1:size(X,2)
        if (X(i,j)>= 100 && X(i,j) <= 150)
            X(i,j) = 200;
        end
    end
end
figure;
imshow(X);