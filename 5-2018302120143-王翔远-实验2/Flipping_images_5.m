clear
clc

img1 = imread('ǿϮ����gk.jpg');

% for k=1:3
% BB(:,:,k)=flipud(AA(:,:,k));%���·�ת
% B(:,:,k)=fliplr(AA(:,:,k));%���ҷ�ת
% end

horizontal(:,:,:)=fliplr(img1(:,:,:));%ˮƽ��ת
vertical(:,:,:)=flipud(img1(:,:,:));%��ֱ��ת

figure(1)
subplot(1,3,1);
imshow(img1),title('ԭʼͼ��'); %��ʾԭʼͼ��

subplot(1,3,2);
imshow(horizontal),title('ˮƽ��ת'); %��ʾˮƽ��ת��ͼ��

subplot(1,3,3);
imshow(vertical),title('��ֱ��ת'); %��ʾ��ֱ��ת��ͼ��
