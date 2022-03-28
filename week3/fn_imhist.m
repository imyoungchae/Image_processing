function hist_image = fn_imhist(gray_image, max_length)

if (max_length < 0)
    error('[ERROR] max_length의 범위는 0을 포함한 양수입니다.')

end

hist_height = 128;
hist_width = 256;
background_level = 192;

histData=zeros(1,256);
[R,C] = size(gray_image);

for i=1:R
    for j=1:C
        pixel = double(gray_image(i,j))+1;
        histData(pixel) = histData(pixel) + 1;
    end
end

if(max_length == 0)
    height = max(histData);
else
    height = max_length;
end

hist_bar_height=20;

tmp_hist_image1=zeros(height, hist_width);
tmp_hist_image2=zeros(height, hist_width);

hist_image = zeros(hist_height + hist_bar_height, hist_width);

for i=1 : hist_width
    tmp=histData(i);
    if(tmp == 0)
        continue;
    end

    for j=tmp-1:-1:1
        tmp_hist_image1(j,i)= 255;
    end
end

for i=1:height
    for j=1:hist_width
        tmp_hist_image2(i,j) = tmp_hist_image1(height-i+1,j);

        if(tmp_hist_image2(i,j)==255)
            tmp_hist_image2(i,j) = 0;

        else
            tmp_hist_image2(i,j) = background_level;
        end
    end
end

tmp_hist_image3 = fn_near_interp(hist_height, hist_width, tmp_hist_image2, height, hist_width);

for i=1:hist_height + hist_bar_height-1
    for j=1:hist_width
        if(i<hist_bar_height)
            hist_image(i,j)=j;
        else
            hist_image(i,j)= tmp_hist_image3(i-hist_bar_height+1,j);
        end
    end
end

hist_image = uint8(hist_image);
