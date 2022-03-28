clc
[file path]=uigetfile('*.*');
a=imread(file);
[r c p]=size(a);

if(p==3)
    error('Imput image should be Grayscale')
else
    [pl1,pl2,pl3,pl4,pl5,pl6,pl7,pl8]=bitplane_code(a);
end
figure;
    subplot(3,3,1);imshow(pl1);title('1st pln');
    subplot(3,3,2);imshow(pl2);title('2st pln');
    subplot(3,3,3);imshow(pl3);title('3st pln');
    subplot(3,3,4);imshow(pl4);title('4st pln');
    subplot(3,3,5);imshow(pl5);title('5st pln');
    subplot(3,3,6);imshow(pl6);title('6st pln');
    subplot(3,3,7);imshow(pl7);title('7st pln');
    subplot(3,3,8);imshow(pl8);title('8st pln')
    rec=pl1+pl2*2+pl3*4+pl4*8+pl5*16+pl6*32+pl7*64+pl8*128;
    subplot(3,3,9);
    imshow(uint8(rec));
    title('Rec Img');
    
    rec2=pl11+pl2*2+pl3*4+pl4*8+pl5*16+pl6*32+pl7*64+pl8*128;
    pl11=double(rgb2gray(imread('sign.png'))/255);
    figure,imshow(rec2,[])
   
