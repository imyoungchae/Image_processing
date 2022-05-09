gray_image=rgb2gray(imread('example.png'));
img1=imcomplement(fn_prewitt_edge(gray_image,0));
img2=imcomplement(fn_prewitt_edge(gray_image,1));
img3=imcomplement(fn_prewitt_edge(gray_image,2));

figure(1)
subplot(2,2,1),imshow(gray_image),title('원본')
subplot(2,2,2),imshow(img1),title('vertical edge')
subplot(2,2,3),imshow(img2),title('horizontal edge')
subplot(2,2,4),imshow(img2),title('gradient edge')
