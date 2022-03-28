% fn_near_interp : 최근접 이웃 보간법, 축소/확대 가능

function near_image = fn_near_interp( mHeight, mWidth, image, height, width )

near_image = zeros( mHeight, mWidth );

scale_height = double(mHeight)/double(height);
scale_width = double(mWidth)/double(width);

for i=1:mHeight
    for j=1:mWidth
        
        x_source_pixel = fix(i/scale_height);
        y_source_pixel = fix(j/scale_width);

        if( x_source_pixel == height-1 )
            x_source_pixel = x_source_pixel - 1;
        end
        
        if( y_source_pixel == width-1 )
            y_source_pixel = y_source_pixel - 1;
        end
        
        near_image(i,j) = image(x_source_pixel, y_source_pixel);
    end
end
