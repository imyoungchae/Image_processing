gray_image=imread('Lena_i5.jpg');

img1=fn_sobel_edge(gray_image,0);
img2=fn_sobel_edge(gray_image,1);
img3=fn_sobel_edge(gray_image,2);


img4=fn_prewitt_edge(gray_image,0);
img5=fn_prewitt_edge(gray_image,1);
img6=fn_prewitt_edge(gray_image,2);

img7=fn_roberts_edge(gray_image,0);
img8=fn_roberts_edge(gray_image,1);
img9=fn_roberts_edge(gray_image,2);

figure(1)
subplot(3,3,1),imshow(img1),title('sobel vertical edge')
subplot(3,3,2),imshow(img2),title('sobel horizontal edge')
subplot(3,3,3),imshow(img3),title('sobel gradient edge')

subplot(3,3,4),imshow(img4),title('prewitt vertical edge')
subplot(3,3,5),imshow(img5),title('prewitt horizontal edge')
subplot(3,3,6),imshow(img6),title('prewitt gradient edge')

subplot(3,3,7),imshow(img7),title('roberts vertical edge')
subplot(3,3,8),imshow(img8),title('roberts horizontal edge')
subplot(3,3,9),imshow(img9),title('roberts gradient edge')