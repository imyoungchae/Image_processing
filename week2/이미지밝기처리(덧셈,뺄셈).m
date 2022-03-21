clc
clear all
close all
img1=rgb2gray(imread('Lena.jpg'));
img2=rgb2gray(imread('background.jpg'));

img3=uint8(double(img1)+double(img2));
img4=uint8(double(img1)-double(img2));

figure,imshow(img1)
figure,imshow(img2)
figure,imshow(img3)
figure,imshow(img4)
figure,imshow([img3 img4])

clc
clear all
close all
img1=imread('FirstImg.jpg');
img2=imread('SecondImg.jpg');

img3=uint8(double(img1)+double(img2));
img4=uint8(double(img2)-double(img1));
% 덧셈에는 순서가 없지만 차연산에는 순서가 존재한다.

%figure,imshow(img1)
%figure,imshow(img2)
figure,imshow(img3)
figure,imshow(img4)
%figure,imshow([img3 img4])
max(img4(:)) % :콜론은 2D->1D로 변환해준다.
