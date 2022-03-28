gray_image=rgb2gray(imread('Lena.jpg'));

image1=fn_logarithm(gray_image)
figure,imshow(image1)
figure,imshow(gray_image)
