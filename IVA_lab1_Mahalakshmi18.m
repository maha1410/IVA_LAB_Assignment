%MATLAB program to extract image attributes.
clc;
clear all;
close all;
image1=imread('image.jfif');
size(image1) % to display dimensions of input image
image2=rgb2gray(image1);
subplot(2,2,4);
imshow(image2);
title('GRAY');
[r, c, d]=size(image1);
z=zeros(r,c);
tempr=image1;
tempr(:,:,2)=z;
tempr(:,:,3)=z;
subplot(2,2,1);
imshow(tempr);
title('RED');
tempg=image1;
tempg(:,:,1)=z;
tempg(:,:,3)=z;
subplot(2,2,2)
imshow(tempg);
title('GREEN');
tempb=image1;
tempb(:,:,1)=z;
tempb(:,:,2)=z;
subplot(2,2,3);
imshow(tempb);
title('BLUE');