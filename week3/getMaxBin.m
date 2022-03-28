function max_var=getMaxBin(gray_image)
histData=zeros(1,256);
[R,C]=size(gray_image);

for i=1:R
    for j=1:C
        pixel=gray_image(i,j)+1;
        histData(pixel)=histData(pixel)+1;
    end
end
max_var=-1;

for i=1:R
    for j=1:C
        if(max_var<=gray_image(i,j))
            max_var=gray_image(i,j);
        end
    end
end
