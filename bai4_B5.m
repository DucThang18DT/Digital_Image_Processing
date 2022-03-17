%{
<<<<<<< HEAD
I=double(imread('cameraman.tif'));
sigma=10,5;
a=randn(size(I));
I1=I+sigma*randn(size(I));
I2=imnoise(I,'salt & pepper',0.02);
i8= ~I2;
I3=I+i8;
figure
subplot(121)
imshow(uint8(I1))
subplot(122)
imshow(I3)
=======
%}
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
%>>>>>>> a7068fcc17016436df53dc3d45aa799e14e34cef
