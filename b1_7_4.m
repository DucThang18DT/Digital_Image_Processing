I=double(imread('cameraman.tif'));
S=fft2(I);
figure
subplot(221)
imshow(uint8(I))
title('anhgoc');
subplot(222)
imagesc(log(abs(fftshift(S))));
title('fourier');

F=zeros(size(S));
[m,n]=size(S);

[u v]=meshgrid([1:n],[1:m]);
Duv=sqrt((u-(m+1)/2).^2+(v-(n+1)/2).^2);
%D0=min(n/2,m/2);
D0 = 20;
F(Duv<D0)=1;
subplot(223)
imshow(F,[]);

S1=fftshift(S).*F;
S1=ifftshift(S1);
I1=ifft2(S1);
subplot(224)
imshow(real(I1),[]);

