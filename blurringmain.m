clear all;

gray_image=rgb2gray(imread('Lena.jpg'));
tic;
gs_image_3x3=fn_blurring(gray_image,0);
toc;
tic;
gs_image_5x5=fn_blurring(gray_image,1);
toc;
tic;
gs_image_7x7=fn_blurring(gray_image,2);
toc;

figure(1);
subplot(2,2,1);imshow(gray_image);title('원영상');
subplot(2,2,2);imshow(gs_image_3x3);title('3x3');
subplot(2,2,3);imshow(gs_image_5x5);title('5x5');
subplot(2,2,4);imshow(gs_image_7x7);title('7x7');


figure,imhist(gs_image_3x3)
figure,imhist(gs_image_5x5)
figure,imhist(gs_image_7x7)

