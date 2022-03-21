img=imread('Lena.jpg');
gray_image=rgb2gray(img);
constant=2;

Rimg=fn_multi_constant(gray_image,constant);
figure,imshow(gray_image)
figure,imshow(Rimg)
