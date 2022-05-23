function result_image = fn_billinear(gray_image,resize_height,resize_width)

[R,C]=size(gray_image);
gray_image=double(gray_image);

result_image=zeros(resize_height,resize_width);

scale_height=resize_height/R;
scale_width=resize_width/C;

for i=1:resize_height
    for j=1:resize_width

        x_source_pixel=ceil(i*scale_height);
        y_source_pixel=ceil(j*scale_width);

        if(x_source_pixel==R)
            x_source_pixel=R-1;
        end
        if(y_source_pixel==C)
            y_source_pixel=C-1;
        end

        EWweight=i/scale_height-x_source_pixel;
        NSweight=j/scale_width-y_source_pixel;

        NW=gray_image(x_source_pixel,y_source_pixel);
        NE=gray_image(x_source_pixel,y_source_pixel+1);
        SW=gray_image(x_source_pixel+1,y_source_pixel);
        SE=gray_image(x_source_pixel+1,y_source_pixel+1);

        EWtop=NW+EWweight*(NE-NW);
        EWbottom=SW+EWweight*(SE-SW);

        var=EWtop-NSweight*(EWbottom-EWtop);

        result_image(i,j)=var;
    end
end

%result_image=uint8(result_image);