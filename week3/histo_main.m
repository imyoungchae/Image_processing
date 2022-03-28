gray_image=rgb2gray(imread('Lena.jpg'));
max_length=0;

hist_image=fn_imhist(gray_image,max_length);
hist_image2=fn_imhist(gray_image+30,max_length);
hist_image3=fn_imhist(gray_image-30,max_length);
hist_image4=fn_imhist(gray_image*2,max_length);
hist_image5=fn_imhist(gray_image/2,max_length);

figure(1)
subplot(1,2,1);
imshow(hist_image2);
title('덧셈')
subplot(1,2,2);
imshow(hist_image3);
title('뺄셈')

figure(2)
subplot(1,2,1);
imshow(hist_image4);
title('곱셈')
subplot(1,2,2);
imshow(hist_image5);
title('나눗셈')

