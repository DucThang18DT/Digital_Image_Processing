I = imread('cameraman.tif');
F1=[1,2,1]/4;
F2=[1;1;1]/3;
F=[1,2,1;1,2,1;1,2,1]/12;

Y1=uint8(conv2(I,F,'same'));
Y2=uint8(conv2(conv2(I,F1,'same'),F2,'same'));
figure
subplot(221)
imshow(I)
subplot(222)
imshow(Y1)
subplot(223)
imshow(Y2)
Y=Y1-Y2