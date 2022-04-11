clear all;

gray_image=rgb2gray(imread('Lena.jpg'));

img2=(imread('Lena_i05.jpg'));

md_image_0=fn_hybrid_median_filtering(gray_image,3,3);
md_image_1=fn_hybrid_median_filtering(gray_image,5,5);
md_image_2=fn_hybrid_median_filtering(gray_image,7,7);

md_image_3=fn_hybrid_median_filtering(img2,3,3);
md_image_4=fn_hybrid_median_filtering(img2,5,5);
md_image_5=fn_hybrid_median_filtering(img2,7,7);

figure(1);

subplot(3,3,1);imshow(md_image_0);title('3 median filtering');
subplot(3,3,2);imshow(md_image_1);title('5 median filtering');
subplot(3,3,3);imshow(md_image_2);title('7 median filtering');

subplot(3,3,4);imshow(md_image_3);title('3 median filtering');
subplot(3,3,5);imshow(md_image_4);title('5 median filtering');
subplot(3,3,6);imshow(md_image_5);title('7 median filtering');

