clear
clc

O = rgb2gray(imread('г©о╝втсиgk.jpg'));
H = O;
V = O;
size = size(O);

for j=1:size(2)-1
    H(:,j) = O(:,j+1) - O(:,j);
end

for i=1:size(1)-1
    V(i,:) = O(i+1,:) - O(i,:);
end

% figure(1)
% subplot(1,3,1);
% imshow(O),title('original image'); 
% 
% subplot(1,3,2);
% imshow(H*4),title('horizontal difference'); 
% 
% subplot(1,3,3);
% imshow(V*4),title('vertical difference'); 

L = sum(sum(H.*H + V.*V))