clear clc;

gray_image=imread('man_pepper.jpg');
gray_image2=imread('man_salt.jpg');
img1=fn_dilation(gray_image,1,100);
img2=fn_erosion(gray_image,1,100);
img3=fn_dilation(gray_image2,1,100);
img4=fn_erosion(gray_image2,1,100);



figure(1)
subplot(1,4,1),imshow(img1,[])
subplot(1,4,2),imshow(img2,[])
subplot(1,4,3),imshow(img3,[])
subplot(1,4,4),imshow(img4,[])
