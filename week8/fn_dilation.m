function result_image = fn_dilation(image,method,level)

if(method<0||method>1)
    errdlg('땡','fn_erosion()');
end
if(method==1)
    if(level<0||level>255)
        errdlg('땡','fn_erosion()');
    else
        mask=zeros(3,3);
        mask(:)=level;
    end
else
    mask=[0.0,0.0,0.0;0.0,0.0,0.0;0.0,0.0,0.0];
end


[R,C]=size(image);
image=double(image);
result_image=zeros(R,C);
[mask_height,mask_width]=size(mask);
max_tmp=-1;

for i=1:R-mask_height
    for j=1:C-mask_width

        %이진영상
        if(method==0)
            compare_check=0;
            for m=1:mask_height
                for n=1:mask_width
                    if(image(i+m,j+n) ~= mask(m,n))
                        compare_check=1;
                        break;
                    end
                end

                if(compare_check == 1)
                    break;
                end
            end

            if(compare_check ~= 1)
                var=0.0;
            else 
                var=1.0;
            end

        %명암도영상
        elseif(method==1)
            for m=1:mask_height
                for n=1:mask_width
                    tmp=image(i+m,j+n)+mask(m,n);
                    if(max_tmp<tmp)
                        max_tmp=tmp;
                    end
                end
            end

            var=max_tmp;
            max_tmp=-1;
        end
        
        result_image(i,j)=fn_clamping_pixel(var,0);
    end
end

result_image=uint8(result_image);
  