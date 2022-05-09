gray_image=imread(['Lena_g40.jpg']);
img1=fn_laplacian_edge(gray_image,0);
img2=fn_laplacian_edge(gray_image,1);
img3=fn_laplacian_edge(gray_image,2);
img4=fn_laplacian_edge(gray_image,3);

figure(1)
subplot(2,3,1),imshow(gray_image),title('원본')
subplot(2,3,2),imshow(img1),title('Laplacian 4방향-1')
subplot(2,3,3),imshow(img2),title('Laplacian 4방향-2')
subplot(2,3,4),imshow(img3),title('Laplacian 8방향-1')
subplot(2,3,5),imshow(img4),title('Laplacian 8방향-2')
