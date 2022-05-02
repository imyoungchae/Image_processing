gray_image=imread('Lena_i05.jpg');
img2=fn_maximum_filtering(gray_image,3,3);
img3=fn_minimum_filtering(gray_image,3,3);

figure(1)
subplot(1,3,1),imshow(gray_image),title('원본')
subplot(1,3,2),imshow(img2),title('maximum filtering')
subplot(1,3,3),imshow(img3),title('minimum filtering')

