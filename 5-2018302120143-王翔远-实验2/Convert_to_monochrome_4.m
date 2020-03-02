clear
clc

img1 = imread('强袭自由gk.jpg');
w = [0.299, 0.587, 0.114]; %权重

img1_gray = img1(:,:,1)*w(1) + img1(:,:,2)*w(2) + img1(:,:,3)*w(3);

figure(1)
subplot(1,2,1);
imshow(img1),title('原始图像'); %显示原始图像

subplot(1,2,2);
imshow(img1_gray),title('灰度图像'); %显示灰度图像


