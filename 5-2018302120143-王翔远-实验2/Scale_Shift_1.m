clear
clc

img = rgb2gray(imread('ǿϮ����gk.jpg'));
avg = sum(img(:))/length(img(:));
a = 5;
b = 10;
y = a.*(img - avg) + (avg + b);

figure(1)
subplot(1,2,1);
imshow(img),title('ԭͼ��'); 

subplot(1,2,2);
imshow(y),title('�任��ͼ��'); 