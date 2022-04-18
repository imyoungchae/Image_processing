function mean_image = fn_mean_filtering(gray_image,mask_height,mask_width,method)
[R,C]=size(gray_image);
gray_image=double(gray_image);

mask=size(mask_height*mask_width);
sum=0.0;sum1=0.0;sum2=0.0;sum3=1.0;
mean_var=0.0;
mask_length=mask_height*mask_width;
mean_image=double(zeros(R,C));

for i=1:R-mask_height
    for j=1:C-mask_width
        for m=1:mask_height
            for n=1:mask_width
                if(method==0)
                    sum=sum+gray_image(i+m,j+n);
                elseif(method==1)
                    sum3=sum3*gray_image(i+m,j+n);
                elseif(method==2)
                    if(gray_image(i+m,j+n)~=0)
                        sum=sum+1.0/gray_image(i+m,j+n);
                    end
                end
            end
        end
       if(method==0)
           mean_var=sum/mask_length;
       elseif(method==1)
           mean_var=sum3^(1.0/mask_length);
       elseif(method==2)
           mean_var=mask_length/sum;
       end
       mean_image(i,j)=mean_var;
       sum=0.0;sum1=0.0;sum2=0.0;sum3=1.0;
    end
end
mean_image=uint8(mean_image);