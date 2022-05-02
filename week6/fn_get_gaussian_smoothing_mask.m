function mask = fn_get_gaussian_smoothing_mask(sigma)

length=floor(6.0*sigma+1.0);
center=ceil(length/2);
mask_height=length;
mask_width=length;
mask=zeros(mask_height,mask_width);

for i=1:mask_height
    for j=1:mask_width
        mask(i,j)=(1.0/(2.0*pi*sigma*sigma))*exp(-((i-center)^2+(j-center)^2)*(1.0/(2.0*sigma*sigma)));
    end
end
