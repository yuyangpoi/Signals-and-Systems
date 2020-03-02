clear
clc

X = rgb2gray(imread('nangua.png'));
B = [0,  255/4, 255/2,   255/4, 0;    %¾í»ýºË
    255/4, 255/2, 255*3/4, 255/2, 255/4;
    255/2, 255*3/4, 255, 255*3/4, 255/2;
    255/4, 255/2, 255*3/4, 255/2, 255/4;
    0,  255/4, 255/2,   255/4, 0;];

% sizeX = int16(size(X));
% sizeB = int16(size(B));

% for i=1:sizeX(1)
%     for j=1:sizeX(2)
%         for k=1:sizeB(1)
%             for l=1:sizeB(2)
%                 Y(i,j) = Y(i,j) + X(i-k+1,j-l+1).*B(k,l);
%             end
%         end
%     end
% end

Y = conv2(X, B)/256/256/10;

figure(1)
subplot(1,3,1);
imshow(X),title('Ô­Ê¼Í¼Ïñ'); 

subplot(1,3,2);
imshow(Y),title('Ä£ºýÍ¼Ïñ'); 

subplot(1,3,3);
imshow(B/255),title('¾í»ýºË'); 


