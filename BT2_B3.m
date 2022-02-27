%{
2) Viet code de thuc hien can bang histogram cua mot anh xam I. 
So sanh voi lenh histeq trong Matlab
%}

X = imread('imgb2_B1.jpg');
X = rgb2gray(X);
H = zeros(256,1);
for i = 1: size(X,1)
    for j = 1:size(X,2)
        H(X(i,j)+1) = H(X(i,j)+1)+1;
    end
end

MN = size(X,1)*size(X,2);
pr = [];
sum = 0;
S = [];
for i = 1:256
    pr(i) = H(i)/MN;
    sum = sum + pr(i);
    S(i) = round((length(H)-1)*sum);
end
figure;
bar(S);
%figure;
%histeq(X);