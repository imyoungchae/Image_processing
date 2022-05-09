clear clc;

gray_image1=im2bw(imread('morphology.jpg'));
img1=fn_erosion(gray_image1,0);
img2=fn_erosion(img1,0);
img3=fn_erosion(img2,0);
img4=fn_erosion(img3,0);

gray_image2=imread('bulb.jpg');
img5=fn_erosion(gray_image,1,100);
img6=fn_erosion(img1,1,100);
img7=fn_erosion(img2,1,100);
img8=fn_erosion(img3,1,100);

figure(1)
subplot(2,3,1),imshow(gray_image1,[]),title('원본')
subplot(2,3,2),imshow(img1,[]),title('침식연산 수행1')
subplot(2,3,3),imshow(img2,[]),title('침식연산 수행2')
subplot(2,3,4),imshow(img3,[]),title('침식연산 수행3')
subplot(2,3,5),imshow(img4,[]),title('침식연산 수행4')

figure(2)
subplot(2,3,1),imshow(gray_image2),title('원본')
subplot(2,3,2),imshow(img5),title('침식연산 수행1')
subplot(2,3,3),imshow(img6),title('침식연산 수행2')
subplot(2,3,4),imshow(img7),title('침식연산 수행3')
subplot(2,3,5),imshow(img8),title('침식연산 수행4')