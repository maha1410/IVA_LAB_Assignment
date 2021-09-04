a=imread('image.jfif');
imshow(a)
imtool(a);
imshow(a);
b=imcrop(a,[159,163,492-159 362-163]);
imshow(b)
c=imresize(a,0.5);
imshow(c)
d=imrotate(a,75);
imshow(d)
subplot(2,2,1),imshow(a);
subplot(2,2,2),imshow(b);
subplot(2,2,3),imshow(c);
subplot(2,2,4),imshow(d);
imwrite(d,'target.png','png')