function edge_image = fn_gradient_edge(gray_imgae,method)

[R,C]=size(gray_imgae);
gray_image=double(gray_imgae);
edge_image=zeros(R,C);
mask_height=3;
mask_width=3;

for i=1:R-mask_height
    for j=1:C-mask_width
        vertical_var=abs(gray_image(i+2,j+1)-gray_image(i,j+1));
        horizontal_val=abs(gray_image(i+1,j)-gray_image(i+1,j+2));

        ret_var=vertical_var+horizontal_val;
        if(method==0)
            edge_image(i,j)=vertical_var;
        elseif(method==1)
            edge_image(i,j)=horizontal_val;
        elseif(method==2)
            edge_image(i,j)=ret_var;
        end
    end
end

edge_image=uint8(edge_image);