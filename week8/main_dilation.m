clear clc;

gray_image=im2bw(imread('morphology.jpg'));
img1=fn_dilation(gray_image,0);

gray_image2=imread('bulb.jpg');
img2=fn_dilation(gray_image2,1,100);

figure(1)
subplot(2,2,1),imshow(gray_image,[]),title('원본')
subplot(2,2,2),imshow(img1,[]),title('팽창연산 수행')

subplot(2,2,3),imshow(gray_image2,[]),title('원본')
subplot(2,2,4),imshow(img2),title('팽창연산 수행')