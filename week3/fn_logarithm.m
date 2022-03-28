function logarithm_image=fn_logarithm(gray_image)
[R,C]=size(gray_image);

gray_image=double(gray_image);

logarithm_image=zeros(R,C);

max_var=getMaxBin(gray_image);
constant=255.0/log(1.0+max_var);

for i=1:R
    for j=1:C
        var=constant*log(1.0+gray_image(i,j));
        logarithm_image(i,j)=var;
    end
end

% 밑 문단을 주석처리하면 출력으로 흰화면이 나온다
logarithm_image=uint8(logarithm_image);

