clear
clc

img1 = rgb2gray(imread('ǿϮ����gk.jpg'));
img2 = rgb2gray(imread('�������ظ�.jpg'));

size1 = size(img1);
img2 = imresize(img2,[size1(1) size1(2)]);

img = (img1 + img2) / 1.5;

figure(1)
subplot(1,3,1);
imshow(img1),title('ԭʼͼ��1');

subplot(1,3,2);
imshow(img2),title('ԭʼͼ��2');

subplot(1,3,3);
imshow(img),title('�ϲ���ͼ��');


