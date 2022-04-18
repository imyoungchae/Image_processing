clear all
img=imread('rice.png');
img1=im2bw(img); % 그냥 이진화(잡음 존재)

img3_3=fn_median_filtering(img,3,3);
img2=im2bw(img3_3); % 잡음 제거를 위하여 3X3 median filtering

img5_5=fn_median_filtering(img,5,5);
img3=im2bw(img5_5); % 잡음 제거를 위하여 5X5 median filtering


img7_7=fn_median_filtering(img,7,7);
img4=im2bw(img7_7); % 잡음 제거를 위하여 7X7 median filtering

figure;
sgtitle('2019130044 손영채')
subplot(2,3,1);
imshow('rice.png'),title('원본');
subplot(2,3,2);
imshow(img1),title('이진변환');

subplot(2,3,4);
imshow(img2),title('3X3 median filtering');
subplot(2,3,5);
imshow(img3),title('5X5 median filtering');
subplot(2,3,6);
imshow(img4),title('7X7 median filtering');

imwrite(img4,'result.png')
