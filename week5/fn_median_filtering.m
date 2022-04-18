function median_image = fn_median_filtering(gray_imgae,mask_height,mask_width)
[R,C]=size(gray_imgae);
gray_imgae=double(gray_imgae);
mask=size(mask_height*mask_width);
median_pos=ceil((mask_height*mask_width)/2);

median_image=double(zeros(R,C));
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
        median_image(i,j)=sort_var(median_pos);
    end
end
median_image=uint8(median_image);