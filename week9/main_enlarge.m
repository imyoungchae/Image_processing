clear clc;

gray_image=rgb2gray(imread('Lena.jpg'));
img=fn_enlarge(gray_image,200,200);

figure(1);
imshow(img);