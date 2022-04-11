function median_image = fn_hybrid_median_filtering(gray_image,mask_height,mask_width)

[R,C]=size(gray_image);
gray_image=double(gray_image);

mask=size(mask_height,mask_width);
buf_length=mask_height*mask_width;
buf1=size(buf_length);
buf2=size(buf_length);
tmp_var=size(1,3);
mask=size(mask_height*mask_width)

median_image=double(zeros(R,C));

for i=1:R-mask_height
    for j=1:C-mask_width
        for m=1:mask_height
            for n=1:mask_width
                mask(m,n)=gray_image(i+m,j+n);
            end
        end
        count1=1;
        count2=1;

        for m=1:mask_height
            for n=1:mask_width
                if(m==n)
                    buf1(count1)=mask(m,n);
                    count1=count1+1;
                elseif((buf_length-m)==n)
                    buf1(countw)=mask(m,n);
                    count2=count+1;
                end
            end
        end
        sort_buf1=sort(buf1);
        sort_buf2=sort(buf2);

        tmp_var(1)=sort_buf1(ceil(count1/2));
        tmp_var(2)=sort_buf1(ceil(count2/2));
        tmp_var(3)=mask(ceil(mask_height/2),ceil(mask_width/2));

        sort_tmp_var=sort(tmp_var);
        median_image(i,j)=sort_tmp_var(1);
    end
end

median_image=uint8(median_image);
