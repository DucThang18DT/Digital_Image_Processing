%bai1
I=imread('cameraman.tif');
F1=ones(3,3)/9;
img=uint8(conv2(I,F1));
figure
subplot(121)
imshow(I)
subplot(122)
imshow(img);

F1=ones(5,5)/25;
img=uint8(conv2(I,F1));
figure
subplot(121)
imshow(I)
subplot(122)
imshow(img);

F1=ones(9,9)/81;
img=uint8(conv2(I,F1));
figure
subplot(121)
imshow(I)
subplot(122)
imshow(img);

