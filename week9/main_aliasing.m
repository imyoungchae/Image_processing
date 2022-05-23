gray_image=imread('Aliasing.bmp');
img1=gray_image;
h=fspecial('gaussian',[3 3],0.5);
Gimg=imfilter(im2double(img1),h)
img2=fn_neighbor(im2double(img1),200,200)

figure(1)
imshow(img1,[]),title('org')
figure(2)
imshow(Gimg,[]),title('gau')
figure(3)
imshow(img2,[]),title('nei')