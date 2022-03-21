% 영상에 상수를 더한다
function result_image = fn_add_constant(gray_image,constant)

if(constant<0||constant>255)
   error('[ERROR] constant 범위는 0~255 입니다.');
end

[R,C]=size(gray_image); % 사이즈를 알기 위해서
result_image=zeros(R,C); % 같은 사이즈로 zeros 생성 
gray_image=double(gray_image); % 사칙연산을 위해 더블형으로 바꿔줌

for i=1:R
        for j=1:C
                result_image(i,j)=fn_clamping_pixel(gray_image(i,j)+constant,0);
        end
end

result_image=uint8(result_image);
