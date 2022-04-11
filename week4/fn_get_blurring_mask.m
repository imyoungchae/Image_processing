function mask=fn_get_blurring_mask(method) 

if(method==0)
    mask_height=3;
    mask_width=3;

elseif(method==1)
     mask_height=5;
     mask_width=5;

elseif(method==2)
     mask_height=7;
     mask_width=7;
end

mask=zeros(mask_height,mask_width);
mask_weights=mask_height*mask_width;

for i=1:mask_height
    for j=1:mask_width
        mask(i,j)=1.0/mask_weights;
    end
end

        