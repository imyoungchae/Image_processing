gray_image=imread(['Lena_g01.jpg']);
img1=fn_gaussian_smoothing_filter(gray_image,0.8);
img2=fn_laplacian_edge(img1,2);


figure(1)
subplot(2,2,1),imshow(gray_image),title('원본')
subplot(2,2,2),imshow(img1),title('가우시안 잡음 제거')
subplot(2,2,3),imshow(img2),title('Laplacian 8방향-1')

