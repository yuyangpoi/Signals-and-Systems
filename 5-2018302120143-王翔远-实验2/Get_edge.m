clear 
clc;

img = rgb2gray(imread('强袭自由gk.jpg'));
img_bw = im2bw(img);

figure(2)

B=[0 1 0
   1 1 1
   0 1 0];

 img_edge = imdilate(imdilate(bwmorph(img_bw,'open'),B),B) - img_bw; %开运算（先腐蚀后膨胀）再膨胀后相减
 
figure(1)
subplot(1,2,1);
imshow(img),title('原始图像'); 

subplot(1,2,2);
imshow(img_edge),title('图像边缘');
