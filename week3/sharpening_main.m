clear all;

gray_image=rgb2gray(imread('Lena.jpg'));
tic;
sp_image_0=fn_sharpening(gray_image,0);
toc;
tic;
sp_image_1=fn_sharpening(gray_image,1);
toc;
tic;
sp_image_2=fn_sharpening(gray_image,2);
toc;
tic;
sp_image_3=fn_sharpening(gray_image,3);
toc;
tic;
sp_image_4=fn_sharpening(gray_image,4);
toc;

figure(1);
subplot(3,2,1);imshow(gray_image);title('원영상');
subplot(3,2,2);imshow(sp_image_0);title('method0 sharpening');
subplot(3,2,3);imshow(sp_image_1);title('method1 sharpening');
subplot(3,2,4);imshow(sp_image_2);title('method2 sharpening');
subplot(3,2,5);imshow(sp_image_3);title('method3 sharpening');
subplot(3,2,6);imshow(sp_image_4);title('method4 sharpening');

figure,imhist(gray_image)
figure,imhist(sp_image_2)
