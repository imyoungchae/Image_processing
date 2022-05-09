clear all;
color_image=imread('Lena.jpg');

gray_image=rgb2gray(color_image);
average_mask=fspecial('average',[3 3]);

average_image_replicate=imfilter(gray_image,average_mask,'replicate');

average_image_symmetric=imfilter(gray_image,average_mask,'symmetric');

average_image_circular=imfilter(gray_image,average_mask,'circular');

figure(1);
subplot(2,2,1);imshow(gray_image);title('원영상');
subplot(2,2,2);imshow(average_image_replicate);title('replicate');
subplot(2,2,3);imshow(average_image_symmetric);title('symmetric');
subplot(2,2,4);imshow(average_image_circular);title('circular');

