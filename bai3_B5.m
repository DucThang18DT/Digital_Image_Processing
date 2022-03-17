I = imread('cameraman.tif');
F = [1,0,-1;2,0,-2;1,0,-1];
Y1=uint8(conv2(I,F));
Y2=uint8(conv2(I,F'));

figure
subplot(221)
imshow(I)
subplot(222)
imshow(Y1)
subplot(223)
imshow(Y2)