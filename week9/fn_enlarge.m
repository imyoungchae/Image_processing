function enlarge_image = fn_enlarge(gray_image,resize_height,resize_width)

[R,C]=size(gray_image);
gray_image=double(gray_image);

enlarge_image=255*ones(resize_height,resize_width);
%enlarge_image=zeros(resize_height,resize_width);

scale_height=resize_height/R;
scale_width=resize_width/C;

for i=1:resize_height
    for j=1:resize_width

        x_source_pixel=ceil(i*scale_height);
        y_source_pixel=ceil(j*scale_width);

        enlarge_image(i,j)=gray_image(x_source_pixel,y_source_pixel);
    end
end

enlarge_image=uint8(enlarge_image);