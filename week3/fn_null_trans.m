function result_image=fn_null_trans(gray_image)
[R,C]=size(gray_image);
result_image=double(gray_image);

result_image=zeros(R,C);

for i=1:R
    for j=1:C
        result_image(i,j)=gray_image(i,j);
    end
end

% 밑 문단을 주석처리하면 출력으로 흰화면이 나온다
result_image=uint8(result_image);

