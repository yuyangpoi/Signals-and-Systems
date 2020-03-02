clear 
clc;

x = rgb2gray(im2double(imread('ǿϮ����gk.jpg')));
size = size(x);

A = rand(size(1),size(2));
v = 0.2;

y = A.*x + v;


W = fspecial('gaussian',[5,5],1);  %�����˲�����
d = imfilter(y, W, 'replicate');

figure(1)
subplot(1,3,1);
imshow(x),title('ԭʼͼ��'); 

subplot(1,3,2);
imshow(y),title('����ͼ��');

subplot(1,3,3);
imshow(d),title('ȥ��ͼ��');




