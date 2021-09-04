clear all; 
close all;
img=imread('image.jfif');
figure('Name', "original image"); imshow(img);
gray_img=rgb2gray(img);
figure('Name','Gray Scale Image');imshow(gray_img);
F=fft2(gray_img);
figure('Name', 'Fourier Transform Image');imshow(F,[]);
Fsh=fftshift(F);
figure('Name','Center Fourier Transform Image');imshow(Fsh,[]);
log_img=log(1+Fsh);
figure('Name','Log Fourier Transform Image');imshow(log_img,[]);
F=ifftshift(Fsh);
f=ifft2(F);
Figure('Name','Reconstructed Image'); imshow(f,[]);

clear all
lose all
a=zeros(256);
[~,~]=size(a);
for i=110:140
 for j=110:140
     a(i,j)=255;
end
end
b=ones(256);
[m,n]=size(b);

for i=110:160
 for j=110:160
     b(i,j)=0;
end
end
c=conv2(a,b,'same');
a1=fft2(a);
b1=fft2(b);
c1=a1.*b1;
d1=fftshift(ifft2(c1));
imshow(c), figure,imshow(d1)