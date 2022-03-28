gray_image=rgb2gray(imread('Lena.jpg'));

image1=fn_null_trans(gray_image)
image2=fn_inverse_trans(gray_image)
figure(1)
subplot(1,2,1);
imshow(image1);
title('null변환')
subplot(1,2,2);
imshow(image2);
title('inverse변환')

