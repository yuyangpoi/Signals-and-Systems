clear
clc

img1 = imread('强袭自由gk.jpg');

% for k=1:3
% BB(:,:,k)=flipud(AA(:,:,k));%上下翻转
% B(:,:,k)=fliplr(AA(:,:,k));%左右翻转
% end

horizontal(:,:,:)=fliplr(img1(:,:,:));%水平翻转
vertical(:,:,:)=flipud(img1(:,:,:));%垂直翻转

figure(1)
subplot(1,3,1);
imshow(img1),title('原始图像'); %显示原始图像

subplot(1,3,2);
imshow(horizontal),title('水平翻转'); %显示水平翻转的图像

subplot(1,3,3);
imshow(vertical),title('垂直翻转'); %显示垂直翻转的图像
