function edge_image = fn_sobel_edge(gray_imgae,method)

[R,C]=size(gray_imgae);
gray_image=double(gray_imgae);
edge_image=zeros(R,C);

vertical_mask=[-1.0,-2.0,-1.0;
              0.0,0.0,0.0;
              1.0,2.0,1.0];

horizontal_mask=[-1.0,0.0,1.0;
              -2.0,0.0,2.0;
              -1.0,0.0,1.0];
mask_height=3;mask_width=3;


for i=1:R-mask_height
    for j=1:C-mask_width
        vertical_var=0.0;
        horizontal_var=0.0;

        for m=1:mask_height
            for n=1:mask_width
                vertical_var=vertical_var+(gray_image(i+m,j+n)*vertical_mask(m,n));
                horizontal_var=horizontal_var+(gray_image(i+m,j+n)*horizontal_mask(m,n));
            end
        end
        vertical_var=abs(vertical_var);
        horizontal_var=abs(horizontal_var);

        ret_var=abs(vertical_var+horizontal_var);

        if(method==0)
            edge_image(i,j)=vertical_var;
        elseif(method==1)
            edge_image(i,j)=horizontal_var;
        elseif(method==2)
            edge_image(i,j)=ret_var;
        end
    end
end

edge_image=uint8(edge_image);