clear 
clc;

x = rgb2gray(im2double(imread('强袭自由gk.jpg')));
size = size(x);

A = rand(size(1),size(2));
v = 0.2;

y = A.*x + v;


W = fspecial('gaussian',[5,5],1);  %创建滤波算子
d = imfilter(y, W, 'replicate');

figure(1)
subplot(1,3,1);
imshow(x),title('原始图像'); 

subplot(1,3,2);
imshow(y),title('噪声图像');

subplot(1,3,3);
imshow(d),title('去噪图像');




