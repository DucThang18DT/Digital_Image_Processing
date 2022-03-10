I = imread('cameraman.tif');
F1=[1,2,1]/4;
F2=[1;1;1]/3;
F=[1,2,1;1,2,1;1,2,1]/12;

Y1=uint8(conv2(I,F));
Y2=uint8(conv2(conv2(I,F1),F2));
figure
subplot(221)
imshow(I)
subplot(222)
imshow(Y1)
subplot(223)
imshow(Y2)
