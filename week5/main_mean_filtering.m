clear all

gray_image=imread('Lena_g001.jpg');
gray_image2=imread('Lena_g01.jpg');
gray_image3=rgb2gray(imread('Lena.jpg'));

img2=fn_mean_filtering(gray_image,7,7,0);
img3=fn_mean_filtering(gray_image,7,7,1);
img4=fn_mean_filtering(gray_image,7,7,2);

img5=fn_mean_filtering(gray_image2,7,7,0);
img6=fn_mean_filtering(gray_image2,7,7,1);
img7=fn_mean_filtering(gray_image2,7,7,2);

img8=fn_mean_filtering(gray_image3,3,3,1);
img9=fn_mean_filtering(gray_image3,5,5,1);
img10=fn_mean_filtering(gray_image3,7,7,1);


figure(1)
subplot(2,2,1),imshow(gray_image),title('Lena g100')
subplot(2,2,2),imshow(img2),title('method = 0')
subplot(2,2,3),imshow(img3),title('method = 1')
subplot(2,2,4),imshow(img4),title('method = 2')

figure(2)
subplot(2,2,1),imshow(gray_image2),title('Lena g01')
subplot(2,2,2),imshow(img5),title('method = 0')
subplot(2,2,3),imshow(img6),title('method = 1')
subplot(2,2,4),imshow(img7),title('method = 2')

%figure(3)
%subplot(2,2,1),imshow(gray_image3),title('Lena')
%subplot(2,2,2),imshow(img8),title('3x3')
%subplot(2,2,3),imshow(img9),title('5x5')
%subplot(2,2,4),imshow(img10),title('7x7')



