clear clc;

gray_image=rgb2gray(imread('Lena.jpg'));
img=fn_enlarge(gray_image,500,500);

figure(1);
imshow(img);