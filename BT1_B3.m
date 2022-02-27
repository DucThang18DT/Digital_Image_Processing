%{
Viet code ?e tim va hien thi histogram cua mot anh xam I. 
So sanh voi lenh imhist trong Matlab (ngoai ra, 
neu dung lenh "hist" trong Matlab thi phai thuc hien nhu the nao)
%}
X = imread('imgb2_B1.jpg');
X = rgb2gray(X);
%figure;
%imshow(X);
H = zeros(256,1);
for i = 1: size(X,1)
    for j = 1:size(X,2)
        H(X(i,j)+1) = H(X(i,j)+1)+1;
    end
end

figure;
bar(H);
figure;
imhist(X);
