clear
clc

img = rgb2gray(imread('强袭自由gk.jpg'));
avg = sum(img(:))/length(img(:));
a = 5;
b = 10;
y = a.*(img - avg) + (avg + b);

figure(1)
subplot(1,2,1);
imshow(img),title('原图像'); 

subplot(1,2,2);
imshow(y),title('变换后图像'); 