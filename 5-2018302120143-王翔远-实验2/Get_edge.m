clear 
clc;

img = rgb2gray(imread('ǿϮ����gk.jpg'));
img_bw = im2bw(img);

figure(2)

B=[0 1 0
   1 1 1
   0 1 0];

 img_edge = imdilate(imdilate(bwmorph(img_bw,'open'),B),B) - img_bw; %�����㣨�ȸ�ʴ�����ͣ������ͺ����
 
figure(1)
subplot(1,2,1);
imshow(img),title('ԭʼͼ��'); 

subplot(1,2,2);
imshow(img_edge),title('ͼ���Ե');
