function histeq_image = fn_imhisteq(gray_image)

gray_level=256;
histData=zeros(1,256);
[R,C]=size(gray_image);

histData=zeros(1,256);
[R,C] = size(gray_image);

for i=1:R
    for j=1:C
        pixel = double(gray_image(i,j))+1;
        histData(pixel) = histData(pixel) + 1;
    end
end

hist_bin_acc=zeros(1,gray_level);

hist_normal_sum=zeros(1,gray_level);

histeq_image=zeros(R,C);

for i=1:256
    if(i==1)
        hist_bin_acc(1)=histData(1);
    else
        hist_bin_acc(i)=hist_bin_acc(i-1)+histData(i);
    end
end

image_length=R*C;
for i=1:256
    var=(hist_bin_acc(i)/image_length)*(gray_level-1.0);
    hist_normal_sum(i)=var;
end


for i=1:R
    for j=1:C
        pixel = double(gray_image(i,j));
        histeq_image(i,j)=fix(hist_normal_sum(pixel));
    end
end




