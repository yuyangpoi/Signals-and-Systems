clear
clc

img = imread('г©о╝втсиgk.jpg');

red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);

figure(1)
subplot(2,2,1);
imshow(img),title('original image'); 

subplot(2,2,2);
imshow(red),title('red'); 

subplot(2,2,3);
imshow(green),title('green'); 

subplot(2,2,4);
imshow(blue),title('blue'); 

