I=imread('image.jfif');
I_Mirror=flip(I,2);
I_Reverse=flip(I,1);
I_mirrev=flip(I_Reverse,2);
figure
subplot(2,2,1),imshow(I);title('original image');
subplot(2,2,2), imshow(I_Mirror);title('mirror image');
subplot(2,2,3),imshow(I_Reverse);title('reverse image');