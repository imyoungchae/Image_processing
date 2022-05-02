clear all
gray_image1=imread('Lena_g001.jpg');
gray_image2=imread('Lena_g01.jpg');
gray_image3=imread('Lena_g1.jpg');
gray_image4=imread('Lena_i05.jpg');
gray_image5=imread('Lena_i5.jpg');

img1=fn_gaussian_smoothing_filter(gray_image1,0.8);
img2=fn_gaussian_smoothing_filter(gray_image2,0.8);
img3=fn_gaussian_smoothing_filter(gray_image3,0.8);
img4=fn_gaussian_smoothing_filter(gray_image4,0.8);
img5=fn_gaussian_smoothing_filter(gray_image5,0.8);

img6=fn_median_filtering(gray_image1,5,5);
img7=fn_median_filtering(gray_image2,5,5);
img8=fn_median_filtering(gray_image3,5,5);
img9=fn_median_filtering(gray_image4,5,5);
img10=fn_median_filtering(gray_image5,5,5);

img11=fn_mean_filtering(gray_image1,5,5,0);
img12=fn_mean_filtering(gray_image2,5,5,0);
img13=fn_mean_filtering(gray_image3,5,5,0);
img14=fn_mean_filtering(gray_image4,5,5,0);
img15=fn_mean_filtering(gray_image5,5,5,0);




figure(1);
subplot(3,5,1),imshow(img1),title('Lena g001.jpg');
subplot(3,5,2),imshow(img2),title('Lena g01.jpg');
subplot(3,5,3),imshow(img3),title('Lena g1.jpg');
subplot(3,5,4),imshow(img4),title('Lena i05.jpg');
subplot(3,5,5),imshow(img5),title('Lena i5.jpg');

subplot(3,5,6),imshow(img6),title('Lena g001.jpg');
subplot(3,5,7),imshow(img7),title('Lena g01.jpg');
subplot(3,5,8),imshow(img8),title('Lena g1.jpg');
subplot(3,5,9),imshow(img9),title('Lena i05.jpg');
subplot(3,5,10),imshow(img10),title('Lena i5.jpg');

subplot(3,5,11),imshow(img11),title('Lena g001.jpg');
subplot(3,5,12),imshow(img12),title('Lena g01.jpg');
subplot(3,5,13),imshow(img13),title('Lena g1.jpg');
subplot(3,5,14),imshow(img14),title('Lena i05.jpg');
subplot(3,5,15),imshow(img15),title('Lena i5.jpg');




