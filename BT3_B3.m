% Can bang Histogram anh mau

X = imread('imgb2_B1.jpg');
X = X-30;
figure;
imshow(X);
figure;
imshow(histeq(X));