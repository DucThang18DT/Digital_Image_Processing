I = imread('cameraman.tif');
J = imnoise(I,'salt & pepper', 0.02);
K=medfilt2(J);
figure
subplot(221)
imshow(I)
subplot(222)
imshow(J)
subplot(223)
imshow(K)