clc
clear all
close all
a=imread('image.jfif');
subplot(3,2,1)
imshow(a)
title('original image')
%using 128 gray levels figure,
subplot(3,2,2)
imshow(grayslice(a,128),gray(128))
title('Image with 128 gray level')
%using 64 gray levels figure,
subplot(3,2,3)
imshow(grayslice(a,64),gray(64))
title('Image with 64 gray level')
%using 32 gray levels figure,
subplot(3,2,4)
imshow(grayslice(a,32),gray(32))
title('Image with 32 gray level')
%using 16 gray levels figure,
subplot(3,2,5)
imshow(grayslice(a,16),gray(16))
title('Image with 16 gray level')
%using 8 gray levels figure
subplot(3,2,6)
imshow(grayslice(a,8),gray(8))
title('Image with 8 gray level')