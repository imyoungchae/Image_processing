function edge_image = fn_laplacian_edge(gray_image,method)

[R,C]=size(gray_image);
gray_image=double(gray_image);
edge_image=zeros(R,C);

mask_four1=[0.0,-1.0,0.0;-1.0,4.0,-1.0;0.0,-1.0,0.0];
mask_four2=[0.0,1.0,0.0;1.0,-4.0,1.0;0.0,1.0,0.0];
mask_eight1=[-1.0,-1.0,-1.0;-1.0,8.0,-1.0;-1.0,-1.0,-1.0];
mask_eight2=[1.0,-2.0,1.0;-2.0,4.0,-2.0;1.0,-2.0,1.0];

mask_height=3;mask_width=3;


for i=1:R-mask_height
    for j=1:C-mask_width
        var=0.0;

        for m=1:mask_height
            for n=1:mask_width
                switch(method)
                    case 0
                        var=var+gray_image(i+m,j+n)*mask_four1(m,n);
                    case 1
                        var=var+gray_image(i+m,j+n)*mask_four2(m,n);
                    case 2
                        var=var+gray_image(i+m,j+n)*mask_eight1(m,n);
                    case 3
                        var=var+gray_image(i+m,j+n)*mask_eight2(m,n);
                end                
            end
        end
        edge_image(i,j)=fn_clamping_pixel(var,0);
    end
end

edge_image=uint8(edge_image);