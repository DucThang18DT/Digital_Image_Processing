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