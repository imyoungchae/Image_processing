function minimum_image = fn_minimum_filtering(gray_imgae,mask_height,mask_width)%입력영상 i05
[R,C]=size(gray_imgae);
gray_imgae=double(gray_imgae);
mask=size(mask_height*mask_width);
minimum_pos=1;
minimum_image=double(zeros(R,C));
for i=1:R-mask_height
    for j=1:C-mask_width
        count=1;
        for m=1:mask_height
            for n=1:mask_width
                mask(count)=gray_imgae(i+m,j+n);
                count=count+1;
            end
        end
        sort_var=sort(mask);
        minimum_image(i,j)=sort_var(minimum_pos);
    end
end
minimum_image=uint8(minimum_image);