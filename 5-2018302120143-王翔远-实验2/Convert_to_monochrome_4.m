clear
clc

img1 = imread('ǿϮ����gk.jpg');
w = [0.299, 0.587, 0.114]; %Ȩ��

img1_gray = img1(:,:,1)*w(1) + img1(:,:,2)*w(2) + img1(:,:,3)*w(3);

figure(1)
subplot(1,2,1);
imshow(img1),title('ԭʼͼ��'); %��ʾԭʼͼ��

subplot(1,2,2);
imshow(img1_gray),title('�Ҷ�ͼ��'); %��ʾ�Ҷ�ͼ��


