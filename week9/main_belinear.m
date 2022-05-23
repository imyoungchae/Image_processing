gray_image=rgb2gray(imread('lena.jpg'));
img1=fn_billinear(gray_image,256,256);
img2=fn_enlarge(gray_image,256,256);

figure(1)
subplot(1,2,1),imshow(img2),title('enlarge')
subplot(1,2,2),imshow(img1),title('billinear')
